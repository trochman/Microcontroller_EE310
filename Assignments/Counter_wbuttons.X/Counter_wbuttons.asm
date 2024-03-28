;---------------------
; Title: Design a Counter
;---------------------
;Program Details:
; The purpose of this program is to create a simple counter that displays
; the values 0-F on a 7 segment LED display using 7 outputs, RD[7:0],
; and 5 inputs, Inner_loop, Middle_loop, Outer_loop, RB0 and RB1. Using
; the two input buttons RB0 and RB1 the user is able to decrement or
; increment, respectively, the value display on the 7 segment LED display
; and loop through the values. If the user presses both buttons at the same
; time the LED display will reset to 0 and if the user stops pressing any of
; the buttons the LED will continue to display the last value.
; Inputs: Inner_loop, Middle_loop, Outer_loop, RB0, RB1 (input)
; Outputs: RD[7:0] (output)
; Setup: PIC47K42 using a 9V battery and power module to produce 3.3V,
;	    along with a 7 segment LED and two buttons.
; Date: Mar 27, 2024
; File Dependencies / Libraries: It is required to include the 
;   AssemblyConfig.inc in the Header Folder
; Compiler: MPLAB IDE v6.20, xc8 v2.46, pic-as v2.46
; Author: Tony Rochman
; Versions:
;       V1.0: Original
; Useful links: 
;       Datasheet: https://ww1.microchip.com/downloads/en/DeviceDoc/PIC18(L)F26-27-45-46-47-55-56-57K42-Data-Sheet-40001919G.pdf 
;       PIC18F Instruction Sets: https://onlinelibrary.wiley.com/doi/pdf/10.1002/9781119448457.app4 

;---------------------
; Initialization
;---------------------
#include "D:\SSU\EE_310_LAB\Assignments\Counter_wbuttons.X\AssemblyConfig.inc"
#include <xc.inc>

;---------------------
; Program Inputs
;---------------------
Inner_loop  equ	    2	    ; variable for the inner loop count
Middle_loop equ	    2	    ; variable for the middle loop count
Outer_loop  equ	    5	    ; variable for the outer loop count
MAX	    equ	    16	    ; variable for the max index value
 
;---------------------
; Program Constants
;---------------------
REG10	    equ	    10h	    ; counter for inner loop
REG11	    equ	    11h	    ; counter for middle loop
REG12	    equ	    12h	    ; counter for outer loop
INDEX	    equ     13h	    ; counter for indexing position in the 0-F loop
TEMP	    equ	    14h	    ; temp register to store input value
HEXL	    equ	    20h	    ; register for LED display 0
HEXU	    equ	    2Fh	    ; register for LED display F
   
;---------------------
; Main Program
;---------------------
    PSECT absdata,abs,ovrld		     ; Do not change
    
    ORG          0			     ;Reset vector

    ORG          0020H			     ; Store LED hex values starting at 0020H
    
    DB		0x3F, 0x06, 0x5B, 0x4F, 0x66 ; hex values for LED 0-4
    DB		0x6D, 0x7D, 0x07, 0x7F, 0x67 ; hex values for LED 5-9
    DB		0x77, 0x7C, 0x39, 0x5E, 0x79 ; hex values for LED A-E
    DB		0x71			     ; hex value for LED F
    
    ORG		0040H			     ; Initiate PORTB and PORTD starting at 0040H
    
    BANKSEL	PORTD			     ;
    CLRF	PORTD			     ;Init PORTD
    BANKSEL	LATD			     ;Data Latch
    CLRF	LATD			     ;
    BANKSEL	ANSELD			     ;
    CLRF	ANSELD			     ;digital I/O
    BANKSEL	TRISD			     ;
    MOVLW	0b10000000		     ;Set RD[6:0] as outputs
    MOVWF	TRISD
    BANKSEL	PORTB			     ;
    CLRF	PORTB			     ;Init PORTB
    BANKSEL	LATB			     ;Data Latch
    CLRF	LATB			     ;
    BANKSEL	ANSELB			     ;
    CLRF	ANSELB			     ;digital I/O
    BANKSEL	TRISB			     ;
    MOVLW	0b00000011		     ;Set RB1 and RB0 as inputs
    MOVWF	TRISB
    
    ORG		0080H			     ; Start main loop at 0080H
 
_RESET:					     ; Reset the LED display to 0
    MOVLW	0
    MOVWF	INDEX
    MOVWF	TBLPTRU
    MOVWF	TBLPTRH
    MOVLW	HEXL
    MOVWF	TBLPTRL
    TBLRD*
    MOVFF	TABLAT, PORTD
    CALL	DELAY

START:					     ; Main program to check button inputs
    MOVLW	0
    MOVWF	TEMP
    MOVFF	PORTB, TEMP
    CPFSGT	TEMP
    BRA		START
    MOVLW	0x02
    SUBWF	TEMP
    BN		COUNT_D
    BZ		COUNT_U
    BRA		_RESET
    
    
COUNT_U:				     ; Subroutine to increment the LED display value
    CALL	DELAY
    INCF	INDEX
    INCF	TBLPTRL
    MOVLW	MAX
    CPFSLT	INDEX
    CALL	U_RESET
    TBLRD*
    MOVFF	TABLAT, PORTD
;    CALL	DELAY
    BRA		START

COUNT_D:				     ; Subroutine to decrement the LED display value
    CALL	DELAY
    DECF	TBLPTRL
    DECF	INDEX
    BN		D_RESET
D_RETURN:
    TBLRD*
    MOVFF	TABLAT, PORTD
    BRA		START
    
DELAY:					     ; Subroutine to delay the change of the LED display value
    MOVLW       Inner_loop
    MOVWF       REG10
    MOVLW	Middle_loop
    MOVWF	REG11
    MOVLW       Outer_loop
    MOVWF       REG12
_loop:
    DECF        REG10,1
    BNZ         _loop
    MOVLW       Inner_loop
    MOVWF       REG10
    DECF        REG11,1
    BNZ         _loop
    MOVLW	Middle_loop
    MOVWF	REG11
    DECF	REG12, 1
    BNZ		_loop
    RETURN
    
U_RESET:				     ; Subroutine to reset the index count to 0 when the count increments to the max LED display value of F
    MOVLW	0
    MOVWF	INDEX
    MOVLW	HEXL
    MOVWF	TBLPTRL
    RETURN
    
D_RESET:				     ; Subroutine to reset the index count to F when the count decrements to the min LED display value of 0
    MOVLW	15
    MOVWF	INDEX
    MOVLW	HEXU
    MOVWF	TBLPTRL
    BRA		D_RETURN 
END


