/*
 * File:   Calculator_Design.c
 * Author: alroc
 *
 * Created on March 30, 2024, 1:04 AM
 * ---------------------
 * Title: Design a Counter
 * ---------------------
 * Program Details:
 * The purpose of this program is to create a simple counter that displays
 * the values 0-F on a 7 segment LED display using 7 outputs, RD[7:0],
 * and 5 inputs, Inner_loop, Middle_loop, Outer_loop, RB0 and RB1. Using
 * the two input buttons RB0 and RB1 the user is able to decrement or
 * increment, respectively, the value display on the 7 segment LED display
 * and loop through the values. If the user presses both buttons at the same
 * time the LED display will reset to 0 and if the user stops pressing any of
 * the buttons the LED will continue to display the last value.
 * Inputs: Inner_loop, Middle_loop, Outer_loop, RB0, RB1 (input)
 * Outputs: RD[7:0] (output)
 * Setup: PIC47K42 using a 9V battery and power module to produce 3.3V,
 * along with a 7 segment LED and two buttons.
 * Date: Mar 27, 2024
 * File Dependencies / Libraries: It is required to include the 
 * AssemblyConfig.inc in the Header Folder
 * Compiler: MPLAB IDE v6.20, xc8 v2.46, pic-as v2.46
 * Author: Tony Rochman
 * Versions:
 *       V1.0: Original
 * Useful links: 
 *      Datasheet: https://ww1.microchip.com/downloads/en/DeviceDoc/PIC18(L)F26-27-45-46-47-55-56-57K42-Data-Sheet-40001919G.pdf 
 *      PIC18F Instruction Sets: https://onlinelibrary.wiley.com/doi/pdf/10.1002/9781119448457.app4
 */

#include <xc.h>
#include "D:\SSU\EE_310_Lab\Assignments\Calculator_Design.X\ConfigFile.h"
// #include "C:/Program Files/Microchip/xc8/v2.46/pic/include/proc/pic18f47k42.h"
#include <stdlib.h>

#define _XTAL_FREQ 4000000                 // Fosc  frequency for _delay()  library
#define FCY    _XTAL_FREQ/4
#define MSTIME1 150
#define MSTIME2 500

void Initialize(void);
void Operation(int, int, int);
int Keypad_Check(void);
void Get_X_Input(void);
void Get_Y_Input(void);
void Get_Operation_Input(void);

int X_Input_REG = 0;
int Y_Input_REG = 0;
int Operation_REG = 0;
int Result_Input_REG = 0;
int Display_Result_REG = 0;
const int __at(0x30) keypad[4][4] = {1, 2, 3, 10,
                              4, 5, 6, 11,
                              7, 8, 9, 12,
                              14, 0, 15, 13};

void __at(0x60) main(void) {
    
    Initialize();                     // Initialize PORTA, PORTB, and PORTD
    
    while(1) {
        PORTA = 0;
        PORTB = 0x0F;
        PORTD = 0;
        X_Input_REG = 0;
        Y_Input_REG = 0;
        Operation_REG = 0;
        Display_Result_REG = 0;
        __delay_ms(MSTIME2);                                    // Delay
        while(PORTB == 0x0F);                                   // Wait for user to press a key
        Get_X_Input();                                          // Get X_Input_REG value from user input on the keypad
        __delay_ms(MSTIME2);                                    // Delay
        while(PORTB == 0x0F);                                   // Wait for user to press a key
        Get_Operation_Input();                                  // Get Operation_REG value from user input on the keypad
        __delay_ms(MSTIME2);                                    // Delay
        while(PORTB == 0x0F);                                   // Wait for user to press a key
        Get_Y_Input();                                          // Get Y_Input_REG value from user input on the keypad
        __delay_ms(MSTIME2);                                    // Delay
        while(PORTB == 0x0F);                                   // Wait for user to press a key
        Operation(X_Input_REG, Y_Input_REG, Operation_REG);     // Get the result
        __delay_ms(MSTIME2);                                    // Delay
        while(PORTB == 0x0F);                                   // Wait for user to press a key
    }
    return;
}

void Initialize(void) {
    // Initialize A as outputs
    PORTA = 0;
    LATA = 0;
    ANSELA = 0;
    TRISA = 0;
    
    // Initialize PORTD as outputs
    PORTD = 0;
    LATD = 0;
    ANSELD = 0;
    TRISD = 0;
    
    // Initialize PORTA[7:4] as inputs and PORTA[3:0] as outputs
    PORTB = 0;
    LATB = 0;
    ANSELB = 0;
    TRISB = 0xF0;
    PORTB = 0x0F;
};

void Operation(int x, int y, int op){
    int result = 0;
    switch(op) {
        case 10:
            result = x + y;
            PORTA = 0;
            break;
        case 11:
            result = x - y;
            if(result < 0) {
                result = abs(result);
                PORTA = 0x01;
            } else {
                PORTA = 0;
            }
            break;
        case 12:
            result = x * y;
            PORTA = 0;
            break;
        case 13:
            result = x / y;
            PORTA = 0;
            break;
    }
    PORTB = 0x0F;
    Display_Result_REG = result;
    PORTD = Display_Result_REG;
};

int Keypad_Check(void) {
  int input = 0, col = 0, row = 0, key = 0, row_temp = 0;
  __delay_ms(MSTIME1);      //delay
  input = PORTB;
  if(input == 0x0F) {
      key = 0;
      return key;
  }
  if(input == 0x1F) {
      row_temp = 0x10;
      row = 3;
  }else if(input == 0x2F) {
      row_temp = 0x20;
      row = 2;
  }else if(input == 0x4F) {
      row_temp = 0x40;
      row = 1;
  }else {
      row_temp = 0x80;
      row = 0;
  }
  PORTB = row_temp + 0x07;
  if(PORTB != row_temp + 0x07)
      col = 0;
  else{
      PORTB = row_temp + 0x0B;
      if(PORTB != row_temp + 0x0B)
          col = 1;
      else {
          PORTB = row_temp + 0x0D;
          if(PORTB != row_temp + 0x0D)
          col = 2;
          else
              col = 3;
      }
  }
  key = keypad[row][col];
  return key;
};

void Get_X_Input(void) {
    int x_temp = 0, x_val = 0;
    x_temp = Keypad_Check();
    x_val = x_temp;
    x_temp = 0;
    PORTB = 0x0F;
    __delay_ms(MSTIME2);      //delay
    while(PORTB == 0x0F);
    x_temp = Keypad_Check();
    x_val *= 10;
    x_val += x_temp;
    PORTA = 0x02;
    PORTB = 0x0F;
    X_Input_REG = x_val;
    PORTD = X_Input_REG;
};

void Get_Y_Input(void) {
    int y_temp = 0, y_val = 0;
    y_temp = Keypad_Check();
    y_val = y_temp;
    y_temp = 0;
    PORTB = 0x0F;
    __delay_ms(MSTIME2);      //delay
    while(PORTB == 0x0F);
    y_temp = Keypad_Check();
    y_val *= 10;
    y_val += y_temp;
    PORTA = 0x08;
    PORTB = 0x0F;
    Y_Input_REG = y_val;
    PORTD = Y_Input_REG;
};

void Get_Operation_Input(void) {
    int op_temp = 0;
    while(PORTB == 0x0F);
    op_temp = Keypad_Check();
    PORTA = 0x04;
    PORTB = 0x0F;
    Operation_REG = op_temp;
    PORTD = Operation_REG;
};