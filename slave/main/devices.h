//
// Created by jko on 21.12.19.
//

#ifndef FUSIONCORE_SLAVE_DEVICES_H
#define FUSIONCORE_SLAVE_DEVICES_H

extern void setup_temp_sensor();
extern void setup_outgoing_gpios();

    extern void air_enable();
extern void air_disable();
extern void valve_alc_open();
extern void valve_alc_close();
extern void valve_lemon_open();
extern void valve_lemon_close();
extern void valve_air_open();
extern void valve_air_close();
extern void pump_warm_enable();
extern void pump_warm_disable();
extern void compressor_enable();
extern void compressor_disable();


#endif //FUSIONCORE_SLAVE_DEVICES_H
