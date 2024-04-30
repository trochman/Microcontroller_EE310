/*
 * File:   Calculator_Design.c
 * Author: alroc
 *
 * Created on March 30, 2024, 1:04 AM
 * ---------------------
 * Title: Design a Calculator
 * ---------------------
 * Program Details:
 * The purpose of this program is to 
 * Inputs: 
 * Outputs: 
 * Setup: PIC47K42 using a 9V battery and power module to produce 3.3V, 
 * Date: Apr 23, 2024
 * File Dependencies / Libraries: It is required to include the 
 * ConfigFile.h in the Header Folder
 * Display_Value.h in the Header Folder
 * Get_Value.h in the Header Folder
 * Initialization.h in the Header Folder
 * Interrupts.h in the Header Folder
 * Compiler: MPLAB IDE v6.20, xc8 v2.46
 * Author: Tony Rochman
 * Versions:
 *       V1.0: Original
 * Useful links: 
 *      Datasheet: https://ww1.microchip.com/downloads/en/DeviceDoc/PIC18(L)F26-27-45-46-47-55-56-57K42-Data-Sheet-40001919G.pdf 
 *      PIC18F Instruction Sets: https://onlinelibrary.wiley.com/doi/pdf/10.1002/9781119448457.app4
 */

#include <xc.h>
#include "D:\SSU\EE_310_Lab\Assignments\Interfacing_Sensors.X\ConfigFile.h"
#include <stdlib.h>
#include <math.h>
#include "Initialization.h"
#include "Functions.h"

#define _XTAL_FREQ 4000000                 // Fosc  frequency for _delay()  library
#define FCY    _XTAL_FREQ/4

int tempval = 0, secretcode1 = 1, secretcode2 = 1, value1, value2;

void __at(0x90) main(void) {
    
    Init();

    value1 = Get_Value(tempval);
    tempval++;
    Display_Value(value1);
    __delay_ms(2000);
    value2 = Get_Value(tempval);
    tempval--;
    Display_Value(value2);
    __delay_ms(2000);
    if (value1 == secretcode1 && value2 == secretcode2){
        PORTAbits.RA5 = 1;
        for (int count = 0; count <= 5; count++){
            PORTBbits.RB2 = 1;
            __delay_ms(1200);
            //PORTAbits.RA5 = ~PORTAbits.RA5;
            PORTBbits.RB2 = ~PORTBbits.RB2;
            __delay_ms(1200);
        }
        PORTAbits.RA5 = 0;
    }
    else {
        for (int count = 0; count <= 5; count++) {
            PORTBbits.RB3 = ~PORTBbits.RB3;
            __delay_ms(500);
        }
    }
    return;
}
