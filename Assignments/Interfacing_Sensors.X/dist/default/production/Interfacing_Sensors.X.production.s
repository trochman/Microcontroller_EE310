subtitle "Microchip MPLAB XC8 C Compiler v2.46 (Free license) build 20240104201356 Og1 "

pagewidth 120

	opt flic

	processor	18F47K42
include "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\18f47k42.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 250 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
STATUS_CSHAD equ 03880h ;# 
# 339 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
WREG_CSHAD equ 03881h ;# 
# 359 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
BSR_CSHAD equ 03882h ;# 
# 366 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SHADCON equ 03883h ;# 
# 386 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
STATUS_SHAD equ 03884h ;# 
# 475 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
WREG_SHAD equ 03885h ;# 
# 495 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
BSR_SHAD equ 03886h ;# 
# 502 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PCLATH_SHAD equ 03887h ;# 
# 522 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PCLATU_SHAD equ 03888h ;# 
# 542 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
FSR0SH equ 03889h ;# 
# 549 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
FSR0L_SHAD equ 03889h ;# 
# 569 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
FSR0H_SHAD equ 0388Ah ;# 
# 589 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
FSR1SH equ 0388Bh ;# 
# 596 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
FSR1L_SHAD equ 0388Bh ;# 
# 616 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
FSR1H_SHAD equ 0388Ch ;# 
# 636 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
FSR2SH equ 0388Dh ;# 
# 643 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
FSR2L_SHAD equ 0388Dh ;# 
# 663 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
FSR2H_SHAD equ 0388Eh ;# 
# 683 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PRODSH equ 0388Fh ;# 
# 690 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PRODL_SHAD equ 0388Fh ;# 
# 710 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PRODH_SHAD equ 03890h ;# 
# 730 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
IVTADL equ 0389Dh ;# 
# 750 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
IVTADH equ 0389Eh ;# 
# 770 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
IVTADU equ 0389Fh ;# 
# 790 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
WDTCON0 equ 0395Bh ;# 
# 865 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
WDTCON1 equ 0395Ch ;# 
# 959 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
WDTPSL equ 0395Dh ;# 
# 1087 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
WDTPSH equ 0395Eh ;# 
# 1215 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
WDTTMR equ 0395Fh ;# 
# 1303 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CRCDATA equ 03960h ;# 
# 1310 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CRCDATL equ 03960h ;# 
# 1372 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CRCDATH equ 03961h ;# 
# 1434 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CRCACC equ 03962h ;# 
# 1441 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CRCACCL equ 03962h ;# 
# 1503 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CRCACCH equ 03963h ;# 
# 1565 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CRCSHFT equ 03964h ;# 
# 1572 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CRCSHIFTL equ 03964h ;# 
# 1634 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CRCSHIFTH equ 03965h ;# 
# 1696 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CRCXOR equ 03966h ;# 
# 1703 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CRCXORL equ 03966h ;# 
# 1760 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CRCXORH equ 03967h ;# 
# 1822 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CRCCON0 equ 03968h ;# 
# 1882 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CRCCON1 equ 03969h ;# 
# 1960 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SCANLADR equ 03976h ;# 
# 1967 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SCANLADRL equ 03976h ;# 
# 2095 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SCANLADRH equ 03977h ;# 
# 2223 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SCANLADRU equ 03978h ;# 
# 2329 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SCANHADR equ 03979h ;# 
# 2336 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SCANHADRL equ 03979h ;# 
# 2464 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SCANHADRH equ 0397Ah ;# 
# 2592 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SCANHADRU equ 0397Bh ;# 
# 2696 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SCANCON0 equ 0397Ch ;# 
# 2747 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SCANTRIG equ 0397Dh ;# 
# 2767 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
IPR0 equ 03980h ;# 
# 2829 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
IPR1 equ 03981h ;# 
# 2891 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
IPR2 equ 03982h ;# 
# 2953 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
IPR3 equ 03983h ;# 
# 3015 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
IPR4 equ 03984h ;# 
# 3072 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
IPR5 equ 03985h ;# 
# 3134 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
IPR6 equ 03986h ;# 
# 3196 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
IPR7 equ 03987h ;# 
# 3241 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
IPR8 equ 03988h ;# 
# 3268 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
IPR9 equ 03989h ;# 
# 3306 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
IPR10 equ 0398Ah ;# 
# 3332 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PIE0 equ 03990h ;# 
# 3394 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PIE1 equ 03991h ;# 
# 3456 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PIE2 equ 03992h ;# 
# 3518 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PIE3 equ 03993h ;# 
# 3580 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PIE4 equ 03994h ;# 
# 3637 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PIE5 equ 03995h ;# 
# 3699 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PIE6 equ 03996h ;# 
# 3761 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PIE7 equ 03997h ;# 
# 3806 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PIE8 equ 03998h ;# 
# 3833 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PIE9 equ 03999h ;# 
# 3871 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PIE10 equ 0399Ah ;# 
# 3897 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PIR0 equ 039A0h ;# 
# 3959 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PIR1 equ 039A1h ;# 
# 4021 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PIR2 equ 039A2h ;# 
# 4083 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PIR3 equ 039A3h ;# 
# 4145 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PIR4 equ 039A4h ;# 
# 4202 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PIR5 equ 039A5h ;# 
# 4264 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PIR6 equ 039A6h ;# 
# 4326 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PIR7 equ 039A7h ;# 
# 4371 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PIR8 equ 039A8h ;# 
# 4398 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PIR9 equ 039A9h ;# 
# 4436 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PIR10 equ 039AAh ;# 
# 4462 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PMD0 equ 039C0h ;# 
# 4524 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PMD1 equ 039C1h ;# 
# 4586 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PMD2 equ 039C2h ;# 
# 4631 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PMD3 equ 039C3h ;# 
# 4693 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PMD4 equ 039C4h ;# 
# 4726 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PMD5 equ 039C5h ;# 
# 4771 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PMD6 equ 039C6h ;# 
# 4821 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PMD7 equ 039C7h ;# 
# 4847 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
BORCON equ 039D0h ;# 
# 4874 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
VREGCON equ 039D1h ;# 
# 4895 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CPUDOZE equ 039D8h ;# 
# 4960 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
OSCCON1 equ 039D9h ;# 
# 5030 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
OSCCON2 equ 039DAh ;# 
# 5100 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
OSCCON3 equ 039DBh ;# 
# 5140 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
OSCSTAT equ 039DCh ;# 
# 5145 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
OSCSTAT1 equ 039DCh ;# 
# 5252 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
OSCEN equ 039DDh ;# 
# 5303 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
OSCTUNE equ 039DEh ;# 
# 5407 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
OSCFRQ equ 039DFh ;# 
# 5487 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
NVMADRL equ 039E0h ;# 
# 5615 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
NVMADRH equ 039E1h ;# 
# 5671 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
NVMDAT equ 039E3h ;# 
# 5799 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
NVMCON1 equ 039E5h ;# 
# 5889 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
NVMCON2 equ 039E6h ;# 
# 5909 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PRLOCK equ 039EFh ;# 
# 5929 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ISRPR equ 039F1h ;# 
# 5997 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
MAINPR equ 039F2h ;# 
# 6065 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA1PR equ 039F3h ;# 
# 6133 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA2PR equ 039F4h ;# 
# 6201 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SCANPR equ 039F7h ;# 
# 6269 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
RA0PPS equ 03A00h ;# 
# 6319 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
RA1PPS equ 03A01h ;# 
# 6369 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
RA2PPS equ 03A02h ;# 
# 6419 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
RA3PPS equ 03A03h ;# 
# 6469 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
RA4PPS equ 03A04h ;# 
# 6519 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
RA5PPS equ 03A05h ;# 
# 6569 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
RA6PPS equ 03A06h ;# 
# 6619 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
RA7PPS equ 03A07h ;# 
# 6669 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
RB0PPS equ 03A08h ;# 
# 6719 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
RB1PPS equ 03A09h ;# 
# 6769 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
RB2PPS equ 03A0Ah ;# 
# 6819 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
RB3PPS equ 03A0Bh ;# 
# 6869 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
RB4PPS equ 03A0Ch ;# 
# 6919 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
RB5PPS equ 03A0Dh ;# 
# 6969 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
RB6PPS equ 03A0Eh ;# 
# 7019 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
RB7PPS equ 03A0Fh ;# 
# 7069 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
RC0PPS equ 03A10h ;# 
# 7119 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
RC1PPS equ 03A11h ;# 
# 7169 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
RC2PPS equ 03A12h ;# 
# 7219 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
RC3PPS equ 03A13h ;# 
# 7269 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
RC4PPS equ 03A14h ;# 
# 7319 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
RC5PPS equ 03A15h ;# 
# 7369 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
RC6PPS equ 03A16h ;# 
# 7419 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
RC7PPS equ 03A17h ;# 
# 7469 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
RD0PPS equ 03A18h ;# 
# 7519 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
RD1PPS equ 03A19h ;# 
# 7569 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
RD2PPS equ 03A1Ah ;# 
# 7619 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
RD3PPS equ 03A1Bh ;# 
# 7669 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
RD4PPS equ 03A1Ch ;# 
# 7719 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
RD5PPS equ 03A1Dh ;# 
# 7769 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
RD6PPS equ 03A1Eh ;# 
# 7819 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
RD7PPS equ 03A1Fh ;# 
# 7869 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
RE0PPS equ 03A20h ;# 
# 7919 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
RE1PPS equ 03A21h ;# 
# 7969 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
RE2PPS equ 03A22h ;# 
# 8019 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ANSELA equ 03A40h ;# 
# 8081 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
WPUA equ 03A41h ;# 
# 8143 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ODCONA equ 03A42h ;# 
# 8205 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SLRCONA equ 03A43h ;# 
# 8267 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
INLVLA equ 03A44h ;# 
# 8329 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
IOCAP equ 03A45h ;# 
# 8391 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
IOCAN equ 03A46h ;# 
# 8453 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
IOCAF equ 03A47h ;# 
# 8515 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ANSELB equ 03A50h ;# 
# 8577 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
WPUB equ 03A51h ;# 
# 8639 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ODCONB equ 03A52h ;# 
# 8701 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SLRCONB equ 03A53h ;# 
# 8763 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
INLVLB equ 03A54h ;# 
# 8825 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
IOCBP equ 03A55h ;# 
# 8887 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
IOCBN equ 03A56h ;# 
# 8949 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
IOCBF equ 03A57h ;# 
# 9011 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
RB1I2C equ 03A5Ah ;# 
# 9119 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
RB2I2C equ 03A5Bh ;# 
# 9227 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ANSELC equ 03A60h ;# 
# 9289 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
WPUC equ 03A61h ;# 
# 9351 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ODCONC equ 03A62h ;# 
# 9413 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SLRCONC equ 03A63h ;# 
# 9475 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
INLVLC equ 03A64h ;# 
# 9537 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
IOCCP equ 03A65h ;# 
# 9599 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
IOCCN equ 03A66h ;# 
# 9661 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
IOCCF equ 03A67h ;# 
# 9723 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
RC3I2C equ 03A6Ah ;# 
# 9831 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
RC4I2C equ 03A6Bh ;# 
# 9939 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ANSELD equ 03A70h ;# 
# 10001 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
WPUD equ 03A71h ;# 
# 10063 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ODCOND equ 03A72h ;# 
# 10125 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SLRCOND equ 03A73h ;# 
# 10187 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
INLVLD equ 03A74h ;# 
# 10249 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
RD0I2C equ 03A7Ah ;# 
# 10357 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
RD1I2C equ 03A7Bh ;# 
# 10465 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ANSELE equ 03A80h ;# 
# 10497 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
WPUE equ 03A81h ;# 
# 10535 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ODCONE equ 03A82h ;# 
# 10567 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SLRCONE equ 03A83h ;# 
# 10599 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
INLVLE equ 03A84h ;# 
# 10637 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
IOCEP equ 03A85h ;# 
# 10658 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
IOCEN equ 03A86h ;# 
# 10679 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
IOCEF equ 03A87h ;# 
# 10700 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PPSLOCK equ 03ABFh ;# 
# 10720 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
INT0PPS equ 03AC0h ;# 
# 10740 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
INT1PPS equ 03AC1h ;# 
# 10760 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
INT2PPS equ 03AC2h ;# 
# 10780 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
T0CKIPPS equ 03AC3h ;# 
# 10800 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
T1CKIPPS equ 03AC4h ;# 
# 10820 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
T1GPPS equ 03AC5h ;# 
# 10840 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
T3CKIPPS equ 03AC6h ;# 
# 10860 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
T3GPPS equ 03AC7h ;# 
# 10880 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
T5CKIPPS equ 03AC8h ;# 
# 10900 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
T5GPPS equ 03AC9h ;# 
# 10920 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
T2INPPS equ 03ACAh ;# 
# 10940 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
T4INPPS equ 03ACBh ;# 
# 10960 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
T6INPPS equ 03ACCh ;# 
# 10980 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CCP1PPS equ 03ACDh ;# 
# 11000 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CCP2PPS equ 03ACEh ;# 
# 11020 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CCP3PPS equ 03ACFh ;# 
# 11040 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CCP4PPS equ 03AD0h ;# 
# 11060 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SMT1WINPPS equ 03AD1h ;# 
# 11080 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SMT1SIGPPS equ 03AD2h ;# 
# 11100 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CWG1INPPS equ 03AD3h ;# 
# 11120 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CWG2INPPS equ 03AD4h ;# 
# 11140 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CWG3INPPS equ 03AD5h ;# 
# 11160 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
MD1CARLPPS equ 03AD6h ;# 
# 11180 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
MD1CARHPPS equ 03AD7h ;# 
# 11200 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
MD1SRCPPS equ 03AD8h ;# 
# 11220 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLCIN0PPS equ 03AD9h ;# 
# 11240 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLCIN1PPS equ 03ADAh ;# 
# 11260 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLCIN2PPS equ 03ADBh ;# 
# 11280 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLCIN3PPS equ 03ADCh ;# 
# 11300 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ADACTPPS equ 03ADDh ;# 
# 11320 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SPI1SCKPPS equ 03ADEh ;# 
# 11340 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SPI1SDIPPS equ 03ADFh ;# 
# 11360 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SPI1SSPPS equ 03AE0h ;# 
# 11380 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
I2C1SCLPPS equ 03AE1h ;# 
# 11400 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
I2C1SDAPPS equ 03AE2h ;# 
# 11420 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
I2C2SCLPPS equ 03AE3h ;# 
# 11440 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
I2C2SDAPPS equ 03AE4h ;# 
# 11460 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U1RXPPS equ 03AE5h ;# 
# 11480 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U1CTSPPS equ 03AE6h ;# 
# 11500 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U2RXPPS equ 03AE8h ;# 
# 11520 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U2CTSPPS equ 03AE9h ;# 
# 11540 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA2BUF equ 03BC9h ;# 
# 11668 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA2DCNT equ 03BCAh ;# 
# 11675 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA2DCNTL equ 03BCAh ;# 
# 11803 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA2DCNTH equ 03BCBh ;# 
# 11883 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA2DPTR equ 03BCCh ;# 
# 11890 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA2DPTRL equ 03BCCh ;# 
# 12018 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA2DPTRH equ 03BCDh ;# 
# 12146 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA2DSZ equ 03BCEh ;# 
# 12153 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA2DSZL equ 03BCEh ;# 
# 12281 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA2DSZH equ 03BCFh ;# 
# 12361 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA2DSA equ 03BD0h ;# 
# 12368 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA2DSAL equ 03BD0h ;# 
# 12496 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA2DSAH equ 03BD1h ;# 
# 12624 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA2SCNT equ 03BD2h ;# 
# 12631 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA2SCNTL equ 03BD2h ;# 
# 12759 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA2SCNTH equ 03BD3h ;# 
# 12841 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA2SPTR equ 03BD4h ;# 
# 12848 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA2SPTRL equ 03BD4h ;# 
# 12976 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA2SPTRH equ 03BD5h ;# 
# 13104 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA2SPTRU equ 03BD6h ;# 
# 13208 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA2SSZ equ 03BD7h ;# 
# 13215 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA2SSZL equ 03BD7h ;# 
# 13343 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA2SSZH equ 03BD8h ;# 
# 13425 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA2SSA equ 03BD9h ;# 
# 13432 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA2SSAL equ 03BD9h ;# 
# 13560 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA2SSAH equ 03BDAh ;# 
# 13688 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA2SSAU equ 03BDBh ;# 
# 13792 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA2CON0 equ 03BDCh ;# 
# 13872 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA2CON1 equ 03BDDh ;# 
# 13916 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA2AIRQ equ 03BDEh ;# 
# 14032 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA2SIRQ equ 03BDFh ;# 
# 14148 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA1BUF equ 03BE9h ;# 
# 14276 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA1DCNT equ 03BEAh ;# 
# 14283 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA1DCNTL equ 03BEAh ;# 
# 14411 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA1DCNTH equ 03BEBh ;# 
# 14491 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA1DPTR equ 03BECh ;# 
# 14498 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA1DPTRL equ 03BECh ;# 
# 14626 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA1DPTRH equ 03BEDh ;# 
# 14754 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA1DSZ equ 03BEEh ;# 
# 14761 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA1DSZL equ 03BEEh ;# 
# 14889 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA1DSZH equ 03BEFh ;# 
# 14969 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA1DSA equ 03BF0h ;# 
# 14976 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA1DSAL equ 03BF0h ;# 
# 15104 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA1DSAH equ 03BF1h ;# 
# 15232 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA1SCNT equ 03BF2h ;# 
# 15239 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA1SCNTL equ 03BF2h ;# 
# 15367 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA1SCNTH equ 03BF3h ;# 
# 15449 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA1SPTR equ 03BF4h ;# 
# 15456 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA1SPTRL equ 03BF4h ;# 
# 15584 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA1SPTRH equ 03BF5h ;# 
# 15712 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA1SPTRU equ 03BF6h ;# 
# 15816 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA1SSZ equ 03BF7h ;# 
# 15823 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA1SSZL equ 03BF7h ;# 
# 15951 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA1SSZH equ 03BF8h ;# 
# 16033 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA1SSA equ 03BF9h ;# 
# 16040 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA1SSAL equ 03BF9h ;# 
# 16168 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA1SSAH equ 03BFAh ;# 
# 16296 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA1SSAU equ 03BFBh ;# 
# 16400 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA1CON0 equ 03BFCh ;# 
# 16480 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA1CON1 equ 03BFDh ;# 
# 16524 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA1AIRQ equ 03BFEh ;# 
# 16640 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DMA1SIRQ equ 03BFFh ;# 
# 16756 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLC4CON equ 03C56h ;# 
# 16884 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLC4POL equ 03C57h ;# 
# 16962 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLC4SEL0 equ 03C58h ;# 
# 17090 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLC4SEL1 equ 03C59h ;# 
# 17218 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLC4SEL2 equ 03C5Ah ;# 
# 17346 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLC4SEL3 equ 03C5Bh ;# 
# 17474 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLC4GLS0 equ 03C5Ch ;# 
# 17586 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLC4GLS1 equ 03C5Dh ;# 
# 17698 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLC4GLS2 equ 03C5Eh ;# 
# 17810 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLC4GLS3 equ 03C5Fh ;# 
# 17922 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLC3CON equ 03C60h ;# 
# 18050 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLC3POL equ 03C61h ;# 
# 18128 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLC3SEL0 equ 03C62h ;# 
# 18256 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLC3SEL1 equ 03C63h ;# 
# 18384 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLC3SEL2 equ 03C64h ;# 
# 18512 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLC3SEL3 equ 03C65h ;# 
# 18640 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLC3GLS0 equ 03C66h ;# 
# 18752 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLC3GLS1 equ 03C67h ;# 
# 18864 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLC3GLS2 equ 03C68h ;# 
# 18976 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLC3GLS3 equ 03C69h ;# 
# 19088 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLC2CON equ 03C6Ah ;# 
# 19216 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLC2POL equ 03C6Bh ;# 
# 19294 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLC2SEL0 equ 03C6Ch ;# 
# 19422 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLC2SEL1 equ 03C6Dh ;# 
# 19550 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLC2SEL2 equ 03C6Eh ;# 
# 19678 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLC2SEL3 equ 03C6Fh ;# 
# 19806 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLC2GLS0 equ 03C70h ;# 
# 19918 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLC2GLS1 equ 03C71h ;# 
# 20030 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLC2GLS2 equ 03C72h ;# 
# 20142 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLC2GLS3 equ 03C73h ;# 
# 20254 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLC1CON equ 03C74h ;# 
# 20382 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLC1POL equ 03C75h ;# 
# 20460 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLC1SEL0 equ 03C76h ;# 
# 20588 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLC1SEL1 equ 03C77h ;# 
# 20716 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLC1SEL2 equ 03C78h ;# 
# 20844 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLC1SEL3 equ 03C79h ;# 
# 20972 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLC1GLS0 equ 03C7Ah ;# 
# 21084 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLC1GLS1 equ 03C7Bh ;# 
# 21196 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLC1GLS2 equ 03C7Ch ;# 
# 21308 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLC1GLS3 equ 03C7Dh ;# 
# 21420 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLCDATA0 equ 03C7Eh ;# 
# 21458 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLKRCON equ 03CE5h ;# 
# 21544 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CLKRCLK equ 03CE6h ;# 
# 21624 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
MD1CON0 equ 03CFAh ;# 
# 21692 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
MD1CON1 equ 03CFBh ;# 
# 21758 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
MD1SRC equ 03CFCh ;# 
# 21850 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
MD1CARL equ 03CFDh ;# 
# 21942 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
MD1CARH equ 03CFEh ;# 
# 22034 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SPI1RXB equ 03D10h ;# 
# 22104 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SPI1TXB equ 03D11h ;# 
# 22174 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SPI1TCNT equ 03D12h ;# 
# 22181 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SPI1TCNTL equ 03D12h ;# 
# 22201 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SPI1TCNTH equ 03D13h ;# 
# 22221 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SPI1CON0 equ 03D14h ;# 
# 22287 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SPI1CON1 equ 03D15h ;# 
# 22389 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SPI1CON2 equ 03D16h ;# 
# 22467 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SPI1STATUS equ 03D17h ;# 
# 22549 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SPI1TWIDTH equ 03D18h ;# 
# 22589 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SPI1BAUD equ 03D19h ;# 
# 22659 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SPI1INTF equ 03D1Ah ;# 
# 22751 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SPI1INTE equ 03D1Bh ;# 
# 22843 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SPI1CLK equ 03D1Ch ;# 
# 22923 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
I2C2RXB equ 03D54h ;# 
# 22943 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
I2C2TXB equ 03D55h ;# 
# 22963 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
I2C2CNT equ 03D56h ;# 
# 23033 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
I2C2ADB0 equ 03D57h ;# 
# 23053 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
I2C2ADB1 equ 03D58h ;# 
# 23073 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
I2C2ADR0 equ 03D59h ;# 
# 23093 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
I2C2ADR1 equ 03D5Ah ;# 
# 23114 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
I2C2ADR2 equ 03D5Bh ;# 
# 23134 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
I2C2ADR3 equ 03D5Ch ;# 
# 23155 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
I2C2CON0 equ 03D5Dh ;# 
# 23232 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
I2C2CON1 equ 03D5Eh ;# 
# 23289 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
I2C2CON2 equ 03D5Fh ;# 
# 23365 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
I2C2ERR equ 03D60h ;# 
# 23455 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
I2C2STAT0 equ 03D61h ;# 
# 23545 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
I2C2STAT1 equ 03D62h ;# 
# 23592 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
I2C2PIR equ 03D63h ;# 
# 23694 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
I2C2PIE equ 03D64h ;# 
# 23796 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
I2C2CLK equ 03D65h ;# 
# 23876 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
I2C2BTO equ 03D66h ;# 
# 23944 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
I2C1RXB equ 03D6Ah ;# 
# 23964 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
I2C1TXB equ 03D6Bh ;# 
# 23984 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
I2C1CNT equ 03D6Ch ;# 
# 24054 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
I2C1ADB0 equ 03D6Dh ;# 
# 24074 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
I2C1ADB1 equ 03D6Eh ;# 
# 24094 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
I2C1ADR0 equ 03D6Fh ;# 
# 24114 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
I2C1ADR1 equ 03D70h ;# 
# 24135 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
I2C1ADR2 equ 03D71h ;# 
# 24155 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
I2C1ADR3 equ 03D72h ;# 
# 24176 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
I2C1CON0 equ 03D73h ;# 
# 24253 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
I2C1CON1 equ 03D74h ;# 
# 24310 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
I2C1CON2 equ 03D75h ;# 
# 24386 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
I2C1ERR equ 03D76h ;# 
# 24476 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
I2C1STAT0 equ 03D77h ;# 
# 24566 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
I2C1STAT1 equ 03D78h ;# 
# 24613 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
I2C1PIR equ 03D79h ;# 
# 24715 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
I2C1PIE equ 03D7Ah ;# 
# 24817 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
I2C1CLK equ 03D7Bh ;# 
# 24897 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
I2C1BTO equ 03D7Ch ;# 
# 24965 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U2RXB equ 03DD0h ;# 
# 24970 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U2RXBL equ 03DD0h ;# 
# 25003 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U2TXB equ 03DD2h ;# 
# 25008 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U2TXBL equ 03DD2h ;# 
# 25041 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U2P1 equ 03DD4h ;# 
# 25048 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U2P1L equ 03DD4h ;# 
# 25068 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U2P2 equ 03DD6h ;# 
# 25075 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U2P2L equ 03DD6h ;# 
# 25095 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U2P3 equ 03DD8h ;# 
# 25102 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U2P3L equ 03DD8h ;# 
# 25122 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U2CON0 equ 03DDAh ;# 
# 25238 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U2CON1 equ 03DDBh ;# 
# 25318 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U2CON2 equ 03DDCh ;# 
# 25450 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U2BRG equ 03DDDh ;# 
# 25457 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U2BRGL equ 03DDDh ;# 
# 25477 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U2BRGH equ 03DDEh ;# 
# 25497 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U2FIFO equ 03DDFh ;# 
# 25627 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U2UIR equ 03DE0h ;# 
# 25683 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U2ERRIR equ 03DE1h ;# 
# 25795 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U2ERRIE equ 03DE2h ;# 
# 25907 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U1RXB equ 03DE8h ;# 
# 25912 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U1RXBL equ 03DE8h ;# 
# 25945 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U1RXCHK equ 03DE9h ;# 
# 25965 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U1TXB equ 03DEAh ;# 
# 25970 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U1TXBL equ 03DEAh ;# 
# 26003 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U1TXCHK equ 03DEBh ;# 
# 26023 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U1P1 equ 03DECh ;# 
# 26030 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U1P1L equ 03DECh ;# 
# 26050 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U1P1H equ 03DEDh ;# 
# 26070 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U1P2 equ 03DEEh ;# 
# 26077 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U1P2L equ 03DEEh ;# 
# 26097 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U1P2H equ 03DEFh ;# 
# 26117 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U1P3 equ 03DF0h ;# 
# 26124 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U1P3L equ 03DF0h ;# 
# 26144 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U1P3H equ 03DF1h ;# 
# 26164 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U1CON0 equ 03DF2h ;# 
# 26292 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U1CON1 equ 03DF3h ;# 
# 26372 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U1CON2 equ 03DF4h ;# 
# 26514 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U1BRG equ 03DF5h ;# 
# 26521 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U1BRGL equ 03DF5h ;# 
# 26541 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U1BRGH equ 03DF6h ;# 
# 26561 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U1FIFO equ 03DF7h ;# 
# 26691 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U1UIR equ 03DF8h ;# 
# 26747 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U1ERRIR equ 03DF9h ;# 
# 26859 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
U1ERRIE equ 03DFAh ;# 
# 26971 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DAC1CON1 equ 03E9Ch ;# 
# 27031 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
DAC1CON0 equ 03E9Eh ;# 
# 27132 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CM2CON0 equ 03EB8h ;# 
# 27212 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CM2CON1 equ 03EB9h ;# 
# 27252 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CM2NCH equ 03EBAh ;# 
# 27312 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CM2PCH equ 03EBBh ;# 
# 27372 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CM1CON0 equ 03EBCh ;# 
# 27452 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CM1CON1 equ 03EBDh ;# 
# 27492 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CM1NCH equ 03EBEh ;# 
# 27552 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CM1PCH equ 03EBFh ;# 
# 27612 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CMOUT equ 03EC0h ;# 
# 27638 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
FVRCON equ 03EC1h ;# 
# 27727 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ZCDCON equ 03EC3h ;# 
# 27807 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
HLVDCON0 equ 03EC9h ;# 
# 27887 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
HLVDCON1 equ 03ECAh ;# 
# 27959 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ADCP equ 03ED7h ;# 
# 28010 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ADLTH equ 03EDEh ;# 
# 28017 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ADLTHL equ 03EDEh ;# 
# 28145 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ADLTHH equ 03EDFh ;# 
# 28273 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ADUTH equ 03EE0h ;# 
# 28280 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ADUTHL equ 03EE0h ;# 
# 28408 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ADUTHH equ 03EE1h ;# 
# 28536 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ADERR equ 03EE2h ;# 
# 28543 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ADERRL equ 03EE2h ;# 
# 28671 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ADERRH equ 03EE3h ;# 
# 28799 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ADSTPT equ 03EE4h ;# 
# 28806 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ADSTPTL equ 03EE4h ;# 
# 28934 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ADSTPTH equ 03EE5h ;# 
# 29062 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ADFLTR equ 03EE6h ;# 
# 29069 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ADFLTRL equ 03EE6h ;# 
# 29197 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ADFLTRH equ 03EE7h ;# 
# 29327 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ADACC equ 03EE8h ;# 
# 29334 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ADACCL equ 03EE8h ;# 
# 29462 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ADACCH equ 03EE9h ;# 
# 29590 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ADACCU equ 03EEAh ;# 
# 29718 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ADCNT equ 03EEBh ;# 
# 29846 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ADRPT equ 03EECh ;# 
# 29974 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ADPREV equ 03EEDh ;# 
# 29981 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ADPREVL equ 03EEDh ;# 
# 30109 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ADPREVH equ 03EEEh ;# 
# 30237 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ADRES equ 03EEFh ;# 
# 30244 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ADRESL equ 03EEFh ;# 
# 30372 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ADRESH equ 03EF0h ;# 
# 30492 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ADPCH equ 03EF1h ;# 
# 30596 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ADACQ equ 03EF3h ;# 
# 30603 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ADACQL equ 03EF3h ;# 
# 30731 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ADACQH equ 03EF4h ;# 
# 30823 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ADCAP equ 03EF5h ;# 
# 30915 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ADPRE equ 03EF6h ;# 
# 30922 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ADPREL equ 03EF6h ;# 
# 31050 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ADPREH equ 03EF7h ;# 
# 31142 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ADCON0 equ 03EF8h ;# 
# 31260 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ADCON1 equ 03EF9h ;# 
# 31326 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ADCON2 equ 03EFAh ;# 
# 31504 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ADCON3 equ 03EFBh ;# 
# 31634 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ADSTAT equ 03EFCh ;# 
# 31759 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ADREF equ 03EFDh ;# 
# 31841 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ADACT equ 03EFEh ;# 
# 31933 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
ADCLK equ 03EFFh ;# 
# 32039 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SMT1TMR equ 03F12h ;# 
# 32046 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SMT1TMRL equ 03F12h ;# 
# 32174 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SMT1TMRH equ 03F13h ;# 
# 32302 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SMT1TMRU equ 03F14h ;# 
# 32432 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SMT1CPR equ 03F15h ;# 
# 32439 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SMT1CPRL equ 03F15h ;# 
# 32567 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SMT1CPRH equ 03F16h ;# 
# 32695 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SMT1CPRU equ 03F17h ;# 
# 32825 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SMT1CPW equ 03F18h ;# 
# 32832 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SMT1CPWL equ 03F18h ;# 
# 32960 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SMT1CPWH equ 03F19h ;# 
# 33088 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SMT1CPWU equ 03F1Ah ;# 
# 33218 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SMT1PR equ 03F1Bh ;# 
# 33225 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SMT1PRL equ 03F1Bh ;# 
# 33353 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SMT1PRH equ 03F1Ch ;# 
# 33481 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SMT1PRU equ 03F1Dh ;# 
# 33609 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SMT1CON0 equ 03F1Eh ;# 
# 33727 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SMT1CON1 equ 03F1Fh ;# 
# 33807 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SMT1STAT equ 03F20h ;# 
# 33906 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SMT1CLK equ 03F21h ;# 
# 33974 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SMT1SIG equ 03F22h ;# 
# 34066 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
SMT1WIN equ 03F23h ;# 
# 34160 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
NCO1ACC equ 03F38h ;# 
# 34167 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
NCO1ACCL equ 03F38h ;# 
# 34295 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
NCO1ACCH equ 03F39h ;# 
# 34423 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
NCO1ACCU equ 03F3Ah ;# 
# 34505 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
NCO1INC equ 03F3Bh ;# 
# 34512 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
NCO1INCL equ 03F3Bh ;# 
# 34640 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
NCO1INCH equ 03F3Ch ;# 
# 34768 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
NCO1INCU equ 03F3Dh ;# 
# 34848 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
NCO1CON equ 03F3Eh ;# 
# 34916 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
NCO1CLK equ 03F3Fh ;# 
# 35048 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CWG3CLK equ 03F40h ;# 
# 35053 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CWG3CLKCON equ 03F40h ;# 
# 35102 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CWG3ISM equ 03F41h ;# 
# 35107 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CWG3DAT equ 03F41h ;# 
# 35220 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CWG3DBR equ 03F42h ;# 
# 35324 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CWG3DBF equ 03F43h ;# 
# 35428 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CWG3CON0 equ 03F44h ;# 
# 35529 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CWG3CON1 equ 03F45h ;# 
# 35607 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CWG3AS0 equ 03F46h ;# 
# 35769 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CWG3AS1 equ 03F47h ;# 
# 35825 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CWG3STR equ 03F48h ;# 
# 35937 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CWG2CLK equ 03F49h ;# 
# 35942 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CWG2CLKCON equ 03F49h ;# 
# 35991 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CWG2ISM equ 03F4Ah ;# 
# 35996 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CWG2DAT equ 03F4Ah ;# 
# 36109 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CWG2DBR equ 03F4Bh ;# 
# 36213 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CWG2DBF equ 03F4Ch ;# 
# 36317 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CWG2CON0 equ 03F4Dh ;# 
# 36418 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CWG2CON1 equ 03F4Eh ;# 
# 36496 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CWG2AS0 equ 03F4Fh ;# 
# 36658 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CWG2AS1 equ 03F50h ;# 
# 36714 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CWG2STR equ 03F51h ;# 
# 36826 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CWG1CLK equ 03F52h ;# 
# 36831 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CWG1CLKCON equ 03F52h ;# 
# 36880 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CWG1ISM equ 03F53h ;# 
# 36885 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CWG1DAT equ 03F53h ;# 
# 36998 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CWG1DBR equ 03F54h ;# 
# 37102 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CWG1DBF equ 03F55h ;# 
# 37206 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CWG1CON0 equ 03F56h ;# 
# 37307 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CWG1CON1 equ 03F57h ;# 
# 37385 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CWG1AS0 equ 03F58h ;# 
# 37547 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CWG1AS1 equ 03F59h ;# 
# 37603 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CWG1STR equ 03F5Ah ;# 
# 37715 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CCPTMRS0 equ 03F5Eh ;# 
# 37803 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CCPTMRS1 equ 03F5Fh ;# 
# 37891 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PWM8DC equ 03F60h ;# 
# 37898 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PWM8DCL equ 03F60h ;# 
# 37964 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PWM8DCH equ 03F61h ;# 
# 38134 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PWM8CON equ 03F62h ;# 
# 38190 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PWM7DC equ 03F64h ;# 
# 38197 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PWM7DCL equ 03F64h ;# 
# 38263 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PWM7DCH equ 03F65h ;# 
# 38433 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PWM7CON equ 03F66h ;# 
# 38489 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PWM6DC equ 03F68h ;# 
# 38496 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PWM6DCL equ 03F68h ;# 
# 38562 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PWM6DCH equ 03F69h ;# 
# 38732 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PWM6CON equ 03F6Ah ;# 
# 38788 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PWM5DC equ 03F6Ch ;# 
# 38795 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PWM5DCL equ 03F6Ch ;# 
# 38861 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PWM5DCH equ 03F6Dh ;# 
# 39031 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PWM5CON equ 03F6Eh ;# 
# 39087 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CCPR4 equ 03F70h ;# 
# 39094 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CCPR4L equ 03F70h ;# 
# 39114 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CCPR4H equ 03F71h ;# 
# 39134 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CCP4CON equ 03F72h ;# 
# 39252 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CCP4CAP equ 03F73h ;# 
# 39320 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CCPR3 equ 03F74h ;# 
# 39327 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CCPR3L equ 03F74h ;# 
# 39347 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CCPR3H equ 03F75h ;# 
# 39367 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CCP3CON equ 03F76h ;# 
# 39485 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CCP3CAP equ 03F77h ;# 
# 39553 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CCPR2 equ 03F78h ;# 
# 39560 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CCPR2L equ 03F78h ;# 
# 39580 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CCPR2H equ 03F79h ;# 
# 39600 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CCP2CON equ 03F7Ah ;# 
# 39718 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CCP2CAP equ 03F7Bh ;# 
# 39786 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CCPR1 equ 03F7Ch ;# 
# 39793 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CCPR1L equ 03F7Ch ;# 
# 39813 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CCPR1H equ 03F7Dh ;# 
# 39833 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CCP1CON equ 03F7Eh ;# 
# 39951 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
CCP1CAP equ 03F7Fh ;# 
# 40019 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
T6TMR equ 03F92h ;# 
# 40024 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
TMR6 equ 03F92h ;# 
# 40057 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
T6PR equ 03F93h ;# 
# 40062 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PR6 equ 03F93h ;# 
# 40095 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
T6CON equ 03F94h ;# 
# 40241 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
T6HLT equ 03F95h ;# 
# 40369 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
T6CLKCON equ 03F96h ;# 
# 40374 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
T6CLK equ 03F96h ;# 
# 40527 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
T6RST equ 03F97h ;# 
# 40619 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
TMR5 equ 03F98h ;# 
# 40626 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
TMR5L equ 03F98h ;# 
# 40746 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
TMR5H equ 03F99h ;# 
# 40866 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
T5CON equ 03F9Ah ;# 
# 40871 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
TMR5CON equ 03F9Ah ;# 
# 41088 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
T5GCON equ 03F9Bh ;# 
# 41093 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
TMR5GCON equ 03F9Bh ;# 
# 41374 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
T5GATE equ 03F9Ch ;# 
# 41379 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
TMR5GATE equ 03F9Ch ;# 
# 41540 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
T5CLK equ 03F9Dh ;# 
# 41545 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
TMR5CLK equ 03F9Dh ;# 
# 41549 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PR5 equ 03F9Dh ;# 
# 41786 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
T4TMR equ 03F9Eh ;# 
# 41791 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
TMR4 equ 03F9Eh ;# 
# 41824 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
T4PR equ 03F9Fh ;# 
# 41829 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PR4 equ 03F9Fh ;# 
# 41862 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
T4CON equ 03FA0h ;# 
# 42008 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
T4HLT equ 03FA1h ;# 
# 42136 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
T4CLKCON equ 03FA2h ;# 
# 42141 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
T4CLK equ 03FA2h ;# 
# 42294 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
T4RST equ 03FA3h ;# 
# 42386 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
TMR3 equ 03FA4h ;# 
# 42393 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
TMR3L equ 03FA4h ;# 
# 42513 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
TMR3H equ 03FA5h ;# 
# 42633 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
T3CON equ 03FA6h ;# 
# 42638 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
TMR3CON equ 03FA6h ;# 
# 42855 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
T3GCON equ 03FA7h ;# 
# 42860 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
TMR3GCON equ 03FA7h ;# 
# 43141 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
T3GATE equ 03FA8h ;# 
# 43146 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
TMR3GATE equ 03FA8h ;# 
# 43307 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
T3CLK equ 03FA9h ;# 
# 43312 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
TMR3CLK equ 03FA9h ;# 
# 43316 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PR3 equ 03FA9h ;# 
# 43553 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
T2TMR equ 03FAAh ;# 
# 43558 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
TMR2 equ 03FAAh ;# 
# 43591 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
T2PR equ 03FABh ;# 
# 43596 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PR2 equ 03FABh ;# 
# 43629 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
T2CON equ 03FACh ;# 
# 43775 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
T2HLT equ 03FADh ;# 
# 43903 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
T2CLKCON equ 03FAEh ;# 
# 43908 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
T2CLK equ 03FAEh ;# 
# 44061 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
T2RST equ 03FAFh ;# 
# 44153 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
TMR1 equ 03FB0h ;# 
# 44160 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
TMR1L equ 03FB0h ;# 
# 44280 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
TMR1H equ 03FB1h ;# 
# 44400 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
T1CON equ 03FB2h ;# 
# 44405 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
TMR1CON equ 03FB2h ;# 
# 44622 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
T1GCON equ 03FB3h ;# 
# 44627 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
TMR1GCON equ 03FB3h ;# 
# 44908 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
T1GATE equ 03FB4h ;# 
# 44913 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
TMR1GATE equ 03FB4h ;# 
# 45074 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
T1CLK equ 03FB5h ;# 
# 45079 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
TMR1CLK equ 03FB5h ;# 
# 45083 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PR1 equ 03FB5h ;# 
# 45320 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
TMR0L equ 03FB6h ;# 
# 45325 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
TMR0 equ 03FB6h ;# 
# 45458 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
TMR0H equ 03FB7h ;# 
# 45463 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PR0 equ 03FB7h ;# 
# 45712 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
T0CON0 equ 03FB8h ;# 
# 45836 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
T0CON1 equ 03FB9h ;# 
# 45978 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
LATA equ 03FBAh ;# 
# 46090 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
LATB equ 03FBBh ;# 
# 46202 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
LATC equ 03FBCh ;# 
# 46314 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
LATD equ 03FBDh ;# 
# 46426 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
LATE equ 03FBEh ;# 
# 46478 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
TRISA equ 03FC2h ;# 
# 46540 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
TRISB equ 03FC3h ;# 
# 46602 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
TRISC equ 03FC4h ;# 
# 46664 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
TRISD equ 03FC5h ;# 
# 46726 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
TRISE equ 03FC6h ;# 
# 46758 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PORTA equ 03FCAh ;# 
# 46820 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PORTB equ 03FCBh ;# 
# 46882 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PORTC equ 03FCCh ;# 
# 46944 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PORTD equ 03FCDh ;# 
# 47006 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PORTE equ 03FCEh ;# 
# 47044 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
INTCON0 equ 03FD2h ;# 
# 47104 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
INTCON1 equ 03FD3h ;# 
# 47140 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
IVTLOCK equ 03FD4h ;# 
# 47162 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
IVTBASE equ 03FD5h ;# 
# 47169 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
IVTBASEL equ 03FD5h ;# 
# 47231 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
IVTBASEH equ 03FD6h ;# 
# 47293 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
IVTBASEU equ 03FD7h ;# 
# 47337 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
STATUS equ 03FD8h ;# 
# 47453 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
FSR2 equ 03FD9h ;# 
# 47460 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
FSR2L equ 03FD9h ;# 
# 47480 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
FSR2H equ 03FDAh ;# 
# 47500 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PLUSW2 equ 03FDBh ;# 
# 47520 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PREINC2 equ 03FDCh ;# 
# 47540 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
POSTDEC2 equ 03FDDh ;# 
# 47560 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
POSTINC2 equ 03FDEh ;# 
# 47580 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
INDF2 equ 03FDFh ;# 
# 47600 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
BSR equ 03FE0h ;# 
# 47620 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
FSR1 equ 03FE1h ;# 
# 47627 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
FSR1L equ 03FE1h ;# 
# 47647 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
FSR1H equ 03FE2h ;# 
# 47667 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PLUSW1 equ 03FE3h ;# 
# 47687 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PREINC1 equ 03FE4h ;# 
# 47707 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
POSTDEC1 equ 03FE5h ;# 
# 47727 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
POSTINC1 equ 03FE6h ;# 
# 47747 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
INDF1 equ 03FE7h ;# 
# 47767 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
WREG equ 03FE8h ;# 
# 47805 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
FSR0 equ 03FE9h ;# 
# 47812 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
FSR0L equ 03FE9h ;# 
# 47832 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
FSR0H equ 03FEAh ;# 
# 47852 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PLUSW0 equ 03FEBh ;# 
# 47872 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PREINC0 equ 03FECh ;# 
# 47892 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
POSTDEC0 equ 03FEDh ;# 
# 47912 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
POSTINC0 equ 03FEEh ;# 
# 47932 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
INDF0 equ 03FEFh ;# 
# 47952 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PCON0 equ 03FF0h ;# 
# 48105 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PCON1 equ 03FF1h ;# 
# 48144 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PROD equ 03FF3h ;# 
# 48151 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PRODL equ 03FF3h ;# 
# 48171 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PRODH equ 03FF4h ;# 
# 48191 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
TABLAT equ 03FF5h ;# 
# 48213 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
TBLPTR equ 03FF6h ;# 
# 48220 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
TBLPTRL equ 03FF6h ;# 
# 48240 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
TBLPTRH equ 03FF7h ;# 
# 48260 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
TBLPTRU equ 03FF8h ;# 
# 48282 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PCLAT equ 03FF9h ;# 
# 48289 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PCL equ 03FF9h ;# 
# 48309 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PCLATH equ 03FFAh ;# 
# 48329 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
PCLATU equ 03FFBh ;# 
# 48349 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
STKPTR equ 03FFCh ;# 
# 48435 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
TOS equ 03FFDh ;# 
# 48442 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
TOSL equ 03FFDh ;# 
# 48462 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
TOSH equ 03FFEh ;# 
# 48482 "D:/SSU/packs/Microchip/PIC18F-K_DFP/1.13.292/xc8\pic\include\proc\pic18f47k42.h"
TOSU equ 03FFFh ;# 
	debug_source C
	FNCALL	_main,_Display_Value
	FNCALL	_main,_Get_Value
	FNCALL	_main,_Init
	FNCALL	_Get_Value,_Display_Value
	FNROOT	_main
	FNCALL	intlevel2,_interrupt1_ISR
	global	intlevel2
	FNROOT	intlevel2
	global	_LED_value
