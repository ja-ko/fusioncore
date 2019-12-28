
#include <string.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include <stdio.h>
#include <driver/i2c.h>
#include "esp_log.h"
#include "driver/i2c.h"
#include "sdkconfig.h"
#include "driver/gpio.h"
#include <vector>
#include <map>
#include <soc/i2c_struct.h>
#include "math.h"
#include "devices.h"


static const char *TAG = "fusiocore-slave";

#define I2C_SDA GPIO_NUM_32 //red
#define I2C_SCL GPIO_NUM_33
#define I2C_ADDR 0x23

#define I2C_RX_BUF_LEN 512
#define I2C_TX_BUF_LEN 512
#define DATA_BUFFER_LEN 1024

#define I2C_PORT I2C_NUM_0

#define TRIGGER_PIN GPIO_NUM_17

static float trigger_timestamp = 0.0f;

typedef float (*measurement_t)();
std::vector<measurement_t> measurement_funcs;
typedef void (*command_t)();
std::map<uint8_t, command_t> command_funcs;

extern "C" {
    void app_main();
}


esp_err_t i2c_slave_init() {
    i2c_config_t config;
    config.sda_io_num = I2C_SDA;
    config.sda_pullup_en = GPIO_PULLUP_ENABLE;
    config.scl_io_num = I2C_SCL;
    config.scl_pullup_en = GPIO_PULLUP_ENABLE;
    config.mode = I2C_MODE_SLAVE;
    config.slave.addr_10bit_en = 0;
    config.slave.slave_addr = I2C_ADDR;
    i2c_param_config(I2C_PORT, &config);
    return i2c_driver_install(I2C_PORT, config.mode, I2C_RX_BUF_LEN, I2C_TX_BUF_LEN, 0);
}

void i2c_loop(void* arg) {
    int size;
    uint8_t* data = (uint8_t *)malloc(DATA_BUFFER_LEN);
    uint8_t cur_register = 0;

    while(1) {
        size = i2c_slave_read_buffer(I2C_PORT, data, DATA_BUFFER_LEN, 1);

        if(size < sizeof(uint8_t)) { // no data received
            continue;
        }

        cur_register = data[0];
        ESP_LOGI(TAG, "Received %u bytes, value: %d", size, cur_register);

        //break;
    }
}


void i2c_read_loop(void* arg) {
    int size;
    auto* data = (uint8_t *)malloc(DATA_BUFFER_LEN);


    while(true) {
        size = i2c_slave_read_buffer(I2C_PORT, data, DATA_BUFFER_LEN, 1);

        if (size < sizeof(uint8_t)) { // no data received
            continue;
        }

        if(size == sizeof(uint8_t)) {
            if(*data == 0) {
                ESP_LOGD(TAG, "Skipping I2C command 0x0");
                // master uses 0 as register, we dont support register, so skip this
                continue;
            }
            ESP_LOGD(TAG, "Handling I2C command 0x%x", *data);
            auto it = command_funcs.find(*data);
            if(it != command_funcs.end()) {
                it->second();
            }


        }


    }
}


/*
 * Update a cache with the newest measurements from measurement_funcs
 */
void measure_loop(void* arg) {
    setup_outgoing_gpios();
    setup_temp_sensor();
    while(1) {
        vTaskDelay(1000 / portTICK_RATE_MS);
    }
}

/*
 * These commands should return immediately. You can time consuming tasks in measure_loop() and store the results in a
 * cache. Return just the cached value from here.
 */
float sinus() {
    auto cur_time = (float) (esp_timer_get_time() / 10000000.0f);
    return sin(cur_time);
}

float last_buzzer() {
    return trigger_timestamp;
}

float flow_warm() {
    return 5.0f;
}

float flow_cold() {
    return 5.0f;
}

float temp_mate() {
    return 17.0f;
}

void write_tx_buffer() {
    uint8_t tx_size = measurement_funcs.size() * sizeof(float);
    i2c_slave_write_buffer(I2C_PORT, reinterpret_cast<uint8_t *>(&tx_size), sizeof(uint8_t), 1);
    ESP_LOGD(TAG, "Header: %d", tx_size);
    for(auto & measurement_func : measurement_funcs) {
        float value = measurement_func();
        int written = i2c_slave_write_buffer(I2C_PORT, (uint8_t*)(&value), sizeof(float), 1);
        if(written != sizeof(float)) {
            ESP_LOGE(TAG, "Failed to write float to tx buffer.");
        }
    }
}

void register_command(uint8_t opcode, command_t command) {
    command_funcs.insert(std::pair<uint8_t, command_t>(opcode, command));
}

void trigger_pressed(void* arg) {
    trigger_timestamp = (float)esp_timer_get_time();
    //ESP_LOGI(TAG, "CRASH!!");
}

void setup_gpio() {
    gpio_install_isr_service(0);
    gpio_set_direction(TRIGGER_PIN, GPIO_MODE_INPUT);
    gpio_pulldown_en(TRIGGER_PIN);
    gpio_pullup_dis(TRIGGER_PIN);
    gpio_isr_handler_add(TRIGGER_PIN, trigger_pressed, nullptr);
    gpio_set_intr_type(TRIGGER_PIN, GPIO_INTR_POSEDGE);
    gpio_intr_enable(TRIGGER_PIN);
}

void reset() {
    ESP_LOGW(TAG, "Restarting ESP cause of reset()");
    esp_restart();
}


void app_main() {
    ESP_LOGI(TAG, "Nabend!");

    setup_gpio();


    measurement_funcs.push_back(sinus);
    measurement_funcs.push_back(last_buzzer);
    measurement_funcs.push_back(flow_warm);
    measurement_funcs.push_back(flow_cold);
    measurement_funcs.push_back(temp_mate);

    register_command(0x1, write_tx_buffer);
    register_command(0x2, air_enable);
    register_command(0x3, air_disable);
    register_command(0x4, valve_alc_open);
    register_command(0x5, valve_alc_close);
    register_command(0x6, valve_lemon_open);
    register_command(0x7, valve_lemon_close);
    register_command(0x8, valve_air_open);
    register_command(0x9, valve_air_close);
    register_command(0xa, pump_warm_enable);
    register_command(0xb, pump_warm_disable);
    register_command(0xc, compressor_enable);
    register_command(0xd, compressor_disable);


    register_command(0xff, reset);

    ESP_ERROR_CHECK(i2c_slave_init());


    xTaskCreate(i2c_read_loop, "i2c_read_loop", 1024 * 2, (void *)0, 10, NULL);
    xTaskCreate(measure_loop, "measure_loop", 1024 * 2, (void *)0, 10, NULL);


}

