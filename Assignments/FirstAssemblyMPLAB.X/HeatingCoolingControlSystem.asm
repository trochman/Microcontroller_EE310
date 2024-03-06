;---------------------
; Title: Assignment 4 First Assembly Program Heating and Cooling Control System
;---------------------
;Program Details:
; The purpose of this program is to load two bytes, refTemp (keypad input reference temp) and measuredTemp (sensor input temp),
; in data registers REG 0x20 and REG 0x21. The program places the decimal equivalent of refTemp in registers REG 0x60, REG 0x61
; and REG 0x62, and the decimal equivalent of measuredTemp in registers REG 0x70, REG 0x71, and REG 0x72.
; The program then compares the two values to check if the heating or cooling systems need to be turned on,
; or if they are equal the heating and cooling system can be turned off. The result is then stored into contREG
; (compare result) in data register REG 0x22.

		
; Inputs: refTemp and measuredTemp
; Outputs: contREG, PORTD.1, and PORTD.2
; Date: Mar 6, 2024
; File Dependencies / Libraries: None 
; Compiler: MPLABX IDE v6.20 and ASM v2.46
; Author: Tony Rochman
; Versions:
;       V1.0: Oriiginal Program
; Useful links: 
;       Datasheet: https://ww1.microchip.com/downloads/en/DeviceDoc/PIC18(L)F26-27-45-46-47-55-56-57K42-Data-Sheet-40001919G.pdf 
;       PIC18F Instruction Sets: https://onlinelibrary.wiley.com/doi/pdf/10.1002/9781119448457.app4 
;       Assignment Instrcutions: https://docs.google.com/document/d/1PB5FNCLEhWM3IZfFljavK2h4Uno6AXZn/edit

;---------------------
; Initialization
;---------------------
#include "D:\EE 310 Lab\FirstAssemblyMPLAB.X\AssemblyConfig.inc"
#include <xc.inc>

;---------------------
; Program Inputs
;---------------------
#define  refTemp			15  ; keypad reference input temp
#define  measuredTemp			 0  ; measured sensor input temp

;---------------------
; REGISTERS
;---------------------
refTempREG		SET		0x20 ; register to store refTemp
measuredTempREG		SET		0x21 ; register to store measuredTemp
contREG			SET		0x22 ; register to store comparison result

;---------------------
; Program Outputs
;---------------------
refTempLowDig	        SET		0x60 ; register to store the refTemp decimal ones digit for display
refTempMidDig	        SET		0x61 ; register to store the refTemp decimal tens digit for display
refTempHighDig	        SET		0x62 ; register to store the refTemp decimal hundreds digit for display
measuredTempLowDig	SET		0x70 ; register to store the measuredTemp decimal ones digit for display
measuredTempMidDig	SET		0x71 ; register to store the measuredTemp decimal tens digit for display
measuredTempHighDig	SET		0x72 ; register to store the measuredTemp decimal hundreds digit for display
tempNum			SET		0x23 ; register to store temporary numerator value
tempQuo			SET		0x24 ; register to store temporary quotient value
    
;---------------------
; Main Program
;---------------------
    PSECT absdata,abs,ovrld			; Do not change

    ORG          0x24				; Start program memory at line 20


	MOVLW	0x00				; WREG = 0
	MOVWF	TRISD,A				; Turn on PORTD for output
	MOVLW   refTemp				; WREG = refTemp
	MOVWF	refTempREG,A			; store refTemp in refTempREG
	CALL	RDEC				; call RDEC function to get decimal value of refTemp for display
	MOVLW	measuredTemp			; WREG = measuredTemp
	MOVWF	measuredTempREG,A		; store measuredTemp in measuredTempREG
	ADDLW	0				; Add 0 to WREG to set STATUS register
	BN	NEGM				; Branch to NEGM if measuredTemp is negative
	CALL	MDEC				; call MDEC function to get decimal value of measuredTemp for display
	MOVLW	measuredTemp			; WREG = measuredTemp
	SUBLW	refTemp,A			; WREG = refTemp - measuredTemp
	BN	COOL				; Branch to COOL if refTemp < measuredTemp
	BZ	NOTHING				; Branch to NOTHING if refTemp = measuredTemp