psect	idataCOMRAM,class=CODE,space=0,delta=1,noexec
global __pidataCOMRAM
__pidataCOMRAM:
	file	"./Functions.h"
	line	25

;initializer for _LED_value
	db	low(03Fh)
	db	low(06h)
	db	low(05Bh)
	db	low(04Fh)
	db	low(066h)
	db	low(06Dh)
	db	low(07Dh)
	db	low(07h)
	db	low(07Fh)
	db	low(06Fh)
	file	"Interfacing_Sensors.c"
	line	40

;initializer for _secretcode2
	dw	(01h)&0ffffh

;initializer for _secretcode1
	dw	(01h)&0ffffh
	global	_value2
	global	_tempval
	global	_value1
psect	nvCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pnvCOMRAM
__pnvCOMRAM:
	global	_value1
_value1:
       ds      2
	global	_PORTAbits
_PORTAbits	set	0x3FCA
	global	_PORTBbits
_PORTBbits	set	0x3FCB
	global	_IPR1bits
_IPR1bits	set	0x3981
	global	_ANSELA
_ANSELA	set	0x3A40
	global	_PORTA
_PORTA	set	0x3FCA
	global	_PORTD
_PORTD	set	0x3FCD
	global	_PORTB
_PORTB	set	0x3FCB
	global	_ANSELB
