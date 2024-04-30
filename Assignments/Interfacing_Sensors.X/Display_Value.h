/* 
 * File:   Display_Value.h
 * Author: alroc
 *
 * Created on March 30, 2024, 1:42 AM
 */

#ifndef DISPLAY_VALUE_H
#define	DISPLAY_VALUE_H

#ifdef	__cplusplus
extern "C" {
#endif

#include <xc.h>
#include <stdio.h>
#include <math.h>
#include "D:\SSU\EE_310_Lab\Assignments\Interfacing_Sensors.X\ConfigFile.h"
#include "Initialization.h"
    
    unsigned char LED_value[] = {0x3F, 0x06, 0x5B, 
                                 0x4F, 0x66, 0x6D, 
                                 0x7D, 0x07, 0x7F, 
                                 0x6F};
    int temp;
    
    void Display_Value(int temp) {
        PORTD = LED_value[temp];
        return;
    }


#ifdef	__cplusplus
}
#endif

#endif	/* DISPLAY_VALUE_H */

