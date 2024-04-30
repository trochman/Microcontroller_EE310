/* 
 * File:   Interrupts.h
 * Author: alroc
 *
 * Created on March 30, 2024, 1:14 AM
 */

#ifndef INTERRUPTS_H
#define	INTERRUPTS_H

#ifdef	__cplusplus
extern "C" {
#endif

#include <xc.h>
#include <stdio.h>
#include <math.h>
#include "D:\SSU\EE_310_Lab\Assignments\Interfacing_Sensors.X\ConfigFile.h"
#include "Initialization.h" 
    
    #define interrupt1 PORTBbits.RB4


    void __interrupt(irq(INT0), base(0x6008)) interrupt1_ISR(void){
        for (int count = 0; count <= 3; count++) {
            interrupt1 = ~interrupt1;
            __delay_ms(600);
        }
        for (int count = 0; count <= 5; count++) {
            interrupt1 = ~interrupt1;
            __delay_ms(300);
        }
        PIR1bits.INT0IF = 0;    
    }


#ifdef	__cplusplus
}
#endif

#endif	/* INTERRUPTS_H */