_ANSELB	set	0x3A50
	global	_LATA
_LATA	set	0x3FBA
	global	_LATD
_LATD	set	0x3FBD
	global	_LATB
_LATB	set	0x3FBB
	global	_TRISA
_TRISA	set	0x3FC2
	global	_TRISD
_TRISD	set	0x3FC5
	global	_TRISB
_TRISB	set	0x3FC3
	global	_ANSELD
_ANSELD	set	0x3A70
	global	_WPUB
_WPUB	set	0x3A51
	global	_INTCON0
_INTCON0	set	0x3FD2
	global	_PIE1bits
_PIE1bits	set	0x3991
	global	_PIR1bits
_PIR1bits	set	0x39A1
	global	_IVTBASEL
_IVTBASEL	set	0x3FD5
	global	_IVTBASEH
_IVTBASEH	set	0x3FD6
	global	_IVTBASEU
_IVTBASEU	set	0x3FD7
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config FEXTOSC = "LP"
	config RSTOSC = "EXTOSC"
	config CLKOUTEN = "OFF"
	config PR1WAY = "ON"
	config CSWEN = "ON"
	config FCMEN = "ON"
	config MCLRE = "EXTMCLR"
	config PWRTS = "PWRT_OFF"
	config MVECEN = "ON"
	config IVT1WAY = "ON"
	config LPBOREN = "OFF"
	config BOREN = "SBORDIS"
	config BORV = "VBOR_2P45"
	config ZCD = "OFF"
	config PPS1WAY = "ON"
	config STVREN = "ON"
	config DEBUG = "OFF"
	config XINST = "OFF"
	config WDTCPS = "WDTCPS_31"
	config WDTE = "OFF"
	config WDTCWS = "WDTCWS_7"
	config WDTCCS = "SC"
	config BBSIZE = "BBSIZE_512"
	config BBEN = "OFF"
	config SAFEN = "OFF"
	config WRTAPP = "OFF"
	config WRTB = "OFF"
	config WRTC = "OFF"
	config WRTD = "OFF"
	config WRTSAF = "OFF"
	config LVP = "ON"
	config CP = "OFF"
	file	"dist/default/production\Interfacing_Sensors.X.production.s"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pbssCOMRAM
