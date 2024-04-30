/* 
 * File:   Get_Value.h
 * Author: alroc
 *
 * Created on March 30, 2024, 1:26 AM
 */

#ifndef FUNCTIONS_H
#define	FUNCTIONS_H

#ifdef	__cplusplus
extern "C" {
#endif

#include <xc.h>
#include <stdio.h>
#include <math.h>
#include "D:\SSU\EE_310_Lab\Assignments\Interfacing_Sensors.X\ConfigFile.h"
    
void Display_Value(int);
    
#define _XTAL_FREQ 4000000                 // Fosc  frequency for _delay()  library
#define FCY    _XTAL_FREQ/4
    
unsigned char LED_value[] = {0x3F, 0x06, 0x5B, 
                             0x4F, 0x66, 0x6D, 
                             0x7D, 0x07, 0x7F, 
                             0x6F};
int temp;

void __interrupt(irq(INT0), base(0x4008)) interrupt1_ISR(void){
    if(PIR1bits.INT0IF == 1) {
    PORTBbits.RB4 = 1;
    __delay_ms(2500);
    PORTBbits.RB4 = 0;
    PIR1bits.INT0IF = 0;
    }
}
    
int Get_Value(int input) {
    int temp1 = 0;
    int temp2 = 1;
    while(1){
        temp1 = 0;
        if (input == 0) {
            while(PORTBbits.RB1 == 1) {
                Display_Value(temp1);
                if (PORTAbits.RA0 == 1) {
                    temp1++;
                    __delay_ms(2000);
                }
                else {
                    asm("NOP");
                }
            }
            return temp1;
        }
        else {
            temp2 = 0;
            while(PORTBbits.RB1 == 1) {
                Display_Value(temp2);
                if (PORTAbits.RA1 == 1) {
                    temp2++;
                    __delay_ms(2000);
                }
                else {
                    asm("NOP");
                }
            }
            return temp2;
        }
    }
}
    
void Display_Value(int display_input) {
    PORTD = LED_value[display_input];
    return;
}

#ifdef	__cplusplus
}
#endif

#endif	/* FUNCTIONS_H */

