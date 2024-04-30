/*
 * File:   ADC_w_LCD.c
 * Author: alroc
 *
 * Created on April 28, 2024, 3:46 PM
 */


#include <xc.h> // must have this
#include "D:\SSU\EE_310_Lab\Assignments\ADC_w_LCD.X\ConfigFile.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define _XTAL_FREQ 4000000                 // Fosc  frequency for _delay()  library
#define FCY    _XTAL_FREQ/4

#define RS LATD0                   /* PORTD 0 pin is used for Register Select */
#define EN LATD1                   /* PORTD 1 pin is used for Enable */
#define ldata LATB                 /* PORTB is used for transmitting data to LCD */
#define Vref 5.0                    // voltage reference 
#define LCD_Port TRISB              
#define LCD_Control TRISD

void LCD_Init();
void LCD_Command(char );
void LCD_Char(char x);
void LCD_String(const char *);
void LCD_String_xy(char ,char ,const char*);
void MSdelay(unsigned int );
void ADC_Init(void);

int digital; // holds the digital value 
float voltage; // hold the analog value (volt))
float lux;
char data[10];

/*****************************Main Program*******************************/

void main(void)
{       
    //OSCCON=0x72;                   /* Use Internal Oscillator with Frequency 8MHZ */ 
    LCD_Init();                    /* Initialize 16x2 LCD */
    ADC_Init();                     // Call to ADC_Init function defined below;
    
    while (1) {
        ADCON0bits.GO = 1;      // Set ADCON0.Go to start conversion
        while (ADCON0bits.GO);  //Wait for conversion to finish
        digital = (ADRESH*256) | (ADRESL);      //Combine 8-bit LSB and 2-bit MSB
        voltage = digital * ((float)Vref / (float)(4096));  // define voltage = digital*Vref/4096
        lux = voltage * 31.746;
        
//        /*This is used to convert integer value to ASCII string*/
//        sprintf(data,"%.2f",voltage);
//        strcat(data," V");	/*Concatenate result and unit to print*/
//    
//        LCD_String_xy(1,0,"Input Voltage:");    /* Display string at location(row,location). */
//                                   /* This function passes string to display */
//        LCD_String_xy(2,4,data);   /*Display string at location(row,location). */
//                                   /* This function passes string to display */   
        
        sprintf(data,"%.2f",lux);
        strcat(data," Lux");	/*Concatenate result and unit to print*/
    
        LCD_String_xy(1,0,"Input Light:");    /* Display string at location(row,location). */
                                   /* This function passes string to display */
        LCD_String_xy(2,4,data);   /*Display string at location(row,location). */
                                   /* This function passes string to display */   
    }
    //while(1);           
}

/****************************Functions********************************/
void LCD_Init()
{
    MSdelay(15);           /* 15ms,16x2 LCD Power on delay */
    LCD_Port = 0x00;       /* Set PORTB as output PORT for LCD data(D0-D7) pins */
    LCD_Control = 0x00;    /* Set PORTD as output PORT LCD Control(RS,EN) Pins */
    LCD_Command(0x01);     /* clear display screen */
    LCD_Command(0x38);     /* uses 2 line and initialize 5*7 matrix of LCD */
    LCD_Command(0x0c);     /* display on cursor off */
    LCD_Command(0x06);     /* increment cursor (shift cursor to right) */
}

void LCD_Clear()
{
        LCD_Command(0x01); /* clear display screen */
}

void LCD_Command(char cmd )
{
    ldata= cmd;            /* Send data to PORT as a command for LCD */   
    RS = 0;                /* Command Register is selected */
    EN = 1;                /* High-to-Low pulse on Enable pin to latch data */ 
    NOP();
    EN = 0;
    MSdelay(3); 
}

void LCD_Char(char dat)
{
    ldata= dat;            /* Send data to LCD */  
    RS = 1;                /* Data Register is selected */
    EN=1;                  /* High-to-Low pulse on Enable pin to latch data */   
    NOP();
    EN=0;
    MSdelay(1);
}


void LCD_String(const char *msg)
{
    while((*msg)!=0)
    {       
      LCD_Char(*msg);
      msg++;    
        }
}

void LCD_String_xy(char row,char pos,const char *msg)
{
    char location=0;
    if(row<=1)
    {
        location=(0x80) | ((pos) & 0x0f); /*Print message on 1st row and desired location*/
        LCD_Command(location);
    }
    else
    {
        location=(0xC0) | ((pos) & 0x0f); /*Print message on 2nd row and desired location*/
        LCD_Command(location);    
    }  
    LCD_String(msg);

}

void ADC_Init(void) {
    //Setup ADC
    TRISAbits.TRISA0 = 1;
    ANSELAbits.ANSELA0 = 1;
    
    // ADCON0 set right justify
    ADCON0bits.FM = 1;
    
    // ADCON0 set ADCRC Clock
    ADCON0bits.CS = 1;
    
    // ADPCH register set RA0 as Analog channel
    ADPCH = 0x00;
    
    // Turn ADC On on register ADCON0
    ADCON0bits.ON = 1;
    
    // Set ADC CLOCK Selection register to zero
    ADCLK = 0x00;
    
    // Clear ADC Result registers
    ADRESL = 0x00;
    ADRESH= 0x00;
    
    // Set precharge select to 0 in register ADPERL & ADPERH
    ADPREL = 0x00;
    ADPREH= 0x00;
    
    // Set acquisition low and high byte to zero 
    ADACQL = 0x00;
    ADACQH = 0x00;
}

/*********************************Delay Function********************************/
void MSdelay(unsigned int val)
{
     unsigned int i,j;
        for(i=0;i<val;i++)
            for(j=0;j<165;j++);      /*This count Provide delay of 1 ms for 8MHz Frequency */
}