/* 
 * File:   Initialization.h
 * Author: alroc
 *
 * Created on March 30, 2024, 1:08 AM
 */

#ifndef INITIALIZATION_H
#define	INITIALIZATION_H

#ifdef	__cplusplus
extern "C" {
#endif

#include <xc.h>
#include <stdio.h>
#include <math.h>
#include "D:\SSU\EE_310_Lab\Assignments\Interfacing_Sensors.X\ConfigFile.h"
    
    void Init() {
        
        // Initialize PORTA
        PORTA = 0x0; 
        ANSELA = 0x0; 
        LATA = 0x0; 
        TRISA = 0x03;
        //WPUA = 0x03;
        PORTA = 0x0;
        
        // Initialize PORTB
        PORTB = 0x0; 
        ANSELB = 0x0; 
        LATB = 0x0; 
        TRISB = 0x03;
        WPUB = 0x03;
        PORTB = 0x0;
        
        // Initialize PORTD
        PORTD = 0x0; 
        ANSELD = 0x0; 
        LATD = 0x0; 
        TRISD = 0x0;
        
        
        IPR1bits.INT0IP = 1;
        PIE1bits.INT0IE = 1;
        PIR1bits.INT0IF = 0;
        INTCON0 = 0xE7;
        IVTBASEU = 0x00;
        IVTBASEH = 0x40;
        IVTBASEL = 0x08;
        
        return;
    }

#ifdef	__cplusplus
}
#endif

#endif	/* INITIALIZATION_H */

