/* 
 * File:   Get_Value.h
 * Author: alroc
 *
 * Created on March 30, 2024, 1:26 AM
 */

#ifndef GET_VALUE_H
#define	GET_VALUE_H

#ifdef	__cplusplus
extern "C" {
#endif

#include <xc.h>
#include <stdio.h>
#include <math.h>
#include "D:\SSU\EE_310_Lab\Assignments\Interfacing_Sensors.X\ConfigFile.h"
#include "Display_Value.h"
    

    
#define ButtonPort      PORTBbits.RB1
#define SecondNumPort   PORTAbits.RA1
#define FirstNumPort    PORTAbits.RA0
    
    int Get_Value(int tempval) {
        int firstNum = 0;
        int secondNum = 1;
        while(1){
            firstNum = 0;
        if (tempval == 0) {
            while(ButtonPort == 1) {
                Display_Value(firstNum);
                if (FirstNumPort == 1) {
                    firstNum++;
                    __delay_ms(2000);
                }
                else {
                    asm("NOP");
                }
            }
            return firstNum;
        }
        else {
            secondNum = 0;
            while(ButtonPort == 1) {
                Display_Value(secondNum);
                if (SecondNumPort == 1) {
                    secondNum++;
                    __delay_ms(2000);
                }
                else {
                    asm("NOP");
                }
            }
            return secondNum;
        }
        }
    }


#ifdef	__cplusplus
}
#endif

#endif	/* GET_VALUE_H */