__pbssCOMRAM:
	global	_value2
_value2:
       ds      2
	global	_tempval
_tempval:
       ds      2
	global	_temp
	global	_temp
_temp:
       ds      2
psect	dataCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pdataCOMRAM
__pdataCOMRAM:
	file	"./Functions.h"
	line	25
	global	_LED_value
_LED_value:
       ds      10
psect	dataCOMRAM
	file	"Interfacing_Sensors.c"
	line	40
	global	_secretcode2
_secretcode2:
       ds      2
psect	dataCOMRAM
	file	"Interfacing_Sensors.c"
	line	40
	global	_secretcode1
_secretcode1:
       ds      2
	file	"dist/default/production\Interfacing_Sensors.X.production.s"
	line	#
psect	cinit
; Initialize objects allocated to COMRAM (14 bytes)
	global __pidataCOMRAM
	; load TBLPTR registers with __pidataCOMRAM
	movlw	low (__pidataCOMRAM)
	movwf	tblptrl
	movlw	high(__pidataCOMRAM)
	movwf	tblptrh
	movlw	low highword(__pidataCOMRAM)
	movwf	tblptru
	lfsr	0,__pdataCOMRAM
	lfsr	1,14
	copy_data0:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data0
	line	#
; Clear objects allocated to COMRAM (6 bytes)
	global __pbssCOMRAM
