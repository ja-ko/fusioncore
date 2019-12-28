//
// Created by jko on 21.12.19.
//

#include <driver/rmt.h>
#include <freertos/task.h>
#include <esp_log.h>
#include "devices.h"

#include "owb.h"
#include "owb_rmt.h"
#include "ds18b20.h"
#include "driver/gpio.h"

#define MAX_DS12B20 8
#define TAG "Fusioncore_Devices"


#define PIN_AIR GPIO_NUM_13
#define PIN_VALVE_ALC GPIO_NUM_12
#define PIN_VALVE_LEMON GPIO_NUM_26
#define PIN_VALVE_AIR GPIO_NUM_27
#define PIN_VALVE_EMPTY GPIO_NUM_27

#define VALVE_OPEN 1
#define VALVE_CLOSED 0

#define PUMP_ENABLED 0
#define PUMP_DISABLED 1


#define GPIO_PIN_SELECTOR  ((1ULL<<PIN_AIR) | (1ULL<<PIN_VALVE_ALC) | (1ULL<<PIN_VALVE_LEMON) | (1ULL<<PIN_VALVE_AIR))


void setup_temp_sensor() {
    vTaskDelay(2000.0 / portTICK_PERIOD_MS);

    OneWireBus * owb;
    owb_rmt_driver_info rmt_driver_info;
    owb = owb_rmt_initialize(&rmt_driver_info, GPIO_NUM_14, RMT_CHANNEL_1, RMT_CHANNEL_0);
    owb_use_crc(owb, true);  // enable CRC check for ROM code

    // Find all connected devices
    ESP_LOGI(TAG, "Find ds18b20:");
    OneWireBus_ROMCode device_rom_codes[MAX_DS12B20] = {0};
    int num_devices = 0;
    OneWireBus_SearchState search_state = {0};
    bool found = false;
    owb_search_first(owb, &search_state, &found);
    ESP_LOGI(TAG, "found: %d", found);
    while (found)
    {
        char rom_code_s[17];
        owb_string_from_rom_code(search_state.rom_code, rom_code_s, sizeof(rom_code_s));
        ESP_LOGI(TAG, "  %d : %s", num_devices, rom_code_s);
        device_rom_codes[num_devices] = search_state.rom_code;
        ++num_devices;
        owb_search_next(owb, &search_state, &found);
    }
    ESP_LOGI(TAG, "Found %d device%s", num_devices, num_devices == 1 ? "" : "s");


}

void setup_outgoing_gpios() {
    gpio_config_t io_conf;
    //disable interrupt
    io_conf.intr_type = GPIO_INTR_DISABLE;
    //set as output mode
    io_conf.mode = GPIO_MODE_OUTPUT;
    //bit mask of the pins that you want to set,e.g.GPIO18/19
    io_conf.pin_bit_mask = GPIO_PIN_SELECTOR;
    //disable pull-down mode
    io_conf.pull_down_en = GPIO_PULLDOWN_DISABLE;
    //disable pull-up mode
    io_conf.pull_up_en = GPIO_PULLUP_DISABLE;
    //configure GPIO with the given settings
    gpio_config(&io_conf);

    gpio_set_level(PIN_AIR, PUMP_DISABLED);
    gpio_set_level(PIN_VALVE_AIR, VALVE_OPEN);
    gpio_set_level(PIN_VALVE_ALC, VALVE_CLOSED);
    gpio_set_level(PIN_VALVE_LEMON, VALVE_CLOSED);
}

void air_enable() {
    ESP_LOGI(TAG, "enable air");
    gpio_set_level(PIN_AIR, PUMP_ENABLED);
}
void air_disable() {
    ESP_LOGI(TAG, "disable air");
    gpio_set_level(PIN_AIR, PUMP_DISABLED);
}
void valve_alc_open() {
    ESP_LOGI(TAG, "open valve alc");
    gpio_set_level(PIN_VALVE_ALC, VALVE_OPEN);
}
void valve_alc_close() {
    ESP_LOGI(TAG, "close valve alc");
    gpio_set_level(PIN_VALVE_ALC, VALVE_CLOSED);
}
void valve_lemon_open() {
    ESP_LOGI(TAG, "open valve lemon");
    gpio_set_level(PIN_VALVE_LEMON, VALVE_OPEN);
}
void valve_lemon_close() {
    ESP_LOGI(TAG, "close valve lemon");
    gpio_set_level(PIN_VALVE_LEMON, VALVE_CLOSED);
}
void valve_air_open() {
    ESP_LOGI(TAG, "open valve air");
    gpio_set_level(PIN_VALVE_AIR, VALVE_OPEN);
}
void valve_air_close() {
    ESP_LOGI(TAG, "close valve air");
    gpio_set_level(PIN_VALVE_AIR, VALVE_CLOSED);
}
void pump_warm_enable() {

}
void pump_warm_disable() {

}
void compressor_enable() {

}
void compressor_disable() {

}