HEAT:	MOVLW	0x01				; Otherwise refTemp > measuredTemp
	MOVWF	contREG,A			; set contREG = 1
	MOVLW	0x02				; WREG = 2
	MOVWF	PORTD,A				; set PORTD.1 to high
	SLEEP					; 
NOTHING:MOVLW	0x00				; WREG = 0
	MOVWF	contREG,A			; set contREG = 0
	MOVWF	PORTD,A				; set PORTD.1 and PORTD.2 to low
	SLEEP					; 
COOL:	MOVLW	0x02				; WREG = 2
	MOVWF	contREG,A			; set contREG = 2
	MOVLW	0x04				; WREG = 4
	MOVWF	PORTD,A				; set PORTD.2 to high
	SLEEP					; 
RDEC:	MOVWF	tempNum,A			; store temporary numerator
	MOVLW	0x00				; WREG = 0
	MOVWF	tempQuo,A			; Clear temporary quotient
	MOVLW	0x0A				; WREG = 10
lowRD:	INCF	tempQuo,A			; Increment temporary quotient
	SUBWF	tempNum,A			; WREG = tempNum - 10
	BC	lowRD				; Branch to lowRD if still positive
	ADDWF	tempNum,A			; WREG = tempNum + 10
	DECF	tempQuo,A			; Decrement temporary quotient
	MOVFF	tempNum,refTempLowDig		; Store ones digit of refTemp for display
	MOVFF	tempQuo,tempNum,A		; Move temporary quotient to temporary numerator
	MOVLW	0x00				; WREG = 0
	MOVWF	tempQuo,A			; Clear temporary quotient
	MOVLW	0x0A				; WREG = 10
midRD:	INCF	tempQuo,A			; Increment temporary quotient
	SUBWF	tempNum,A			; WREG = tempNum - 10
	BC	midRD				; Branch to midRD if still positive
	ADDWF	tempNum,A			; WREG = tempNum + 10
	DECF	tempQuo,A			; Decrement temporary quotient
	MOVFF	tempNum,refTempMidDig		; Store tens digit of refTemp for display
	MOVFF	tempQuo,refTempHighDig		; Store hundreds digit of refTemp for display
	RETURN					; Return to main program
MDEC:	MOVWF	tempNum,A			; store temporary numerator
	MOVLW	0x00				; WREG = 0
	MOVWF	tempQuo,A			; Clear temporary quotient
	MOVLW	0x0A				; WREG = 10
lowMD:  INCF	tempQuo,A			; Increment temporary quotient
	SUBWF	tempNum,A			; WREG = tempNum - 10
	BC	lowMD				; Branch to lowMD if still positive
	ADDWF	tempNum,A			; WREG = tempNum + 10
	DECF	tempQuo,A			; Decrement temporary quotient
	MOVFF	tempNum,measuredTempLowDig	; Store ones digit of refTemp for display
	MOVFF	tempQuo,tempNum,A		; Move temporary quotient to temporary numerator
	MOVLW	0x00				; WREG = 0
	MOVWF	tempQuo,A			; Clear temporary quotient
	MOVLW	0x0A				; WREG = 10
midMD:	INCF	tempQuo,A			; Increment temporary quotient
	SUBWF	tempNum,A			; WREG = tempNum - 10
	BC	midMD				; Branch to midRD if still positive
	ADDWF	tempNum,A			; WREG = tempNum + 10
	DECF	tempQuo,A			; Decrement temporary quotient
	MOVFF	tempNum,measuredTempMidDig	; Store tens digit of measuredTemp for display
	MOVFF	tempQuo,measuredTempHighDig	; Store hundreds digit of measuredTemp for display
	RETURN					; Return to main program
NEGM:	NEGF	WREG,A				; Use 2's compliment on WREG
	CALL	MDEC				; call MDEC function to get decimal value of measuredTemp for display
	BRA	HEAT				; Branch to HEAT
END