clrf	(__pbssCOMRAM+5)&0xffh,c
clrf	(__pbssCOMRAM+4)&0xffh,c
clrf	(__pbssCOMRAM+3)&0xffh,c
clrf	(__pbssCOMRAM+2)&0xffh,c
clrf	(__pbssCOMRAM+1)&0xffh,c
clrf	(__pbssCOMRAM+0)&0xffh,c
;
; Setup IVTBASE
;
global  IVTBASEL, IVTBASEH, IVTBASEU
IVTBASEL equ 0x3FD5
IVTBASEH equ 0x3FD6
IVTBASEU equ 0x3FD7
	movlw	(ivt0x4008_base >> 0) & 0xff
	movwf	(IVTBASEL & 0xff),c
	movlw	(ivt0x4008_base >> 8) & 0xff
	movwf	(IVTBASEH & 0xff),c
	movlw	(ivt0x4008_base >> 16) & 0xff
	movwf	(IVTBASEU & 0xff),c
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pcstackCOMRAM
__pcstackCOMRAM:
?_Init:	; 1 bytes @ 0x0
?_interrupt1_ISR:	; 1 bytes @ 0x0
??_interrupt1_ISR:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
	ds   2
?_Display_Value:	; 1 bytes @ 0x2
??_Init:	; 1 bytes @ 0x2
	global	Display_Value@display_input
Display_Value@display_input:	; 2 bytes @ 0x2
	ds   2
??_Display_Value:	; 1 bytes @ 0x4
	global	?_Get_Value
?_Get_Value:	; 2 bytes @ 0x4
	global	Get_Value@input
Get_Value@input:	; 2 bytes @ 0x4
	ds   2
??_Get_Value:	; 1 bytes @ 0x6
	ds   2
	global	Get_Value@temp1
Get_Value@temp1:	; 2 bytes @ 0x8
	ds   2
	global	Get_Value@temp2
Get_Value@temp2:	; 2 bytes @ 0xA
	ds   2
??_main:	; 1 bytes @ 0xC
	ds   2
	global	main@count
main@count:	; 2 bytes @ 0xE
	ds   2
	global	main@count_224
main@count_224:	; 2 bytes @ 0x10
	ds   2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        14
;!    BSS         6
;!    Persistent  2
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95     18      40
;!    BANK0           160      0       0
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0
;!    BANK6           256      0       0
;!    BANK7           256      0       0
;!    BANK8           256      0       0
;!    BANK9           256      0       0
;!    BANK10          256      0       0
;!    BANK11          256      0       0
;!    BANK12          256      0       0
;!    BANK13          256      0       0
;!    BANK14          256      0       0
;!    BANK15          256      0       0
;!    BANK16          256      0       0
;!    BANK17          256      0       0
;!    BANK18          256      0       0
;!    BANK19          256      0       0
;!    BANK20          256      0       0
;!    BANK21          256      0       0
;!    BANK22          256      0       0
;!    BANK23          256      0       0
;!    BANK24          256      0       0
;!    BANK25          256      0       0
;!    BANK26          256      0       0
;!    BANK27          256      0       0
;!    BANK28          256      0       0
;!    BANK29          256      0       0
;!    BANK30          256      0       0
;!    BANK31          256      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_Get_Value
;!    _Get_Value->_Display_Value
;!
;!Critical Paths under _interrupt1_ISR in COMRAM
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _interrupt1_ISR in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _interrupt1_ISR in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _interrupt1_ISR in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _interrupt1_ISR in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _interrupt1_ISR in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _interrupt1_ISR in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _interrupt1_ISR in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.
;!
;!Critical Paths under _interrupt1_ISR in BANK7
;!
;!    None.
;!
;!Critical Paths under _main in BANK8
;!
;!    None.
;!
;!Critical Paths under _interrupt1_ISR in BANK8
;!
;!    None.
;!
;!Critical Paths under _main in BANK9
;!
;!    None.
;!
;!Critical Paths under _interrupt1_ISR in BANK9
;!
;!    None.
;!
;!Critical Paths under _main in BANK10
;!
;!    None.
;!
;!Critical Paths under _interrupt1_ISR in BANK10
;!
;!    None.
;!
;!Critical Paths under _main in BANK11
;!
;!    None.
;!
;!Critical Paths under _interrupt1_ISR in BANK11
;!
;!    None.
;!
;!Critical Paths under _main in BANK12
;!
;!    None.
;!
;!Critical Paths under _interrupt1_ISR in BANK12
;!
;!    None.
;!
;!Critical Paths under _main in BANK13
;!
;!    None.
;!
;!Critical Paths under _interrupt1_ISR in BANK13
;!
;!    None.
;!
;!Critical Paths under _main in BANK14
;!
;!    None.
;!
;!Critical Paths under _interrupt1_ISR in BANK14
;!
;!    None.
;!
;!Critical Paths under _main in BANK15
;!
;!    None.
;!
;!Critical Paths under _interrupt1_ISR in BANK15
;!
;!    None.
;!
;!Critical Paths under _main in BANK16
;!
;!    None.
;!
;!Critical Paths under _interrupt1_ISR in BANK16
;!
;!    None.
;!
;!Critical Paths under _main in BANK17
;!
;!    None.
;!
;!Critical Paths under _interrupt1_ISR in BANK17
;!
;!    None.
;!
;!Critical Paths under _main in BANK18
;!
;!    None.
;!
;!Critical Paths under _interrupt1_ISR in BANK18
;!
;!    None.
;!
;!Critical Paths under _main in BANK19
;!
;!    None.
;!
;!Critical Paths under _interrupt1_ISR in BANK19
;!
;!    None.
;!
;!Critical Paths under _main in BANK20
;!
;!    None.
;!
;!Critical Paths under _interrupt1_ISR in BANK20
;!
;!    None.
;!
;!Critical Paths under _main in BANK21
;!
;!    None.
;!
;!Critical Paths under _interrupt1_ISR in BANK21
;!
;!    None.
;!
;!Critical Paths under _main in BANK22
;!
;!    None.
;!
;!Critical Paths under _interrupt1_ISR in BANK22
;!
;!    None.
;!
;!Critical Paths under _main in BANK23
;!
;!    None.
;!
;!Critical Paths under _interrupt1_ISR in BANK23
;!
;!    None.
;!
;!Critical Paths under _main in BANK24
;!
;!    None.
;!
;!Critical Paths under _interrupt1_ISR in BANK24
;!
;!    None.
;!
;!Critical Paths under _main in BANK25
;!
;!    None.
;!
;!Critical Paths under _interrupt1_ISR in BANK25
;!
;!    None.
;!
;!Critical Paths under _main in BANK26
;!
;!    None.
;!
;!Critical Paths under _interrupt1_ISR in BANK26
;!
;!    None.
;!
;!Critical Paths under _main in BANK27
;!
;!    None.
;!
;!Critical Paths under _interrupt1_ISR in BANK27
;!
;!    None.
;!
;!Critical Paths under _main in BANK28
;!
;!    None.
;!
;!Critical Paths under _interrupt1_ISR in BANK28
;!
;!    None.
;!
;!Critical Paths under _main in BANK29
;!
;!    None.
;!
;!Critical Paths under _interrupt1_ISR in BANK29
;!
;!    None.
;!
;!Critical Paths under _main in BANK30
;!
;!    None.
;!
;!Critical Paths under _interrupt1_ISR in BANK30
;!
;!    None.
;!
;!Critical Paths under _main in BANK31
;!
;!    None.
;!
;!Critical Paths under _interrupt1_ISR in BANK31
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 6     6      0    1012
;!                                             12 COMRAM     6     6      0
;!                      _Display_Value
;!                          _Get_Value
;!                               _Init
;! ---------------------------------------------------------------------------------
;! (1) _Init                                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Get_Value                                            8     6      2     594
;!                                              4 COMRAM     8     6      2
;!                      _Display_Value
;! ---------------------------------------------------------------------------------
;! (2) _Display_Value                                        2     0      2     326
;!                                              2 COMRAM     2     0      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (3) _interrupt1_ISR                                       2     2      0       0
;!                                              0 COMRAM     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Display_Value
;!   _Get_Value
;!     _Display_Value
;!   _Init
;!
;! _interrupt1_ISR (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM            1FFF      0       0      84        0.0%
;!BITBIGSFRlhlhh     549      0       0      77        0.0%
;!EEDATA             400      0       0       0        0.0%
;!BITBIGSFRlll       181      0       0      83        0.0%
;!BITBANK31          100      0       0      67        0.0%
;!BANK31             100      0       0      68        0.0%
;!BITBANK30          100      0       0      65        0.0%
;!BANK30             100      0       0      66        0.0%
;!BITBANK29          100      0       0      63        0.0%
;!BANK29             100      0       0      64        0.0%
;!BITBANK28          100      0       0      61        0.0%
;!BANK28             100      0       0      62        0.0%
;!BITBANK27          100      0       0      59        0.0%
;!BANK27             100      0       0      60        0.0%
;!BITBANK26          100      0       0      57        0.0%
;!BANK26             100      0       0      58        0.0%
;!BITBANK25          100      0       0      55        0.0%
;!BANK25             100      0       0      56        0.0%
;!BITBANK24          100      0       0      53        0.0%
;!BANK24             100      0       0      54        0.0%
;!BITBANK23          100      0       0      51        0.0%
;!BANK23             100      0       0      52        0.0%
;!BITBANK22          100      0       0      49        0.0%
;!BANK22             100      0       0      50        0.0%
;!BITBANK21          100      0       0      47        0.0%
;!BANK21             100      0       0      48        0.0%
;!BITBANK20          100      0       0      45        0.0%
;!BANK20             100      0       0      46        0.0%
;!BITBANK19          100      0       0      43        0.0%
;!BANK19             100      0       0      44        0.0%
;!BITBANK18          100      0       0      41        0.0%
;!BANK18             100      0       0      42        0.0%
;!BITBANK17          100      0       0      39        0.0%
;!BANK17             100      0       0      40        0.0%
;!BITBANK16          100      0       0      37        0.0%
;!BANK16             100      0       0      38        0.0%
;!BITBANK15          100      0       0      35        0.0%
;!BANK15             100      0       0      36        0.0%
;!BITBANK14          100      0       0      33        0.0%
;!BANK14             100      0       0      34        0.0%
;!BITBANK13          100      0       0      31        0.0%
;!BANK13             100      0       0      32        0.0%
;!BITBANK12          100      0       0      28        0.0%
;!BANK12             100      0       0      29        0.0%
;!BITBANK11          100      0       0      26        0.0%
;!BANK11             100      0       0      27        0.0%
;!BITBANK10          100      0       0      24        0.0%
;!BANK10             100      0       0      25        0.0%
;!BITBANK9           100      0       0      22        0.0%
;!BANK9              100      0       0      23        0.0%
;!BITBANK8           100      0       0      20        0.0%
;!BANK8              100      0       0      21        0.0%
;!BITBANK7           100      0       0      18        0.0%
;!BANK7              100      0       0      19        0.0%
;!BITBANK6           100      0       0      16        0.0%
;!BANK6              100      0       0      17        0.0%
;!BITBANK5           100      0       0      14        0.0%
;!BANK5              100      0       0      15        0.0%
;!BITBANK4           100      0       0      12        0.0%
;!BANK4              100      0       0      13        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0       0      11        0.0%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0       0       9        0.0%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100      0       0       7        0.0%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0      0       0       5        0.0%
;!BITBIGSFRllhhh      9E      0       0      80        0.0%
;!BITCOMRAM           5F      0       0       0        0.0%
;!COMRAM              5F     12      28       1       42.1%
;!BITBIGSFRhhhh       28      0       0      69        0.0%
;!BITBIGSFRlhlhl      1E      0       0      78        0.0%
;!BITBIGSFRllhhl       F      0       0      81        0.0%
;!BITBIGSFRllhl        F      0       0      82        0.0%
;!BITBIGSFRlhll        F      0       0      79        0.0%
;!BITBIGSFRlhhhh       4      0       0      73        0.0%
;!BITBIGSFRlhhlh       4      0       0      75        0.0%
;!BITBIGSFRhhl         4      0       0      71        0.0%
;!BITBIGSFRhhhl        2      0       0      70        0.0%
;!BITBIGSFRlhhhl       1      0       0      74        0.0%
;!BITBIGSFRlhhll       1      0       0      76        0.0%
;!BITBIGSFRhl          1      0       0      72        0.0%
;!BIGSFR               0      0       0     200        0.0%
;!BITSFR_8             0      0       0     200        0.0%
;!SFR_8                0      0       0     200        0.0%
;!BITSFR_7             0      0       0     200        0.0%
;!SFR_7                0      0       0     200        0.0%
;!BITSFR_6             0      0       0     200        0.0%
;!SFR_6                0      0       0     200        0.0%
;!BITSFR_5             0      0       0     200        0.0%
;!SFR_5                0      0       0     200        0.0%
;!BITSFR_4             0      0       0     200        0.0%
;!SFR_4                0      0       0     200        0.0%
;!BITSFR_3             0      0       0     200        0.0%
;!SFR_3                0      0       0     200        0.0%
;!BITSFR_2             0      0       0     200        0.0%
;!SFR_2                0      0       0     200        0.0%
;!BITSFR_1             0      0       0     200        0.0%
;!SFR_1                0      0       0     200        0.0%
;!BITSFR               0      0       0     200        0.0%
;!SFR                  0      0       0     200        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      28      30        0.0%
;!DATA                 0      0      28       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 42 in file "Interfacing_Sensors.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           2   16[COMRAM] int 
;;  count           2   14[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_Display_Value
;;		_Get_Value
;;		_Init
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	_main_text,class=CODE,space=0,ovrld,reloc=2,group=0
	file	"Interfacing_Sensors.c"
	line	42
global __p_main_text
__p_main_text:
psect	_main_text
	file	"Interfacing_Sensors.c"
	line	42
	
_main:
;incstack = 0
	callstack 28
	global _main_absaddr
	_main_absaddr equ 0x90
	line	44
	
l911:
;Interfacing_Sensors.c: 44:     Init();
	call	_Init	;wreg free
	line	46
	
l913:
;Interfacing_Sensors.c: 46:     value1 = Get_Value(tempval);
	movff	(c:_tempval),(c:Get_Value@input)
	movff	(c:_tempval+1),(c:Get_Value@input+1)
	call	_Get_Value	;wreg free
	movff	0+?_Get_Value,(c:_value1)
	movff	1+?_Get_Value,(c:_value1+1)
	line	47
	
l915:
;Interfacing_Sensors.c: 47:     tempval++;
	infsnz	((c:_tempval))^00h,c
	incf	((c:_tempval+1))^00h,c
	line	48
	
l917:
;Interfacing_Sensors.c: 48:     Display_Value(value1);
	movff	(c:_value1),(c:Display_Value@display_input)
	movff	(c:_value1+1),(c:Display_Value@display_input+1)
	call	_Display_Value	;wreg free
	line	49
	
l919:
;Interfacing_Sensors.c: 49:     _delay((unsigned long)((2000)*(4000000/4000.0)));
	asmopt push
asmopt off
movlw  11
movwf	(??_main+0+0+1)^00h,c
movlw	38
movwf	(??_main+0+0)^00h,c
	movlw	94
u247:
decfsz	wreg,f
	bra	u247
	decfsz	(??_main+0+0)^00h,c,f
	bra	u247
	decfsz	(??_main+0+0+1)^00h,c,f
	bra	u247
asmopt pop

	line	50
	
l921:
;Interfacing_Sensors.c: 50:     value2 = Get_Value(tempval);
	movff	(c:_tempval),(c:Get_Value@input)
	movff	(c:_tempval+1),(c:Get_Value@input+1)
	call	_Get_Value	;wreg free
	movff	0+?_Get_Value,(c:_value2)
	movff	1+?_Get_Value,(c:_value2+1)
	line	51
	
l923:
;Interfacing_Sensors.c: 51:     tempval--;
	decf	((c:_tempval))^00h,c
	btfss	status,0
	decf	((c:_tempval+1))^00h,c
	line	52
	
l925:
;Interfacing_Sensors.c: 52:     Display_Value(value2);
	movff	(c:_value2),(c:Display_Value@display_input)
	movff	(c:_value2+1),(c:Display_Value@display_input+1)
	call	_Display_Value	;wreg free
	line	53
	
l927:
;Interfacing_Sensors.c: 53:     _delay((unsigned long)((2000)*(4000000/4000.0)));
	asmopt push
asmopt off
movlw  11
movwf	(??_main+0+0+1)^00h,c
movlw	38
movwf	(??_main+0+0)^00h,c
	movlw	94
u257:
decfsz	wreg,f
	bra	u257
	decfsz	(??_main+0+0)^00h,c,f
	bra	u257
	decfsz	(??_main+0+0+1)^00h,c,f
	bra	u257
asmopt pop

	line	54
	
l929:
;Interfacing_Sensors.c: 54:     if (value1 == secretcode1 && value2 == secretcode2){
		decf	((c:_value1))^00h,c,w
iorwf	((c:_value1+1))^00h,c,w
	btfss	status,2
	goto	u181
	goto	u180

u181:
	goto	l951
u180:
	
l931:
		decf	((c:_value2))^00h,c,w
iorwf	((c:_value2+1))^00h,c,w
	btfss	status,2
	goto	u191
	goto	u190

u191:
	goto	l951
u190:
	line	55
	
l933:
;Interfacing_Sensors.c: 55:         PORTAbits.RA5 = 1;
	bsf	((c:16330))^03f00h,c,5	;volatile
	line	56
	
l935:
;Interfacing_Sensors.c: 56:         for (int count = 0; count <= 5; count++){
	movlw	high(0)
	movwf	((c:main@count+1))^00h,c
	movlw	low(0)
	movwf	((c:main@count))^00h,c
	
l98:
	line	57
;Interfacing_Sensors.c: 57:             PORTBbits.RB2 = 1;
	bsf	((c:16331))^03f00h,c,2	;volatile
	line	58
	
l941:
;Interfacing_Sensors.c: 58:             _delay((unsigned long)((1200)*(4000000/4000.0)));
	asmopt push
asmopt off
movlw  7
movwf	(??_main+0+0+1)^00h,c
movlw	23
movwf	(??_main+0+0)^00h,c
	movlw	106
u267:
decfsz	wreg,f
	bra	u267
	decfsz	(??_main+0+0)^00h,c,f
	bra	u267
	decfsz	(??_main+0+0+1)^00h,c,f
	bra	u267
	nop2
asmopt pop

	line	60
	
l943:
;Interfacing_Sensors.c: 60:             PORTBbits.RB2 = ~PORTBbits.RB2;
	btfsc	((c:16331))^03f00h,c,2	;volatile
	goto	u201
	goto	u200
u201:
	movlw	1
	goto	u206
u200:
	movlw	0
u206:
	xorlw	0ffh
	movwf	(??_main+0+0)^00h,c
	rlncf	((??_main+0+0))^00h,c
	rlncf	((??_main+0+0))^00h,c
	movf	((c:16331))^03f00h,c,w	;volatile
	xorwf	((??_main+0+0))^00h,c,w
	andlw	not (((1<<1)-1)<<2)
	xorwf	((??_main+0+0))^00h,c,w
	movwf	((c:16331))^03f00h,c	;volatile
	line	61
	
l945:
;Interfacing_Sensors.c: 61:             _delay((unsigned long)((1200)*(4000000/4000.0)));
	asmopt push
asmopt off
movlw  7
movwf	(??_main+0+0+1)^00h,c
movlw	23
movwf	(??_main+0+0)^00h,c
	movlw	106
u277:
decfsz	wreg,f
	bra	u277
	decfsz	(??_main+0+0)^00h,c,f
	bra	u277
	decfsz	(??_main+0+0+1)^00h,c,f
	bra	u277
	nop2
asmopt pop

	line	62
	
l947:
;Interfacing_Sensors.c: 62:         }
	infsnz	((c:main@count))^00h,c
	incf	((c:main@count+1))^00h,c
	
l949:
	btfsc	((c:main@count+1))^00h,c,7
	goto	u211
	movf	((c:main@count+1))^00h,c,w
	bnz	u210
	movlw	6
	subwf	 ((c:main@count))^00h,c,w
	btfss	status,0
	goto	u211
	goto	u210

u211:
	goto	l98
u210:
	
l99:
	line	63
;Interfacing_Sensors.c: 63:         PORTAbits.RA5 = 0;
	bcf	((c:16330))^03f00h,c,5	;volatile
	line	64
;Interfacing_Sensors.c: 64:     }
	goto	l103
	line	66
	
l951:
;Interfacing_Sensors.c: 66:         for (int count = 0; count <= 5; count++) {
	movlw	high(0)
	movwf	((c:main@count_224+1))^00h,c
	movlw	low(0)
	movwf	((c:main@count_224))^00h,c
	line	67
	
l957:
;Interfacing_Sensors.c: 67:             PORTBbits.RB3 = ~PORTBbits.RB3;
	btfsc	((c:16331))^03f00h,c,3	;volatile
	goto	u221
	goto	u220
u221:
	movlw	1
	goto	u226
u220:
	movlw	0
u226:
	xorlw	0ffh
	movwf	(??_main+0+0)^00h,c
	rlncf	((??_main+0+0))^00h,c
	rlncf	((??_main+0+0))^00h,c
	rlncf	((??_main+0+0))^00h,c
	movf	((c:16331))^03f00h,c,w	;volatile
	xorwf	((??_main+0+0))^00h,c,w
	andlw	not (((1<<1)-1)<<3)
	xorwf	((??_main+0+0))^00h,c,w
	movwf	((c:16331))^03f00h,c	;volatile
	line	68
	
l959:
;Interfacing_Sensors.c: 68:             _delay((unsigned long)((500)*(4000000/4000.0)));
	asmopt push
asmopt off
movlw  3
movwf	(??_main+0+0+1)^00h,c
movlw	138
movwf	(??_main+0+0)^00h,c
	movlw	86
u287:
decfsz	wreg,f
	bra	u287
	decfsz	(??_main+0+0)^00h,c,f
	bra	u287
	decfsz	(??_main+0+0+1)^00h,c,f
	bra	u287
asmopt pop

	line	69
;Interfacing_Sensors.c: 69:         }
	infsnz	((c:main@count_224))^00h,c
	incf	((c:main@count_224+1))^00h,c
	
l961:
	btfsc	((c:main@count_224+1))^00h,c,7
	goto	u231
	movf	((c:main@count_224+1))^00h,c,w
	bnz	u230
	movlw	6
	subwf	 ((c:main@count_224))^00h,c,w
	btfss	status,0
	goto	u231
	goto	u230

u231:
	goto	l957
u230:
	line	72
	
l103:
	global	start
	goto	start
	callstack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_Init

;; *************** function _Init *****************
;; Defined at:
;;		line 20 in file "./Initialization.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2,group=0
	file	"./Initialization.h"
	line	20
global __ptext1
__ptext1:
psect	text1
	file	"./Initialization.h"
	line	20
	
_Init:
;incstack = 0
	callstack 29
	line	23
	
l783:
;./Initialization.h: 23:         PORTA = 0x0;
	movlw	low(0)
	movwf	((c:16330))^03f00h,c	;volatile
	line	24
;./Initialization.h: 24:         ANSELA = 0x0;
	movlw	low(0)
	movlb	58	; () banked
	movwf	((14912))&0ffh	;volatile
	line	25
;./Initialization.h: 25:         LATA = 0x0;
	movlw	low(0)
	movwf	((c:16314))^03f00h,c	;volatile
	line	26
;./Initialization.h: 26:         TRISA = 0x03;
	movlw	low(03h)
	movwf	((c:16322))^03f00h,c	;volatile
	line	28
;./Initialization.h: 28:         PORTA = 0x0;
	movlw	low(0)
	movwf	((c:16330))^03f00h,c	;volatile
	line	31
;./Initialization.h: 31:         PORTB = 0x0;
	movlw	low(0)
	movwf	((c:16331))^03f00h,c	;volatile
	line	32
;./Initialization.h: 32:         ANSELB = 0x0;
	movlw	low(0)
	movwf	((14928))&0ffh	;volatile
	line	33
;./Initialization.h: 33:         LATB = 0x0;
	movlw	low(0)
	movwf	((c:16315))^03f00h,c	;volatile
	line	34
;./Initialization.h: 34:         TRISB = 0x03;
	movlw	low(03h)
	movwf	((c:16323))^03f00h,c	;volatile
	line	35
;./Initialization.h: 35:         WPUB = 0x03;
	movlw	low(03h)
	movwf	((14929))&0ffh	;volatile
	line	36
;./Initialization.h: 36:         PORTB = 0x0;
	movlw	low(0)
	movwf	((c:16331))^03f00h,c	;volatile
	line	39
;./Initialization.h: 39:         PORTD = 0x0;
	movlw	low(0)
	movwf	((c:16333))^03f00h,c	;volatile
	line	40
;./Initialization.h: 40:         ANSELD = 0x0;
	movlw	low(0)
	movwf	((14960))&0ffh	;volatile
	line	41
;./Initialization.h: 41:         LATD = 0x0;
	movlw	low(0)
	movwf	((c:16317))^03f00h,c	;volatile
	line	42
;./Initialization.h: 42:         TRISD = 0x0;
	movlw	low(0)
	movwf	((c:16325))^03f00h,c	;volatile
	line	45
	
l785:; BSR set to: 58

;./Initialization.h: 45:         IPR1bits.INT0IP = 1;
	movlb	57	; () banked
	bsf	((14721))&0ffh,0	;volatile
	line	46
	
l787:; BSR set to: 57

;./Initialization.h: 46:         PIE1bits.INT0IE = 1;
	bsf	((14737))&0ffh,0	;volatile
	line	47
	
l789:; BSR set to: 57

;./Initialization.h: 47:         PIR1bits.INT0IF = 0;
	bcf	((14753))&0ffh,0	;volatile
	line	48
;./Initialization.h: 48:         INTCON0 = 0xE7;
	movlw	low(0E7h)
	movwf	((c:16338))^03f00h,c	;volatile
	line	49
;./Initialization.h: 49:         IVTBASEU = 0x00;
	movlw	low(0)
	movwf	((c:16343))^03f00h,c	;volatile
	line	50
;./Initialization.h: 50:         IVTBASEH = 0x40;
	movlw	low(040h)
	movwf	((c:16342))^03f00h,c	;volatile
	line	51
;./Initialization.h: 51:         IVTBASEL = 0x08;
	movlw	low(08h)
	movwf	((c:16341))^03f00h,c	;volatile
	line	54
	
l51:; BSR set to: 57

	return	;funcret
	callstack 0
GLOBAL	__end_of_Init
	__end_of_Init:
	signat	_Init,89
	global	_Get_Value

;; *************** function _Get_Value *****************
;; Defined at:
;;		line 40 in file "./Functions.h"
;; Parameters:    Size  Location     Type
;;  input           2    4[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  temp2           2   10[COMRAM] int 
;;  temp1           2    8[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  2    4[COMRAM] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_Display_Value
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2,group=0
	file	"./Functions.h"
	line	40
global __ptext2
__ptext2:
psect	text2
	file	"./Functions.h"
	line	40
	
_Get_Value:; BSR set to: 57

;incstack = 0
	callstack 28
	line	41
	
l885:
	line	42
;./Functions.h: 42:     int temp2 = 1;
	movlw	high(01h)
	movwf	((c:Get_Value@temp2+1))^00h,c
	movlw	low(01h)
	movwf	((c:Get_Value@temp2))^00h,c
	line	43
;./Functions.h: 43:     while(1){
	
l64:
	line	44
;./Functions.h: 44:         temp1 = 0;
	movlw	high(0)
	movwf	((c:Get_Value@temp1+1))^00h,c
	movlw	low(0)
	movwf	((c:Get_Value@temp1))^00h,c
	line	45
	
l887:
;./Functions.h: 45:         if (input == 0) {
	movf	((c:Get_Value@input))^00h,c,w
iorwf	((c:Get_Value@input+1))^00h,c,w
	btfss	status,2
	goto	u131
	goto	u130

u131:
	goto	l901
u130:
	goto	l66
	line	47
	
l891:
;./Functions.h: 47:                 Display_Value(temp1);
	movff	(c:Get_Value@temp1),(c:Display_Value@display_input)
	movff	(c:Get_Value@temp1+1),(c:Display_Value@display_input+1)
	call	_Display_Value	;wreg free
	line	48
	
l893:
;./Functions.h: 48:                 if (PORTAbits.RA0 == 1) {
	btfss	((c:16330))^03f00h,c,0	;volatile
	goto	u141
	goto	u140
u141:
	goto	l68
u140:
	line	49
	
l895:
;./Functions.h: 49:                     temp1++;
	infsnz	((c:Get_Value@temp1))^00h,c
	incf	((c:Get_Value@temp1+1))^00h,c
	line	50
	
l897:
;./Functions.h: 50:                     _delay((unsigned long)((2000)*(4000000/4000.0)));
	asmopt push
asmopt off
movlw  11
movwf	(??_Get_Value+0+0+1)^00h,c
movlw	38
movwf	(??_Get_Value+0+0)^00h,c
	movlw	94
u297:
decfsz	wreg,f
	bra	u297
	decfsz	(??_Get_Value+0+0)^00h,c,f
	bra	u297
	decfsz	(??_Get_Value+0+0+1)^00h,c,f
	bra	u297
asmopt pop

	line	51
;./Functions.h: 51:                 }
	goto	l66
	line	52
;./Functions.h: 52:                 else {
	
l68:
	line	53
# 53 "./Functions.h"
NOP ;# 
psect	text2
	line	55
;./Functions.h: 55:             }
	
l66:
	line	46
;./Functions.h: 46:             while(PORTBbits.RB1 == 1) {
	btfsc	((c:16331))^03f00h,c,1	;volatile
	goto	u151
	goto	u150
u151:
	goto	l891
u150:
	
l70:
	line	56
;./Functions.h: 56:             return temp1;
	movff	(c:Get_Value@temp1),(c:?_Get_Value)
	movff	(c:Get_Value@temp1+1),(c:?_Get_Value+1)
	goto	l71
	line	59
	
l901:
;./Functions.h: 59:             temp2 = 0;
	movlw	high(0)
	movwf	((c:Get_Value@temp2+1))^00h,c
	movlw	low(0)
	movwf	((c:Get_Value@temp2))^00h,c
	line	60
;./Functions.h: 60:             while(PORTBbits.RB1 == 1) {
	goto	l73
	line	61
	
l903:
;./Functions.h: 61:                 Display_Value(temp2);
	movff	(c:Get_Value@temp2),(c:Display_Value@display_input)
	movff	(c:Get_Value@temp2+1),(c:Display_Value@display_input+1)
	call	_Display_Value	;wreg free
	line	62
	
l905:
;./Functions.h: 62:                 if (PORTAbits.RA1 == 1) {
	btfss	((c:16330))^03f00h,c,1	;volatile
	goto	u161
	goto	u160
u161:
	goto	l75
u160:
	line	63
	
l907:
;./Functions.h: 63:                     temp2++;
	infsnz	((c:Get_Value@temp2))^00h,c
	incf	((c:Get_Value@temp2+1))^00h,c
	line	64
	
l909:
;./Functions.h: 64:                     _delay((unsigned long)((2000)*(4000000/4000.0)));
	asmopt push
asmopt off
movlw  11
movwf	(??_Get_Value+0+0+1)^00h,c
movlw	38
movwf	(??_Get_Value+0+0)^00h,c
	movlw	94
u307:
decfsz	wreg,f
	bra	u307
	decfsz	(??_Get_Value+0+0)^00h,c,f
	bra	u307
	decfsz	(??_Get_Value+0+0+1)^00h,c,f
	bra	u307
asmopt pop

	line	65
;./Functions.h: 65:                 }
	goto	l73
	line	66
;./Functions.h: 66:                 else {
	
l75:
	line	67
# 67 "./Functions.h"
NOP ;# 
psect	text2
	line	69
;./Functions.h: 69:             }
	
l73:
	line	60
;./Functions.h: 60:             while(PORTBbits.RB1 == 1) {
	btfsc	((c:16331))^03f00h,c,1	;volatile
	goto	u171
	goto	u170
u171:
	goto	l903
u170:
	
l77:
	line	70
;./Functions.h: 70:             return temp2;
	movff	(c:Get_Value@temp2),(c:?_Get_Value)
	movff	(c:Get_Value@temp2+1),(c:?_Get_Value+1)
	line	73
	
l71:
	return	;funcret
	callstack 0
GLOBAL	__end_of_Get_Value
	__end_of_Get_Value:
	signat	_Get_Value,4218
	global	_Display_Value

;; *************** function _Display_Value *****************
;; Defined at:
;;		line 75 in file "./Functions.h"
;; Parameters:    Size  Location     Type
;;  display_inpu    2    2[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Get_Value
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2,group=0
	line	75
global __ptext3
__ptext3:
psect	text3
	file	"./Functions.h"
	line	75
	
_Display_Value:
;incstack = 0
	callstack 28
	line	76
	
l881:
;./Functions.h: 76:     PORTD = LED_value[display_input];
	movf	((c:Display_Value@display_input))^00h,c,w
	addlw	low(_LED_value)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	((c:16333))^03f00h,c	;volatile
	line	78
	
l82:
	return	;funcret
	callstack 0
GLOBAL	__end_of_Display_Value
	__end_of_Display_Value:
	signat	_Display_Value,4217
	global	_interrupt1_ISR

;; *************** function _interrupt1_ISR *****************
;; Defined at:
;;		line 31 in file "./Functions.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 2
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=4
global __ptext4
__ptext4:
psect	text4
	file	"./Functions.h"
	line	31
	
_interrupt1_ISR:
;incstack = 0
	callstack 28
	line	32
	
i2l819:
;./Functions.h: 32:     if(PIR1bits.INT0IF == 1) {
	movlb	57	; () banked
	btfss	((14753))&0ffh,0	;volatile
	goto	i2u6_41
	goto	i2u6_40
i2u6_41:
	goto	i2l61
i2u6_40:
	line	33
	
i2l821:; BSR set to: 57

;./Functions.h: 33:     PORTBbits.RB4 = 1;
	bsf	((c:16331))^03f00h,c,4	;volatile
	line	34
	
i2l823:; BSR set to: 57

;./Functions.h: 34:     _delay((unsigned long)((2500)*(4000000/4000.0)));
	asmopt push
asmopt off
movlw  13
movwf	(??_interrupt1_ISR+0+0+1)^00h,c
movlw	175
movwf	(??_interrupt1_ISR+0+0)^00h,c
	movlw	182
i2u31_47:
decfsz	wreg,f
	bra	i2u31_47
	decfsz	(??_interrupt1_ISR+0+0)^00h,c,f
	bra	i2u31_47
	decfsz	(??_interrupt1_ISR+0+0+1)^00h,c,f
	bra	i2u31_47
	nop2
asmopt pop

	line	35
	
i2l825:
;./Functions.h: 35:     PORTBbits.RB4 = 0;
	bcf	((c:16331))^03f00h,c,4	;volatile
	line	36
	
i2l827:
;./Functions.h: 36:     PIR1bits.INT0IF = 0;
	movlb	57	; () banked
	bcf	((14753))&0ffh,0	;volatile
	line	38
	
i2l61:; BSR set to: 57

	retfie f
	callstack 0
GLOBAL	__end_of_interrupt1_ISR
	__end_of_interrupt1_ISR:
	signat	_interrupt1_ISR,89
;
; H/W Interrupt Vector Table @ 0x4008
;
psect	ivt0x4008,class=CODE,space=0,reloc=2,delta=1,noexec,optim=
global __pivt0x4008
__pivt0x4008:
global	ivt0x4008_undefint
global	ivt0x4008_base
ivt0x4008_base:
; Vector 0 : SWINT
	dw ivt0x4008_undefint >> 2
; Vector 1 : HLVD
	dw ivt0x4008_undefint >> 2
; Vector 2 : OSF
	dw ivt0x4008_undefint >> 2
; Vector 3 : CSW
	dw ivt0x4008_undefint >> 2
; Vector 4 : NVM
	dw ivt0x4008_undefint >> 2
; Vector 5 : SCAN
	dw ivt0x4008_undefint >> 2
; Vector 6 : CRC
	dw ivt0x4008_undefint >> 2
; Vector 7 : IOC
	dw ivt0x4008_undefint >> 2
; Vector 8 : INT0
	dw _interrupt1_ISR >> 2
; Vector 9 : ZCD
	dw ivt0x4008_undefint >> 2
; Vector 10 : AD
	dw ivt0x4008_undefint >> 2
; Vector 11 : ADT
	dw ivt0x4008_undefint >> 2
; Vector 12 : CMP1
	dw ivt0x4008_undefint >> 2
; Vector 13 : SMT1
	dw ivt0x4008_undefint >> 2
; Vector 14 : SMT1PRA
	dw ivt0x4008_undefint >> 2
; Vector 15 : SMT1PRW
	dw ivt0x4008_undefint >> 2
; Vector 16 : DMA1SCNT
	dw ivt0x4008_undefint >> 2
; Vector 17 : DMA1DCNT
	dw ivt0x4008_undefint >> 2
; Vector 18 : DMA1OR
	dw ivt0x4008_undefint >> 2
; Vector 19 : DMA1A
	dw ivt0x4008_undefint >> 2
; Vector 20 : SPI1RX
	dw ivt0x4008_undefint >> 2
; Vector 21 : SPI1TX
	dw ivt0x4008_undefint >> 2
; Vector 22 : SPI1
	dw ivt0x4008_undefint >> 2
; Vector 23 : I2C1RX
	dw ivt0x4008_undefint >> 2
; Vector 24 : I2C1TX
	dw ivt0x4008_undefint >> 2
; Vector 25 : I2C1
	dw ivt0x4008_undefint >> 2
; Vector 26 : I2C1E
	dw ivt0x4008_undefint >> 2
; Vector 27 : U1RX
	dw ivt0x4008_undefint >> 2
; Vector 28 : U1TX
	dw ivt0x4008_undefint >> 2
; Vector 29 : U1E
	dw ivt0x4008_undefint >> 2
; Vector 30 : U1
	dw ivt0x4008_undefint >> 2
; Vector 31 : TMR0
	dw ivt0x4008_undefint >> 2
; Vector 32 : TMR1
	dw ivt0x4008_undefint >> 2
; Vector 33 : TMR1G
	dw ivt0x4008_undefint >> 2
; Vector 34 : TMR2
	dw ivt0x4008_undefint >> 2
; Vector 35 : CCP1
	dw ivt0x4008_undefint >> 2
; Vector 36 : Undefined
	dw ivt0x4008_undefint >> 2
; Vector 37 : NCO1
	dw ivt0x4008_undefint >> 2
; Vector 38 : CWG1
	dw ivt0x4008_undefint >> 2
; Vector 39 : CLC1
	dw ivt0x4008_undefint >> 2
; Vector 40 : INT1
	dw ivt0x4008_undefint >> 2
; Vector 41 : CMP2
	dw ivt0x4008_undefint >> 2
; Vector 42 : DMA2SCNT
	dw ivt0x4008_undefint >> 2
; Vector 43 : DMA2DCNT
	dw ivt0x4008_undefint >> 2
; Vector 44 : DMA2OR
	dw ivt0x4008_undefint >> 2
; Vector 45 : DMA2A
	dw ivt0x4008_undefint >> 2
; Vector 46 : I2C2RX
	dw ivt0x4008_undefint >> 2
; Vector 47 : I2C2TX
	dw ivt0x4008_undefint >> 2
; Vector 48 : I2C2
	dw ivt0x4008_undefint >> 2
; Vector 49 : I2C2E
	dw ivt0x4008_undefint >> 2
; Vector 50 : U2RX
	dw ivt0x4008_undefint >> 2
; Vector 51 : U2TX
	dw ivt0x4008_undefint >> 2
; Vector 52 : U2E
	dw ivt0x4008_undefint >> 2
; Vector 53 : U2
	dw ivt0x4008_undefint >> 2
; Vector 54 : TMR3
	dw ivt0x4008_undefint >> 2
; Vector 55 : TMR3G
	dw ivt0x4008_undefint >> 2
; Vector 56 : TMR4
	dw ivt0x4008_undefint >> 2
; Vector 57 : CCP2
	dw ivt0x4008_undefint >> 2
; Vector 58 : Undefined
	dw ivt0x4008_undefint >> 2
; Vector 59 : CWG2
	dw ivt0x4008_undefint >> 2
; Vector 60 : CLC2
	dw ivt0x4008_undefint >> 2
; Vector 61 : INT2
	dw ivt0x4008_undefint >> 2
; Vector 62 : Undefined
	dw ivt0x4008_undefint >> 2
; Vector 63 : Undefined
	dw ivt0x4008_undefint >> 2
; Vector 64 : Undefined
	dw ivt0x4008_undefint >> 2
; Vector 65 : Undefined
	dw ivt0x4008_undefint >> 2
; Vector 66 : Undefined
	dw ivt0x4008_undefint >> 2
; Vector 67 : Undefined
	dw ivt0x4008_undefint >> 2
; Vector 68 : Undefined
	dw ivt0x4008_undefint >> 2
; Vector 69 : Undefined
	dw ivt0x4008_undefint >> 2
; Vector 70 : TMR5
	dw ivt0x4008_undefint >> 2
; Vector 71 : TMR5G
	dw ivt0x4008_undefint >> 2
; Vector 72 : TMR6
	dw ivt0x4008_undefint >> 2
; Vector 73 : CCP3
	dw ivt0x4008_undefint >> 2
; Vector 74 : CWG3
	dw ivt0x4008_undefint >> 2
; Vector 75 : CLC3
	dw ivt0x4008_undefint >> 2
; Vector 76 : Undefined
	dw ivt0x4008_undefint >> 2
; Vector 77 : Undefined
	dw ivt0x4008_undefint >> 2
; Vector 78 : Undefined
	dw ivt0x4008_undefint >> 2
; Vector 79 : Undefined
	dw ivt0x4008_undefint >> 2
; Vector 80 : CCP4
	dw ivt0x4008_undefint >> 2
; Vector 81 : CLC4
	dw ivt0x4008_undefint >> 2
ivt0x4008_undefint:
	reset
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	db 0	; dummy byte at the end
	global	__smallconst
	global	__mediumconst
	GLOBAL	__activetblptr
__activetblptr	EQU	0
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 0
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
