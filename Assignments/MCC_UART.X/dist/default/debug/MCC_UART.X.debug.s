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
;; Function _INT0_DefaultInterruptHandler is unused but had its address taken
global _INT0_DefaultInterruptHandler
_INT0_DefaultInterruptHandler equ 0
;; Function _INT1_DefaultInterruptHandler is unused but had its address taken
global _INT1_DefaultInterruptHandler
_INT1_DefaultInterruptHandler equ 0
;; Function _INT2_DefaultInterruptHandler is unused but had its address taken
global _INT2_DefaultInterruptHandler
_INT2_DefaultInterruptHandler equ 0
;; Function _UART2_Deinitialize is unused but had its address taken
global _UART2_Deinitialize
_UART2_Deinitialize equ 0
;; Function _UART2_TransmitEnable is unused but had its address taken
global _UART2_TransmitEnable
_UART2_TransmitEnable equ 0
;; Function _UART2_TransmitDisable is unused but had its address taken
global _UART2_TransmitDisable
_UART2_TransmitDisable equ 0
;; Function _UART2_AutoBaudSet is unused but had its address taken
global _UART2_AutoBaudSet
_UART2_AutoBaudSet equ 0
;; Function _UART2_AutoBaudQuery is unused but had its address taken
global _UART2_AutoBaudQuery
_UART2_AutoBaudQuery equ 0
;; Function _UART2_IsRxReady is unused but had its address taken
global _UART2_IsRxReady
_UART2_IsRxReady equ 0
;; Function _UART2_IsTxDone is unused but had its address taken
global _UART2_IsTxDone
_UART2_IsTxDone equ 0
;; Function _UART2_ErrorGet is unused but had its address taken
global _UART2_ErrorGet
_UART2_ErrorGet equ 0
;; Function _UART2_Read is unused but had its address taken
global _UART2_Read
_UART2_Read equ 0
;; Function _UART2_DefaultFramingErrorCallback is unused but had its address taken
global _UART2_DefaultFramingErrorCallback
_UART2_DefaultFramingErrorCallback equ 0
;; Function _UART2_DefaultOverrunErrorCallback is unused but had its address taken
global _UART2_DefaultOverrunErrorCallback
_UART2_DefaultOverrunErrorCallback equ 0
;; Function _UART2_DefaultParityErrorCallback is unused but had its address taken
global _UART2_DefaultParityErrorCallback
_UART2_DefaultParityErrorCallback equ 0
	debug_source C
	FNCALL	_main,_SYSTEM_Initialize
	FNCALL	_main,_UART2_Initialize
	FNCALL	_main,_printf
	FNCALL	_main,_random_number
	FNCALL	_main,_srand
	FNCALL	_main,_time
	FNCALL	_random_number,___awmod
	FNCALL	_random_number,_rand
	FNCALL	_rand,___lmul
	FNCALL	_printf,_vfprintf
	FNCALL	_vfprintf,_vfpfcnvrt
	FNCALL	_vfpfcnvrt,___awdiv
	FNCALL	_vfpfcnvrt,___awmod
	FNCALL	_vfpfcnvrt,_abs
	FNCALL	_vfpfcnvrt,_fputc
	FNCALL	_fputc,_putch
	FNCALL	_putch,_UART2_IsTxReady
	FNCALL	_putch,_UART2_Write
	FNCALL	_SYSTEM_Initialize,_CLOCK_Initialize
	FNCALL	_SYSTEM_Initialize,_INTERRUPT_Initialize
	FNCALL	_SYSTEM_Initialize,_PIN_MANAGER_Initialize
	FNCALL	_SYSTEM_Initialize,_UART2_Initialize
	FNCALL	_UART2_Initialize,_UART2_FramingErrorCallbackRegister
	FNCALL	_UART2_Initialize,_UART2_OverrunErrorCallbackRegister
	FNCALL	_UART2_Initialize,_UART2_ParityErrorCallbackRegister
	FNCALL	_INTERRUPT_Initialize,_INT0_SetInterruptHandler
	FNCALL	_INTERRUPT_Initialize,_INT1_SetInterruptHandler
	FNCALL	_INTERRUPT_Initialize,_INT2_SetInterruptHandler
	FNROOT	_main
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	file	"mcc_generated_files/uart/src/uart2.c"
	line	47
	global	_UART2
_UART2:
	
		db	low(_UART2_Initialize)
	db	high(_UART2_Initialize)
	db	low	highword(_UART2_Initialize)

		db	low(0)
	db	high(0)
	db	low	highword(0)

		db	low(0)
	db	high(0)
	db	low	highword(0)

	
		db	low(_UART2_Write)
	db	high(_UART2_Write)
	db	low	highword(_UART2_Write)

		db	low(0)
	db	high(0)
	db	low	highword(0)

	
		db	low(_UART2_IsTxReady)
	db	high(_UART2_IsTxReady)
	db	low	highword(_UART2_IsTxReady)

		db	low(0)
	db	high(0)
	db	low	highword(0)

		db	low(0)
	db	high(0)
	db	low	highword(0)

		db	low(0)
	db	high(0)
	db	low	highword(0)

		db	low(0)
	db	high(0)
	db	low	highword(0)

		db	low(0)
	db	high(0)
	db	low	highword(0)

		db	low(0)
	db	high(0)
	db	low	highword(0)

		db	low(0)
	db	high(0)
	db	low	highword(0)

		db	low(0)
	db	high(0)
	db	low	highword(0)

		db	low(0)
	db	high(0)
	db	low	highword(0)

		db	low(0)
	db	high(0)
	db	low	highword(0)

		db	low(0)
	db	high(0)
	db	low	highword(0)

		db	low(0)
	db	high(0)
	db	low	highword(0)

		db	low(0)
	db	high(0)
	db	low	highword(0)

		db	low(0)
	db	high(0)
	db	low	highword(0)

	
		db	low(_UART2_FramingErrorCallbackRegister)
	db	high(_UART2_FramingErrorCallbackRegister)
	db	low	highword(_UART2_FramingErrorCallbackRegister)

	
		db	low(_UART2_OverrunErrorCallbackRegister)
	db	high(_UART2_OverrunErrorCallbackRegister)
	db	low	highword(_UART2_OverrunErrorCallbackRegister)

	
		db	low(_UART2_ParityErrorCallbackRegister)
	db	high(_UART2_ParityErrorCallbackRegister)
	db	low	highword(_UART2_ParityErrorCallbackRegister)

		db	low(0)
	db	high(0)
	db	low	highword(0)

	global __end_of_UART2
__end_of_UART2:
	global	_UART2_ParityErrorHandler
	global	_UART2_OverrunErrorHandler
	global	_UART2_FramingErrorHandler
	global	_INT2_InterruptHandler
	global	_INT1_InterruptHandler
	global	_INT0_InterruptHandler
	global	_width
	global	_prec
	global	_uart2RxLastError
	global	_flags
	global	_seed
	global	_dbuf
	global	_OSCTUNE
_OSCTUNE	set	0x39DE
	global	_OSCFRQ
_OSCFRQ	set	0x39DF
	global	_U2FIFObits
_U2FIFObits	set	0x3DDF
	global	_U2ERRIRbits
_U2ERRIRbits	set	0x3DE1
	global	_U2UIRbits
_U2UIRbits	set	0x3DE0
	global	_U2CON0bits
_U2CON0bits	set	0x3DDA
	global	_U2CON1bits
_U2CON1bits	set	0x3DDB
	global	_PIR1bits
_PIR1bits	set	0x39A1
	global	_OSCCON1
_OSCCON1	set	0x39D9
	global	_OSCCON3
_OSCCON3	set	0x39DB
	global	_OSCEN
_OSCEN	set	0x39DD
	global	_RD0PPS
_RD0PPS	set	0x3A18
	global	_ANSELA
_ANSELA	set	0x3A40
	global	_LATA
_LATA	set	0x3FBA
	global	_TRISA
_TRISA	set	0x3FC2
	global	_LATE
_LATE	set	0x3FBE
	global	_LATD
_LATD	set	0x3FBD
	global	_LATC
_LATC	set	0x3FBC
	global	_LATB
_LATB	set	0x3FBB
	global	_PORTBbits
_PORTBbits	set	0x3FCB
	global	_INTCON0bits
_INTCON0bits	set	0x3FD2
	global	_TRISE
_TRISE	set	0x3FC6
	global	_TRISD
_TRISD	set	0x3FC5
	global	_TRISC
_TRISC	set	0x3FC4
	global	_TRISB
_TRISB	set	0x3FC3
	global	_IOCAF
_IOCAF	set	0x3A47
	global	_IOCAN
_IOCAN	set	0x3A46
	global	_IOCAP
_IOCAP	set	0x3A45
	global	_INLVLA
_INLVLA	set	0x3A44
	global	_SLRCONA
_SLRCONA	set	0x3A43
	global	_ODCONA
_ODCONA	set	0x3A42
	global	_WPUA
_WPUA	set	0x3A41
	global	_ANSELB
_ANSELB	set	0x3A50
	global	_IOCBF
_IOCBF	set	0x3A57
	global	_IOCBN
_IOCBN	set	0x3A56
	global	_IOCBP
_IOCBP	set	0x3A55
	global	_RB1I2C
_RB1I2C	set	0x3A5A
	global	_INLVLB
_INLVLB	set	0x3A54
	global	_SLRCONB
_SLRCONB	set	0x3A53
	global	_ODCONB
_ODCONB	set	0x3A52
	global	_WPUB
_WPUB	set	0x3A51
	global	_ANSELC
_ANSELC	set	0x3A60
	global	_IOCCF
_IOCCF	set	0x3A67
	global	_IOCCN
_IOCCN	set	0x3A66
	global	_IOCCP
_IOCCP	set	0x3A65
	global	_RC3I2C
_RC3I2C	set	0x3A6A
	global	_INLVLC
_INLVLC	set	0x3A64
	global	_SLRCONC
_SLRCONC	set	0x3A63
	global	_ODCONC
_ODCONC	set	0x3A62
	global	_WPUC
_WPUC	set	0x3A61
	global	_ANSELD
_ANSELD	set	0x3A70
	global	_RD0I2C
_RD0I2C	set	0x3A7A
	global	_INLVLD
_INLVLD	set	0x3A74
	global	_SLRCOND
_SLRCOND	set	0x3A73
	global	_ODCOND
_ODCOND	set	0x3A72
	global	_WPUD
_WPUD	set	0x3A71
	global	_ANSELE
_ANSELE	set	0x3A80
	global	_IOCEF
_IOCEF	set	0x3A87
	global	_IOCEN
_IOCEN	set	0x3A86
	global	_IOCEP
_IOCEP	set	0x3A85
	global	_U2RXPPS
_U2RXPPS	set	0x3AE8
	global	_INLVLE
_INLVLE	set	0x3A84
	global	_SLRCONE
_SLRCONE	set	0x3A83
	global	_ODCONE
_ODCONE	set	0x3A82
	global	_WPUE
_WPUE	set	0x3A81
	global	_RB2I2C
_RB2I2C	set	0x3A5B
	global	_RC4I2C
_RC4I2C	set	0x3A6B
	global	_RD1I2C
_RD1I2C	set	0x3A7B
	global	_U2RXB
_U2RXB	set	0x3DD0
	global	_PIR5bits
_PIR5bits	set	0x39A5
	global	_PIR7bits
_PIR7bits	set	0x39A7
	global	_U2TXB
_U2TXB	set	0x3DD2
	global	_U2P1L
_U2P1L	set	0x3DD4
	global	_U2P2L
_U2P2L	set	0x3DD6
	global	_U2P3L
_U2P3L	set	0x3DD8
	global	_U2CON0
_U2CON0	set	0x3DDA
	global	_U2ERRIE
_U2ERRIE	set	0x3DE2
	global	_U2ERRIR
_U2ERRIR	set	0x3DE1
	global	_U2UIR
_U2UIR	set	0x3DE0
	global	_U2FIFO
_U2FIFO	set	0x3DDF
	global	_U2BRGH
_U2BRGH	set	0x3DDE
	global	_U2BRGL
_U2BRGL	set	0x3DDD
	global	_U2CON2
_U2CON2	set	0x3DDC
	global	_U2CON1
_U2CON1	set	0x3DDB
	
STR_3:; BSR set to: 57

	db	77	;'M'
	db	105	;'i'
	db	110	;'n'
	db	58	;':'
	db	32
	db	49	;'1'
	db	48	;'0'
	db	48	;'0'
	db	32
	db	77	;'M'
	db	97	;'a'
	db	120	;'x'
	db	58	;':'
	db	32
	db	49	;'1'
	db	48	;'0'
	db	48	;'0'
	db	48	;'0'
	db	32
	db	37
	db	100	;'d'
	db	13
	db	10
	db	0
	
STR_2:; BSR set to: 57

	db	77	;'M'
	db	105	;'i'
	db	110	;'n'
	db	58	;':'
	db	32
	db	49	;'1'
	db	32
	db	77	;'M'
	db	97	;'a'
	db	120	;'x'
	db	58	;':'
	db	32
	db	52	;'4'
	db	48	;'0'
	db	32
	db	37
	db	100	;'d'
	db	13
	db	10
	db	0
	
STR_1:; BSR set to: 57

	db	72	;'H'
	db	101	;'e'
	db	108	;'l'
	db	108	;'l'
	db	111	;'o'
	db	32
	db	87	;'W'
	db	111	;'o'
	db	114	;'r'
	db	108	;'l'
	db	100	;'d'
	db	46
	db	46
	db	46
	db	13
	db	10
	db	0
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config FEXTOSC = "ECH"
	config RSTOSC = "HFINTOSC_64MHZ"
	config CLKOUTEN = "OFF"
	config PR1WAY = "ON"
	config CSWEN = "ON"
	config FCMEN = "ON"
	config MCLRE = "EXTMCLR"
	config PWRTS = "PWRT_OFF"
	config MVECEN = "OFF"
	config IVT1WAY = "ON"
	config LPBOREN = "OFF"
	config BOREN = "SBORDIS"
	config BORV = "VBOR_2P45"
	config ZCD = "OFF"
	config PPS1WAY = "ON"
	config STVREN = "ON"
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
	file	"dist/default/debug\MCC_UART.X.debug.s"
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
	global	_UART2_ParityErrorHandler
_UART2_ParityErrorHandler:
       ds      3
	global	_UART2_OverrunErrorHandler
_UART2_OverrunErrorHandler:
       ds      3
	global	_UART2_FramingErrorHandler
_UART2_FramingErrorHandler:
       ds      3
	global	_INT2_InterruptHandler
_INT2_InterruptHandler:
       ds      3
	global	_INT1_InterruptHandler
_INT1_InterruptHandler:
       ds      3
	global	_INT0_InterruptHandler
_INT0_InterruptHandler:
       ds      3
_width:
       ds      2
_prec:
       ds      2
	global	_uart2RxLastError
_uart2RxLastError:
       ds      2
_flags:
       ds      1
_seed:
       ds      4
psect	bssBANK0,class=BANK0,space=1,noexec,lowdata
global __pbssBANK0
__pbssBANK0:
_dbuf:
       ds      32
	file	"dist/default/debug\MCC_UART.X.debug.s"
	line	#
psect	cinit
; Clear objects allocated to BANK0 (32 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	32
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
; Clear objects allocated to COMRAM (29 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	29
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
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
?_CLOCK_Initialize:	; 1 bytes @ 0x0
??_CLOCK_Initialize:	; 1 bytes @ 0x0
?_PIN_MANAGER_Initialize:	; 1 bytes @ 0x0
??_PIN_MANAGER_Initialize:	; 1 bytes @ 0x0
?_UART2_Initialize:	; 1 bytes @ 0x0
?_INTERRUPT_Initialize:	; 1 bytes @ 0x0
?_INT0_SetInterruptHandler:	; 1 bytes @ 0x0
?_INT1_SetInterruptHandler:	; 1 bytes @ 0x0
?_INT2_SetInterruptHandler:	; 1 bytes @ 0x0
?_UART2_Write:	; 1 bytes @ 0x0
??_UART2_Write:	; 1 bytes @ 0x0
?_UART2_IsTxReady:	; 1 bytes @ 0x0
??_UART2_IsTxReady:	; 1 bytes @ 0x0
?_UART2_FramingErrorCallbackRegister:	; 1 bytes @ 0x0
?_UART2_OverrunErrorCallbackRegister:	; 1 bytes @ 0x0
?_UART2_ParityErrorCallbackRegister:	; 1 bytes @ 0x0
?_SYSTEM_Initialize:	; 1 bytes @ 0x0
?_putch:	; 1 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?_time
?_time:	; 4 bytes @ 0x0
	global	?___lmul
?___lmul:	; 4 bytes @ 0x0
	global	_UART2_IsTxReady$832
_UART2_IsTxReady$832:	; 1 bytes @ 0x0
	global	UART2_Write@txData
UART2_Write@txData:	; 1 bytes @ 0x0
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x0
	global	time@t
time@t:	; 2 bytes @ 0x0
	global	INT0_SetInterruptHandler@InterruptHandler
INT0_SetInterruptHandler@InterruptHandler:	; 3 bytes @ 0x0
	global	INT1_SetInterruptHandler@InterruptHandler
INT1_SetInterruptHandler@InterruptHandler:	; 3 bytes @ 0x0
	global	INT2_SetInterruptHandler@InterruptHandler
INT2_SetInterruptHandler@InterruptHandler:	; 3 bytes @ 0x0
	global	UART2_FramingErrorCallbackRegister@callbackHandler
UART2_FramingErrorCallbackRegister@callbackHandler:	; 3 bytes @ 0x0
	global	UART2_OverrunErrorCallbackRegister@callbackHandler
UART2_OverrunErrorCallbackRegister@callbackHandler:	; 3 bytes @ 0x0
	global	UART2_ParityErrorCallbackRegister@callbackHandler
UART2_ParityErrorCallbackRegister@callbackHandler:	; 3 bytes @ 0x0
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0x0
	ds   1
??_putch:	; 1 bytes @ 0x1
	global	putch@txData
putch@txData:	; 1 bytes @ 0x1
	ds   1
?_fputc:	; 2 bytes @ 0x2
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x2
	global	fputc@c
fputc@c:	; 2 bytes @ 0x2
	ds   1
??_UART2_Initialize:	; 1 bytes @ 0x3
??_INTERRUPT_Initialize:	; 1 bytes @ 0x3
??_INT0_SetInterruptHandler:	; 1 bytes @ 0x3
??_INT1_SetInterruptHandler:	; 1 bytes @ 0x3
??_INT2_SetInterruptHandler:	; 1 bytes @ 0x3
??_UART2_FramingErrorCallbackRegister:	; 1 bytes @ 0x3
??_UART2_OverrunErrorCallbackRegister:	; 1 bytes @ 0x3
??_UART2_ParityErrorCallbackRegister:	; 1 bytes @ 0x3
??_SYSTEM_Initialize:	; 1 bytes @ 0x3
	ds   1
?_srand:	; 1 bytes @ 0x4
??_time:	; 1 bytes @ 0x4
??___awdiv:	; 1 bytes @ 0x4
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x4
	global	fputc@fp
fputc@fp:	; 2 bytes @ 0x4
	global	srand@s
srand@s:	; 2 bytes @ 0x4
	global	___lmul@multiplicand
___lmul@multiplicand:	; 4 bytes @ 0x4
	ds   1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x5
	ds   1
??_srand:	; 1 bytes @ 0x6
??_fputc:	; 1 bytes @ 0x6
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x6
	ds   2
??___lmul:	; 1 bytes @ 0x8
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0x8
	ds   4
	global	?_rand
?_rand:	; 2 bytes @ 0xC
	ds   2
??_rand:	; 1 bytes @ 0xE
	ds   4
	global	?___awmod
?___awmod:	; 2 bytes @ 0x12
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x12
	ds   2
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x14
	ds   2
??___awmod:	; 1 bytes @ 0x16
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x16
	ds   1
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x17
	ds   1
	global	?_random_number
?_random_number:	; 2 bytes @ 0x18
	global	?_abs
?_abs:	; 2 bytes @ 0x18
	global	random_number@min_num
random_number@min_num:	; 2 bytes @ 0x18
	global	abs@a
abs@a:	; 2 bytes @ 0x18
	ds   2
??_abs:	; 1 bytes @ 0x1A
	global	random_number@max_num
random_number@max_num:	; 2 bytes @ 0x1A
	ds   2
??_random_number:	; 1 bytes @ 0x1C
?_vfpfcnvrt:	; 1 bytes @ 0x1C
	global	vfpfcnvrt@fp
vfpfcnvrt@fp:	; 2 bytes @ 0x1C
	ds   1
	global	random_number@result
random_number@result:	; 2 bytes @ 0x1D
	ds   1
	global	vfpfcnvrt@fmt
vfpfcnvrt@fmt:	; 1 bytes @ 0x1E
	ds   1
	global	vfpfcnvrt@ap
vfpfcnvrt@ap:	; 1 bytes @ 0x1F
	global	random_number@hi_num
random_number@hi_num:	; 2 bytes @ 0x1F
	ds   1
??_vfpfcnvrt:	; 1 bytes @ 0x20
	ds   1
	global	vfpfcnvrt@done
vfpfcnvrt@done:	; 1 bytes @ 0x21
	global	random_number@low_num
random_number@low_num:	; 2 bytes @ 0x21
	ds   1
	global	vfpfcnvrt@cp
vfpfcnvrt@cp:	; 1 bytes @ 0x22
	ds   1
	global	vfpfcnvrt@convarg
vfpfcnvrt@convarg:	; 4 bytes @ 0x23
	ds   4
	global	vfpfcnvrt@c
vfpfcnvrt@c:	; 1 bytes @ 0x27
	ds   1
	global	?_vfprintf
?_vfprintf:	; 2 bytes @ 0x28
	global	vfprintf@fp
vfprintf@fp:	; 2 bytes @ 0x28
	ds   2
	global	vfprintf@fmt
vfprintf@fmt:	; 1 bytes @ 0x2A
	ds   1
	global	vfprintf@ap
vfprintf@ap:	; 1 bytes @ 0x2B
	ds   1
??_vfprintf:	; 1 bytes @ 0x2C
	global	vfprintf@cfmt
vfprintf@cfmt:	; 1 bytes @ 0x2C
	ds   1
	global	?_printf
?_printf:	; 2 bytes @ 0x2D
	global	printf@fmt
printf@fmt:	; 1 bytes @ 0x2D
	ds   3
??_printf:	; 1 bytes @ 0x30
	global	printf@ap
printf@ap:	; 1 bytes @ 0x30
	ds   1
??_main:	; 1 bytes @ 0x31
	ds   2
;!
;!Data Sizes:
;!    Strings     61
;!    Constant    72
;!    Data        0
;!    BSS         61
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95     51      80
;!    BANK0           160      0      32
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
;!    fputc@fp	PTR struct _IO_FILE size(2) Largest target is 0
;!		 -> NULL(NULL[0]), 
;!
;!    fputc@fp$.$buffer	PTR unsigned char  size(2) Largest target is 0
;!
;!    fputc@fp$.$source	PTR const unsigned char  size(2) Largest target is 0
;!
;!    INT0_InterruptHandler	PTR FTN()void  size(3) Largest target is 1
;!		 -> INT0_DefaultInterruptHandler(), NULL(), 
;!
;!    INT0_SetInterruptHandler@InterruptHandler	PTR FTN()void  size(3) Largest target is 1
;!		 -> INT0_DefaultInterruptHandler(), 
;!
;!    INT1_InterruptHandler	PTR FTN()void  size(3) Largest target is 1
;!		 -> INT1_DefaultInterruptHandler(), NULL(), 
;!
;!    INT1_SetInterruptHandler@InterruptHandler	PTR FTN()void  size(3) Largest target is 1
;!		 -> INT1_DefaultInterruptHandler(), 
;!
;!    INT2_InterruptHandler	PTR FTN()void  size(3) Largest target is 1
;!		 -> INT2_DefaultInterruptHandler(), NULL(), 
;!
;!    INT2_SetInterruptHandler@InterruptHandler	PTR FTN()void  size(3) Largest target is 1
;!		 -> INT2_DefaultInterruptHandler(), 
;!
;!    printf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_printf(COMRAM[2]), 
;!
;!    printf@fmt	PTR const unsigned char  size(1) Largest target is 24
;!		 -> STR_1(CODE[17]), STR_2(CODE[20]), STR_3(CODE[24]), 
;!
;!    S1374$buffer	PTR unsigned char  size(2) Largest target is 0
;!
;!    S1374$source	PTR const unsigned char  size(2) Largest target is 0
;!
;!    S329$20$0	PTR FTN()void  size(3) Largest target is 1
;!		 -> UART2_DefaultFramingErrorCallback(), 
;!
;!    S329$21$0	PTR FTN()void  size(3) Largest target is 1
;!		 -> UART2_DefaultOverrunErrorCallback(), 
;!
;!    S329$22$0	PTR FTN()void  size(3) Largest target is 1
;!		 -> UART2_DefaultParityErrorCallback(), 
;!
;!    S329$AutoBaudEventEnableGet	PTR FTN()_Bool  size(3) Largest target is 1
;!		 -> NULL(), 
;!
;!    S329$AutoBaudQuery	PTR FTN()_Bool  size(3) Largest target is 1
;!		 -> UART2_AutoBaudQuery(), 
;!
;!    S329$AutoBaudSet	PTR FTN(_Bool ,)void  size(3) Largest target is 1
;!		 -> UART2_AutoBaudSet(), 
;!
;!    S329$BaudRateGet	PTR FTN()unsigned long  size(3) Largest target is 1
;!		 -> NULL(), 
;!
;!    S329$BaudRateSet	PTR FTN(unsigned long ,)void  size(3) Largest target is 1
;!		 -> NULL(), 
;!
;!    S329$BRGCountGet	PTR FTN()unsigned long  size(3) Largest target is 1
;!		 -> NULL(), 
;!
;!    S329$BRGCountSet	PTR FTN(unsigned long ,)void  size(3) Largest target is 1
;!		 -> NULL(), 
;!
;!    S329$Deinitialize	PTR FTN()void  size(3) Largest target is 1
;!		 -> UART2_Deinitialize(), 
;!
;!    S329$ErrorGet	PTR FTN()unsigned int  size(3) Largest target is 2
;!		 -> UART2_ErrorGet(), 
;!
;!    S329$EventCallbackRegister	PTR FTN(PTR FTN()void ,)void  size(3) Largest target is 1
;!		 -> NULL(), 
;!
;!    S329$FramingErrorCallbackRegister	PTR FTN(PTR FTN()void ,)void  size(3) Largest target is 1
;!		 -> UART2_FramingErrorCallbackRegister(), 
;!
;!    S329$Initialize	PTR FTN()void  size(3) Largest target is 1
;!		 -> UART2_Initialize(), 
;!
;!    S329$IsRxReady	PTR FTN()_Bool  size(3) Largest target is 1
;!		 -> UART2_IsRxReady(), 
;!
;!    S329$IsTxDone	PTR FTN()_Bool  size(3) Largest target is 1
;!		 -> UART2_IsTxDone(), 
;!
;!    S329$IsTxReady	PTR FTN()_Bool  size(3) Largest target is 1
;!		 -> UART2_IsTxReady(), 
;!
;!    S329$OverrunErrorCallbackRegister	PTR FTN(PTR FTN()void ,)void  size(3) Largest target is 1
;!		 -> UART2_OverrunErrorCallbackRegister(), 
;!
;!    S329$ParityErrorCallbackRegister	PTR FTN(PTR FTN()void ,)void  size(3) Largest target is 1
;!		 -> UART2_ParityErrorCallbackRegister(), 
;!
;!    S329$Read	PTR FTN()unsigned char  size(3) Largest target is 1
;!		 -> UART2_Read(), 
;!
;!    S329$RxCompleteCallbackRegister	PTR FTN(PTR FTN()void ,)void  size(3) Largest target is 1
;!		 -> NULL(), 
;!
;!    S329$TransmitDisable	PTR FTN()void  size(3) Largest target is 1
;!		 -> UART2_TransmitDisable(), 
;!
;!    S329$TransmitEnable	PTR FTN()void  size(3) Largest target is 1
;!		 -> UART2_TransmitEnable(), 
;!
;!    S329$TxCollisionCallbackRegister	PTR FTN(PTR FTN()void ,)void  size(3) Largest target is 1
;!		 -> NULL(), 
;!
;!    S329$TxCompleteCallbackRegister	PTR FTN(PTR FTN()void ,)void  size(3) Largest target is 1
;!		 -> NULL(), 
;!
;!    S329$Write	PTR FTN(unsigned char ,)void  size(3) Largest target is 1
;!		 -> UART2_Write(), 
;!
;!    time@t	PTR unsigned long  size(2) Largest target is 0
;!		 -> NULL(NULL[0]), 
;!
;!    UART2$AutoBaudEventEnableGet	PTR FTN()_Bool  size(3) Largest target is 1
;!		 -> NULL(), 
;!
;!    UART2$AutoBaudQuery	PTR FTN()_Bool  size(3) Largest target is 1
;!		 -> UART2_AutoBaudQuery(), 
;!
;!    UART2$AutoBaudSet	PTR FTN(_Bool ,)void  size(3) Largest target is 1
;!		 -> UART2_AutoBaudSet(), 
;!
;!    UART2$BaudRateGet	PTR FTN()unsigned long  size(3) Largest target is 1
;!		 -> NULL(), 
;!
;!    UART2$BaudRateSet	PTR FTN(unsigned long ,)void  size(3) Largest target is 1
;!		 -> NULL(), 
;!
;!    UART2$BRGCountGet	PTR FTN()unsigned long  size(3) Largest target is 1
;!		 -> NULL(), 
;!
;!    UART2$BRGCountSet	PTR FTN(unsigned long ,)void  size(3) Largest target is 1
;!		 -> NULL(), 
;!
;!    UART2$Deinitialize	PTR FTN()void  size(3) Largest target is 1
;!		 -> UART2_Deinitialize(), 
;!
;!    UART2$ErrorGet	PTR FTN()unsigned int  size(3) Largest target is 2
;!		 -> UART2_ErrorGet(), 
;!
;!    UART2$EventCallbackRegister	PTR FTN(PTR FTN()void ,)void  size(3) Largest target is 1
;!		 -> NULL(), 
;!
;!    UART2$FramingErrorCallbackRegister	PTR FTN(PTR FTN()void ,)void  size(3) Largest target is 1
;!		 -> UART2_FramingErrorCallbackRegister(), 
;!
;!    UART2$Initialize	PTR FTN()void  size(3) Largest target is 1
;!		 -> UART2_Initialize(), 
;!
;!    UART2$IsRxReady	PTR FTN()_Bool  size(3) Largest target is 1
;!		 -> UART2_IsRxReady(), 
;!
;!    UART2$IsTxDone	PTR FTN()_Bool  size(3) Largest target is 1
;!		 -> UART2_IsTxDone(), 
;!
;!    UART2$IsTxReady	PTR FTN()_Bool  size(3) Largest target is 1
;!		 -> UART2_IsTxReady(), 
;!
;!    UART2$OverrunErrorCallbackRegister	PTR FTN(PTR FTN()void ,)void  size(3) Largest target is 1
;!		 -> UART2_OverrunErrorCallbackRegister(), 
;!
;!    UART2$ParityErrorCallbackRegister	PTR FTN(PTR FTN()void ,)void  size(3) Largest target is 1
;!		 -> UART2_ParityErrorCallbackRegister(), 
;!
;!    UART2$Read	PTR FTN()unsigned char  size(3) Largest target is 1
;!		 -> UART2_Read(), 
;!
;!    UART2$RxCompleteCallbackRegister	PTR FTN(PTR FTN()void ,)void  size(3) Largest target is 1
;!		 -> NULL(), 
;!
;!    UART2$TransmitDisable	PTR FTN()void  size(3) Largest target is 1
;!		 -> UART2_TransmitDisable(), 
;!
;!    UART2$TransmitEnable	PTR FTN()void  size(3) Largest target is 1
;!		 -> UART2_TransmitEnable(), 
;!
;!    UART2$TxCollisionCallbackRegister	PTR FTN(PTR FTN()void ,)void  size(3) Largest target is 1
;!		 -> NULL(), 
;!
;!    UART2$TxCompleteCallbackRegister	PTR FTN(PTR FTN()void ,)void  size(3) Largest target is 1
;!		 -> NULL(), 
;!
;!    UART2$Write	PTR FTN(unsigned char ,)void  size(3) Largest target is 1
;!		 -> UART2_Write(), 
;!
;!    UART2_FramingErrorCallbackRegister@callbackHandler	PTR FTN()void  size(3) Largest target is 1
;!		 -> UART2_DefaultFramingErrorCallback(), 
;!
;!    UART2_FramingErrorHandler	PTR FTN()void  size(3) Largest target is 1
;!		 -> UART2_DefaultFramingErrorCallback(), NULL(), 
;!
;!    UART2_OverrunErrorCallbackRegister@callbackHandler	PTR FTN()void  size(3) Largest target is 1
;!		 -> UART2_DefaultOverrunErrorCallback(), 
;!
;!    UART2_OverrunErrorHandler	PTR FTN()void  size(3) Largest target is 1
;!		 -> UART2_DefaultOverrunErrorCallback(), NULL(), 
;!
;!    UART2_ParityErrorCallbackRegister@callbackHandler	PTR FTN()void  size(3) Largest target is 1
;!		 -> UART2_DefaultParityErrorCallback(), 
;!
;!    UART2_ParityErrorHandler	PTR FTN()void  size(3) Largest target is 1
;!		 -> UART2_DefaultParityErrorCallback(), NULL(), 
;!
;!    vfpfcnvrt@ap	PTR PTR void  size(1) Largest target is 1
;!		 -> printf@ap(COMRAM[1]), 
;!
;!    vfpfcnvrt@cp	PTR unsigned char  size(1) Largest target is 24
;!		 -> STR_1(CODE[17]), STR_2(CODE[20]), STR_3(CODE[24]), 
;!
;!    vfpfcnvrt@fmt	PTR PTR unsigned char  size(1) Largest target is 1
;!		 -> vfprintf@cfmt(COMRAM[1]), 
;!
;!    vfpfcnvrt@fp	PTR struct _IO_FILE size(2) Largest target is 0
;!		 -> NULL(NULL[0]), 
;!
;!    vfprintf@ap	PTR PTR void  size(1) Largest target is 1
;!		 -> printf@ap(COMRAM[1]), 
;!
;!    vfprintf@cfmt	PTR unsigned char  size(1) Largest target is 24
;!		 -> STR_1(CODE[17]), STR_2(CODE[20]), STR_3(CODE[24]), 
;!
;!    vfprintf@fmt	PTR const unsigned char  size(1) Largest target is 24
;!		 -> STR_1(CODE[17]), STR_2(CODE[20]), STR_3(CODE[24]), 
;!
;!    vfprintf@fp	PTR struct _IO_FILE size(2) Largest target is 0
;!		 -> NULL(NULL[0]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_printf
;!    _srand->_time
;!    _random_number->___awmod
;!    _rand->___lmul
;!    _printf->_vfprintf
;!    _vfprintf->_vfpfcnvrt
;!    _vfpfcnvrt->_abs
;!    _fputc->_putch
;!    _putch->_UART2_IsTxReady
;!    _putch->_UART2_Write
;!    _abs->___awmod
;!    ___awmod->_rand
;!    _UART2_Initialize->_UART2_FramingErrorCallbackRegister
;!    _UART2_Initialize->_UART2_OverrunErrorCallbackRegister
;!    _UART2_Initialize->_UART2_ParityErrorCallbackRegister
;!    _INTERRUPT_Initialize->_INT0_SetInterruptHandler
;!    _INTERRUPT_Initialize->_INT1_SetInterruptHandler
;!    _INTERRUPT_Initialize->_INT2_SetInterruptHandler
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.
;!
;!Critical Paths under _main in BANK8
;!
;!    None.
;!
;!Critical Paths under _main in BANK9
;!
;!    None.
;!
;!Critical Paths under _main in BANK10
;!
;!    None.
;!
;!Critical Paths under _main in BANK11
;!
;!    None.
;!
;!Critical Paths under _main in BANK12
;!
;!    None.
;!
;!Critical Paths under _main in BANK13
;!
;!    None.
;!
;!Critical Paths under _main in BANK14
;!
;!    None.
;!
;!Critical Paths under _main in BANK15
;!
;!    None.
;!
;!Critical Paths under _main in BANK16
;!
;!    None.
;!
;!Critical Paths under _main in BANK17
;!
;!    None.
;!
;!Critical Paths under _main in BANK18
;!
;!    None.
;!
;!Critical Paths under _main in BANK19
;!
;!    None.
;!
;!Critical Paths under _main in BANK20
;!
;!    None.
;!
;!Critical Paths under _main in BANK21
;!
;!    None.
;!
;!Critical Paths under _main in BANK22
;!
;!    None.
;!
;!Critical Paths under _main in BANK23
;!
;!    None.
;!
;!Critical Paths under _main in BANK24
;!
;!    None.
;!
;!Critical Paths under _main in BANK25
;!
;!    None.
;!
;!Critical Paths under _main in BANK26
;!
;!    None.
;!
;!Critical Paths under _main in BANK27
;!
;!    None.
;!
;!Critical Paths under _main in BANK28
;!
;!    None.
;!
;!Critical Paths under _main in BANK29
;!
;!    None.
;!
;!Critical Paths under _main in BANK30
;!
;!    None.
;!
;!Critical Paths under _main in BANK31
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
;! (0) _main                                                 2     2      0    6172
;!                                             49 COMRAM     2     2      0
;!                  _SYSTEM_Initialize
;!                   _UART2_Initialize
;!                             _printf
;!                      _random_number
;!                              _srand
;!                               _time
;! ---------------------------------------------------------------------------------
;! (1) _time                                                 4     0      4     120
;!                                              0 COMRAM     4     0      4
;! ---------------------------------------------------------------------------------
;! (1) _srand                                                4     2      2      98
;!                                              4 COMRAM     4     2      2
;!                               _time (ARG)
;! ---------------------------------------------------------------------------------
;! (1) _random_number                                       11     7      4    1502
;!                                             24 COMRAM    11     7      4
;!                            ___awmod
;!                               _rand
;! ---------------------------------------------------------------------------------
;! (2) _rand                                                 6     4      2     370
;!                                             12 COMRAM     6     4      2
;!                             ___lmul
;! ---------------------------------------------------------------------------------
;! (3) ___lmul                                              12     4      8     370
;!                                              0 COMRAM    12     4      8
;! ---------------------------------------------------------------------------------
;! (1) _printf                                               6     3      3    3438
;!                                             45 COMRAM     4     1      3
;!                      _random_number (ARG)
;!                           _vfprintf
;! ---------------------------------------------------------------------------------
;! (2) _vfprintf                                             5     1      4    3156
;!                                             40 COMRAM     5     1      4
;!                          _vfpfcnvrt
;! ---------------------------------------------------------------------------------
;! (3) _vfpfcnvrt                                           12     8      4    2806
;!                                             28 COMRAM    12     8      4
;!                            ___awdiv
;!                            ___awmod
;!                                _abs
;!                              _fputc
;! ---------------------------------------------------------------------------------
;! (4) _fputc                                                9     5      4     850
;!                                              2 COMRAM     9     5      4
;!                              _putch
;! ---------------------------------------------------------------------------------
;! (5) _putch                                                1     1      0      68
;!                                              1 COMRAM     1     1      0
;!                    _UART2_IsTxReady
;!                        _UART2_Write
;! ---------------------------------------------------------------------------------
;! (6) _UART2_Write                                          1     1      0      22
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (6) _UART2_IsTxReady                                      1     1      0      24
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _abs                                                  4     2      2     142
;!                                             24 COMRAM     4     2      2
;!                            ___awmod (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___awmod                                              6     2      4     600
;!                                             18 COMRAM     6     2      4
;!                               _rand (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___awdiv                                              8     4      4     452
;!                                              0 COMRAM     8     4      4
;! ---------------------------------------------------------------------------------
;! (1) _SYSTEM_Initialize                                    0     0      0     654
;!                   _CLOCK_Initialize
;!               _INTERRUPT_Initialize
;!             _PIN_MANAGER_Initialize
;!                   _UART2_Initialize
;! ---------------------------------------------------------------------------------
;! (1) _UART2_Initialize                                     0     0      0     360
;! _UART2_FramingErrorCallbackRegister
;! _UART2_OverrunErrorCallbackRegister
;!  _UART2_ParityErrorCallbackRegister
;! ---------------------------------------------------------------------------------
;! (2) _UART2_ParityErrorCallbackRegister                    3     0      3     120
;!                                              0 COMRAM     3     0      3
;! ---------------------------------------------------------------------------------
;! (2) _UART2_OverrunErrorCallbackRegister                   3     0      3     120
;!                                              0 COMRAM     3     0      3
;! ---------------------------------------------------------------------------------
;! (2) _UART2_FramingErrorCallbackRegister                   3     0      3     120
;!                                              0 COMRAM     3     0      3
;! ---------------------------------------------------------------------------------
;! (2) _PIN_MANAGER_Initialize                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _INTERRUPT_Initialize                                 0     0      0     294
;!           _INT0_SetInterruptHandler
;!           _INT1_SetInterruptHandler
;!           _INT2_SetInterruptHandler
;! ---------------------------------------------------------------------------------
;! (3) _INT2_SetInterruptHandler                             3     0      3      98
;!                                              0 COMRAM     3     0      3
;! ---------------------------------------------------------------------------------
;! (3) _INT1_SetInterruptHandler                             3     0      3      98
;!                                              0 COMRAM     3     0      3
;! ---------------------------------------------------------------------------------
;! (3) _INT0_SetInterruptHandler                             3     0      3      98
;!                                              0 COMRAM     3     0      3
;! ---------------------------------------------------------------------------------
;! (2) _CLOCK_Initialize                                     0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _SYSTEM_Initialize
;!     _CLOCK_Initialize
;!     _INTERRUPT_Initialize
;!       _INT0_SetInterruptHandler
;!       _INT1_SetInterruptHandler
;!       _INT2_SetInterruptHandler
;!     _PIN_MANAGER_Initialize
;!     _UART2_Initialize
;!       _UART2_FramingErrorCallbackRegister
;!       _UART2_OverrunErrorCallbackRegister
;!       _UART2_ParityErrorCallbackRegister
;!   _UART2_Initialize
;!   _printf
;!     _random_number (ARG)
;!       ___awmod
;!         _rand (ARG)
;!           ___lmul
;!       _rand
;!     _vfprintf (ARG)
;!       _vfpfcnvrt
;!         ___awdiv
;!         ___awmod
;!         _abs
;!           ___awmod (ARG)
;!         _fputc
;!           _putch
;!             _UART2_IsTxReady
;!             _UART2_Write
;!   _random_number
;!   _srand
;!     _time (ARG)
;!   _time
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM            1FFF      0       0      96        0.0%
;!EEDATA             400      0       0       0        0.0%
;!BITBIGSFRhhhhlh    2E7      0       0      79        0.0%
;!BITBIGSFRhhhhlh    1D7      0       0      73        0.0%
;!BITBIGSFRll        1A1      0       0      95        0.0%
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
;!BITBANK12          100      0       0      29        0.0%
;!BANK12             100      0       0      30        0.0%
;!BITBANK11          100      0       0      27        0.0%
;!BANK11             100      0       0      28        0.0%
;!BITBANK10          100      0       0      25        0.0%
;!BANK10             100      0       0      26        0.0%
;!BITBANK9           100      0       0      23        0.0%
;!BANK9              100      0       0      24        0.0%
;!BITBANK8           100      0       0      21        0.0%
;!BANK8              100      0       0      22        0.0%
;!BITBANK7           100      0       0      19        0.0%
;!BANK7              100      0       0      20        0.0%
;!BITBANK6           100      0       0      17        0.0%
;!BANK6              100      0       0      18        0.0%
;!BITBANK5           100      0       0      15        0.0%
;!BANK5              100      0       0      16        0.0%
;!BITBANK4           100      0       0      13        0.0%
;!BANK4              100      0       0      14        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0       0      11        0.0%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0       0       9        0.0%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100      0       0       7        0.0%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0      0      20       5       20.0%
;!BITBIGSFRhhhhlh     60      0       0      80        0.0%
;!BITCOMRAM           5F      0       0       0        0.0%
;!COMRAM              5F     33      50       1       84.2%
;!BITBIGSFRhhhhll     38      0       0      89        0.0%
;!BITBIGSFRlhhh       31      0       0      92        0.0%
;!BITBIGSFRhhhhhh     2D      0       0      69        0.0%
;!BITBIGSFRhhhhll     27      0       0      88        0.0%
;!BITBIGSFRhhhhlh      8      0       0      87        0.0%
;!BITBIGSFRhhhhhh      6      0       0      70        0.0%
;!BITBIGSFRhhhhlh      5      0       0      82        0.0%
;!BITBIGSFRhhhhlh      4      0       0      81        0.0%
;!BITBIGSFRhhhhlh      4      0       0      83        0.0%
;!BITBIGSFRhhhhlh      4      0       0      85        0.0%
;!BITBIGSFRhhhhhh      4      0       0      71        0.0%
;!BITBIGSFRlhl         3      0       0      94        0.0%
;!BITBIGSFRhhhhhl      3      0       0      72        0.0%
;!BITBIGSFRhhhhlh      2      0       0      84        0.0%
;!BITBIGSFRhhhhlh      2      0       0      86        0.0%
;!BITBIGSFRhhhhlh      1      0       0      74        0.0%
;!BITBIGSFRhhhhlh      1      0       0      75        0.0%
;!BITBIGSFRhhhhlh      1      0       0      76        0.0%
;!BITBIGSFRhhhhlh      1      0       0      77        0.0%
;!BITBIGSFRhhhhlh      1      0       0      78        0.0%
;!BITBIGSFRlhhl        1      0       0      93        0.0%
;!BITBIGSFRhhl         1      0       0      90        0.0%
;!BITBIGSFRhl          1      0       0      91        0.0%
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
;!ABS                  0      0      70      12        0.0%
;!DATA                 0      0      70       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 43 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  424[None  ] int 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
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
;; Hardware stack levels required when called: 6
;; This function calls:
;;		_SYSTEM_Initialize
;;		_UART2_Initialize
;;		_printf
;;		_random_number
;;		_srand
;;		_time
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	43
global __ptext0
__ptext0:
psect	text0
	file	"main.c"
	line	43
	
_main:
;incstack = 0
	callstack 25
	line	45
	
l1887:
;main.c: 45:     SYSTEM_Initialize();
	call	_SYSTEM_Initialize	;wreg free
	line	46
;main.c: 46:     UART2_Initialize();
	call	_UART2_Initialize	;wreg free
	line	47
	
l1889:
;main.c: 47:     srand(time(((void*)0)));
		movlw	low(0)
	movwf	((c:time@t))^00h,c
	movlw	high(0)
	movwf	((c:time@t+1))^00h,c

	call	_time	;wreg free
	movff	0+?_time,(c:srand@s)
	movff	1+?_time,(c:srand@s+1)
	call	_srand	;wreg free
	line	62
	
l1891:
;main.c: 61:     {;main.c: 62:         printf("Hello World...\r\n");
		movlw	low(STR_1)
	movwf	((c:printf@fmt))^00h,c

	call	_printf	;wreg free
	line	63
	
l1893:
;main.c: 63:         printf("Min: 1 Max: 40 %d\r\n", random_number(1,40));
		movlw	low(STR_2)
	movwf	((c:printf@fmt))^00h,c

	movlw	high(01h)
	movwf	((c:random_number@min_num+1))^00h,c
	movlw	low(01h)
	movwf	((c:random_number@min_num))^00h,c
	movlw	high(028h)
	movwf	((c:random_number@max_num+1))^00h,c
	movlw	low(028h)
	movwf	((c:random_number@max_num))^00h,c
	call	_random_number	;wreg free
	movff	0+?_random_number,0+((c:?_printf)+01h)
	movff	1+?_random_number,1+((c:?_printf)+01h)
	call	_printf	;wreg free
	line	64
	
l1895:
;main.c: 64:         printf("Min: 100 Max: 1000 %d\r\n", random_number(100,1000));
		movlw	low(STR_3)
	movwf	((c:printf@fmt))^00h,c

	movlw	high(064h)
	movwf	((c:random_number@min_num+1))^00h,c
	movlw	low(064h)
	movwf	((c:random_number@min_num))^00h,c
	movlw	high(03E8h)
	movwf	((c:random_number@max_num+1))^00h,c
	movlw	low(03E8h)
	movwf	((c:random_number@max_num))^00h,c
	call	_random_number	;wreg free
	movff	0+?_random_number,0+((c:?_printf)+01h)
	movff	1+?_random_number,1+((c:?_printf)+01h)
	call	_printf	;wreg free
	line	65
	
l1897:
;main.c: 65:         _delay((unsigned long)((500)*(64000000/4000.0)));
	asmopt push
asmopt off
movlw  41
movwf	(??_main+0+0+1)^00h,c
movlw	150
movwf	(??_main+0+0)^00h,c
	movlw	127
u957:
decfsz	wreg,f
	bra	u957
	decfsz	(??_main+0+0)^00h,c,f
	bra	u957
	decfsz	(??_main+0+0+1)^00h,c,f
	bra	u957
	nop
asmopt pop

	line	66
	
l1899:
;main.c: 66:         PORTBbits.RB1 ^= 1;
	btg	((c:16331))^03f00h,c,1	;volatile
	goto	l1891
	global	start
	goto	start
	callstack 0
	line	68
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_time

;; *************** function _time *****************
;; Defined at:
;;		line 3 in file "C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\time.c"
;; Parameters:    Size  Location     Type
;;  t               2    0[COMRAM] PTR unsigned long 
;;		 -> NULL(0), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4    0[COMRAM] unsigned long 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2,group=3
	file	"C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\time.c"
	line	3
global __ptext1
__ptext1:
psect	text1
	file	"C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\time.c"
	line	3
	
_time:
;incstack = 0
	callstack 30
	line	5
	
l1853:
	movf	((c:time@t))^00h,c,w
iorwf	((c:time@t+1))^00h,c,w
	btfsc	status,2
	goto	u931
	goto	u930

u931:
	goto	l1857
u930:
	line	6
	
l1855:
	movff	(c:time@t),fsr2l
	movff	(c:time@t+1),fsr2h
	movlw	low(0FFFFFFFFh)
	movwf	postinc2,c
	movlw	high(0FFFFFFFFh)
	movwf	postinc2,c
	movlw	low highword(0FFFFFFFFh)
	movwf	postinc2,c
	movlw	high highword(0FFFFFFFFh)
	movwf	postdec2,c

	line	8
	
l1857:
	setf	((c:?_time))^00h,c
	setf	((c:?_time+1))^00h,c
	setf	((c:?_time+2))^00h,c
	setf	((c:?_time+3))^00h,c
	line	9
	
l1197:
	return	;funcret
	callstack 0
GLOBAL	__end_of_time
	__end_of_time:
	signat	_time,4220
	global	_srand

;; *************** function _srand *****************
;; Defined at:
;;		line 6 in file "C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\rand.c"
;; Parameters:    Size  Location     Type
;;  s               2    4[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2,group=3
	file	"C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\rand.c"
	line	6
global __ptext2
__ptext2:
psect	text2
	file	"C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\rand.c"
	line	6
	
_srand:
;incstack = 0
	callstack 30
	line	8
	
l1861:
	movlw	low(0FFFFh)
	addwf	((c:srand@s))^00h,c,w
	movwf	(??_srand+0+0)^00h,c
	movlw	high(0FFFFh)
	addwfc	((c:srand@s+1))^00h,c,w
	movwf	1+(??_srand+0+0)^00h,c
	movff	??_srand+0+0,(c:_seed)
	movff	??_srand+0+1,(c:_seed+1)
	clrf	((c:_seed+2))^00h,c
	clrf	((c:_seed+3))^00h,c
	line	9
	
l1190:
	return	;funcret
	callstack 0
GLOBAL	__end_of_srand
	__end_of_srand:
	signat	_srand,4217
	global	_random_number

;; *************** function _random_number *****************
;; Defined at:
;;		line 70 in file "main.c"
;; Parameters:    Size  Location     Type
;;  min_num         2   24[COMRAM] int 
;;  max_num         2   26[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  low_num         2   33[COMRAM] int 
;;  hi_num          2   31[COMRAM] int 
;;  result          2   29[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  2   24[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        11       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___awmod
;;		_rand
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	70
global __ptext3
__ptext3:
psect	text3
	file	"main.c"
	line	70
	
_random_number:
;incstack = 0
	callstack 28
	line	71
	
l1869:
	movlw	high(0)
	movwf	((c:random_number@low_num+1))^00h,c
	movlw	low(0)
	movwf	((c:random_number@low_num))^00h,c
	movlw	high(0)
	movwf	((c:random_number@hi_num+1))^00h,c
	movlw	low(0)
	movwf	((c:random_number@hi_num))^00h,c
	line	73
	
l1871:
;main.c: 73:     if (min_num < max_num) {
		movf	((c:random_number@max_num))^00h,c,w
	subwf	((c:random_number@min_num))^00h,c,w
	movf	((c:random_number@min_num+1))^00h,c,w
	xorlw	80h
	movwf	(??_random_number+0+0)^00h,c
	movf	((c:random_number@max_num+1))^00h,c,w
	xorlw	80h
	subwfb	(??_random_number+0+0)^00h,c,w
	btfsc	status,0
	goto	u941
	goto	u940

u941:
	goto	l1877
u940:
	line	74
	
l1873:
;main.c: 74:         low_num = min_num;
	movff	(c:random_number@min_num),(c:random_number@low_num)
	movff	(c:random_number@min_num+1),(c:random_number@low_num+1)
	line	75
	
l1875:
;main.c: 75:         hi_num = max_num + 1;
	movlw	low(01h)
	addwf	((c:random_number@max_num))^00h,c,w
	movwf	((c:random_number@hi_num))^00h,c
	movlw	high(01h)
	addwfc	((c:random_number@max_num+1))^00h,c,w
	movwf	1+((c:random_number@hi_num))^00h,c
	line	76
;main.c: 76:     } else {
	goto	l1881
	line	77
	
l1877:
;main.c: 77:         low_num = max_num + 1;
	movlw	low(01h)
	addwf	((c:random_number@max_num))^00h,c,w
	movwf	((c:random_number@low_num))^00h,c
	movlw	high(01h)
	addwfc	((c:random_number@max_num+1))^00h,c,w
	movwf	1+((c:random_number@low_num))^00h,c
	line	78
	
l1879:
;main.c: 78:         hi_num = min_num;
	movff	(c:random_number@min_num),(c:random_number@hi_num)
	movff	(c:random_number@min_num+1),(c:random_number@hi_num+1)
	line	81
	
l1881:
;main.c: 81:     result = (rand() % (hi_num - low_num)) + low_num;
	call	_rand	;wreg free
	movff	0+?_rand,(c:___awmod@dividend)
	movff	1+?_rand,(c:___awmod@dividend+1)
	movf	((c:random_number@low_num))^00h,c,w
	subwf	((c:random_number@hi_num))^00h,c,w
	movwf	((c:___awmod@divisor))^00h,c
	movf	((c:random_number@low_num+1))^00h,c,w
	subwfb	((c:random_number@hi_num+1))^00h,c,w
	movwf	1+((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	((c:random_number@low_num))^00h,c,w
	addwf	(0+?___awmod)^00h,c,w
	movwf	((c:random_number@result))^00h,c
	movf	((c:random_number@low_num+1))^00h,c,w
	addwfc	(1+?___awmod)^00h,c,w
	movwf	1+((c:random_number@result))^00h,c
	line	82
	
l1883:
;main.c: 82:     return result;
	movff	(c:random_number@result),(c:?_random_number)
	movff	(c:random_number@result+1),(c:?_random_number+1)
	line	83
	
l433:
	return	;funcret
	callstack 0
GLOBAL	__end_of_random_number
	__end_of_random_number:
	signat	_random_number,8314
	global	_rand

;; *************** function _rand *****************
;; Defined at:
;;		line 11 in file "C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\rand.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2   12[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		___lmul
;; This function is called by:
;;		_random_number
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2,group=3
	file	"C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\rand.c"
	line	11
global __ptext4
__ptext4:
psect	text4
	file	"C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\rand.c"
	line	11
	
_rand:
;incstack = 0
	callstack 28
	line	13
	
l1831:
	movff	(c:_seed),(c:___lmul@multiplier)
	movff	(c:_seed+1),(c:___lmul@multiplier+1)
	movff	(c:_seed+2),(c:___lmul@multiplier+2)
	movff	(c:_seed+3),(c:___lmul@multiplier+3)
	movlw	low(04C957F2Dh)
	movwf	((c:___lmul@multiplicand))^00h,c
	movlw	high(04C957F2Dh)
	movwf	((c:___lmul@multiplicand+1))^00h,c
	movlw	low highword(04C957F2Dh)
	movwf	((c:___lmul@multiplicand+2))^00h,c
	movlw	high highword(04C957F2Dh)
	movwf	((c:___lmul@multiplicand+3))^00h,c
	call	___lmul	;wreg free
	movlw	01h
	addwf	(0+?___lmul)^00h,c,w
	movwf	((c:_seed))^00h,c
	movlw	0
	addwfc	(1+?___lmul)^00h,c,w
	movwf	1+((c:_seed))^00h,c
	
	movlw	0
	addwfc	(2+?___lmul)^00h,c,w
	movwf	2+((c:_seed))^00h,c
	
	movlw	0
	addwfc	(3+?___lmul)^00h,c,w
	movwf	3+((c:_seed))^00h,c
	line	14
	
l1833:
	movff	(c:_seed),??_rand+0+0
	movff	(c:_seed+1),??_rand+0+0+1
	movff	(c:_seed+2),??_rand+0+0+2
	movff	(c:_seed+3),??_rand+0+0+3
	movlw	011h+1
	goto	u910
u915:
	bcf	status,0
	rrcf	(??_rand+0+3)^00h,c
	rrcf	(??_rand+0+2)^00h,c
	rrcf	(??_rand+0+1)^00h,c
	rrcf	(??_rand+0+0)^00h,c
u910:
	decfsz	wreg
	goto	u915
	movff	??_rand+0+0,(c:?_rand)
	movff	??_rand+0+1,(c:?_rand+1)
	line	15
	
l1193:
	return	;funcret
	callstack 0
GLOBAL	__end_of_rand
	__end_of_rand:
	signat	_rand,90
	global	___lmul

;; *************** function ___lmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\Umul32.c"
;; Parameters:    Size  Location     Type
;;  multiplier      4    0[COMRAM] unsigned long 
;;  multiplicand    4    4[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;  product         4    8[COMRAM] unsigned long 
;; Return value:  Size  Location     Type
;;                  4    0[COMRAM] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         8       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_rand
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2,group=2
	file	"C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\Umul32.c"
	line	15
global __ptext5
__ptext5:
psect	text5
	file	"C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\Umul32.c"
	line	15
	
___lmul:
;incstack = 0
	callstack 28
	line	119
	
l1749:
	movlw	low(0)
	movwf	((c:___lmul@product))^00h,c
	movlw	high(0)
	movwf	((c:___lmul@product+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___lmul@product+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___lmul@product+3))^00h,c
	line	121
	
l1751:
	
	btfss	((c:___lmul@multiplier))^00h,c,(0)&7
	goto	u791
	goto	u790
u791:
	goto	l1755
u790:
	line	122
	
l1753:
	movf	((c:___lmul@multiplicand))^00h,c,w
	addwf	((c:___lmul@product))^00h,c
	movf	((c:___lmul@multiplicand+1))^00h,c,w
	addwfc	((c:___lmul@product+1))^00h,c
	movf	((c:___lmul@multiplicand+2))^00h,c,w
	addwfc	((c:___lmul@product+2))^00h,c
	movf	((c:___lmul@multiplicand+3))^00h,c,w
	addwfc	((c:___lmul@product+3))^00h,c
	line	123
	
l1755:
	bcf	status,0
	rlcf	((c:___lmul@multiplicand))^00h,c
	rlcf	((c:___lmul@multiplicand+1))^00h,c
	rlcf	((c:___lmul@multiplicand+2))^00h,c
	rlcf	((c:___lmul@multiplicand+3))^00h,c
	line	124
	
l1757:
	bcf	status,0
	rrcf	((c:___lmul@multiplier+3))^00h,c
	rrcf	((c:___lmul@multiplier+2))^00h,c
	rrcf	((c:___lmul@multiplier+1))^00h,c
	rrcf	((c:___lmul@multiplier))^00h,c
	line	125
	movf	((c:___lmul@multiplier))^00h,c,w
iorwf	((c:___lmul@multiplier+1))^00h,c,w
iorwf	((c:___lmul@multiplier+2))^00h,c,w
iorwf	((c:___lmul@multiplier+3))^00h,c,w
	btfss	status,2
	goto	u801
	goto	u800

u801:
	goto	l1751
u800:
	
l447:
	line	128
	movff	(c:___lmul@product),(c:?___lmul)
	movff	(c:___lmul@product+1),(c:?___lmul+1)
	movff	(c:___lmul@product+2),(c:?___lmul+2)
	movff	(c:___lmul@product+3),(c:?___lmul+3)
	line	129
	
l448:
	return	;funcret
	callstack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
	signat	___lmul,8316
	global	_printf

;; *************** function _printf *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\printf.c"
;; Parameters:    Size  Location     Type
;;  fmt             1   45[COMRAM] PTR const unsigned char 
;;		 -> STR_3(24), STR_2(20), STR_1(17), 
;; Auto vars:     Size  Location     Type
;;  ret             2    0        int 
;;  ap              1   48[COMRAM] PTR void [1]
;;		 -> ?_printf(2), 
;; Return value:  Size  Location     Type
;;                  2   45[COMRAM] int 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_vfprintf
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2,group=3
	file	"C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\printf.c"
	line	5
global __ptext6
__ptext6:
psect	text6
	file	"C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\printf.c"
	line	5
	
_printf:
;incstack = 0
	callstack 25
	line	9
	
l1863:
		movlw	low(?_printf+01h)
	movwf	((c:printf@ap))^00h,c

	line	10
	
l1865:
		movlw	low(0)
	movwf	((c:vfprintf@fp))^00h,c
	movlw	high(0)
	movwf	((c:vfprintf@fp+1))^00h,c

		movff	(c:printf@fmt),(c:vfprintf@fmt)

		movlw	low(printf@ap)
	movwf	((c:vfprintf@ap))^00h,c

	call	_vfprintf	;wreg free
	line	13
	
l1114:
	return	;funcret
	callstack 0
GLOBAL	__end_of_printf
	__end_of_printf:
	signat	_printf,602
	global	_vfprintf

;; *************** function _vfprintf *****************
;; Defined at:
;;		line 1817 in file "C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  fp              2   40[COMRAM] PTR struct _IO_FILE
;;		 -> NULL(0), 
;;  fmt             1   42[COMRAM] PTR const unsigned char 
;;		 -> STR_3(24), STR_2(20), STR_1(17), 
;;  ap              1   43[COMRAM] PTR PTR void 
;;		 -> printf@ap(1), 
;; Auto vars:     Size  Location     Type
;;  cfmt            1   44[COMRAM] PTR unsigned char 
;;		 -> STR_3(24), STR_2(20), STR_1(17), 
;; Return value:  Size  Location     Type
;;                  2   40[COMRAM] int 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_vfpfcnvrt
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\doprnt.c"
	line	1817
global __ptext7
__ptext7:
psect	text7
	file	"C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\doprnt.c"
	line	1817
	
_vfprintf:
;incstack = 0
	callstack 25
	line	1822
	
l1837:
;C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\doprnt.c: 1817: int vfprintf(FILE *fp, const char *fmt, va_list ap);C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\doprnt.c: 1818: {;C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\doprnt.c: 1820:     char *cfmt;;C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\doprnt.c: 1822:     cfmt = (char *)fmt;
		movff	(c:vfprintf@fmt),(c:vfprintf@cfmt)

	line	1826
;C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\doprnt.c: 1826:     while (*cfmt) {
	goto	l1841
	line	1830
	
l1839:
;C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\doprnt.c: 1830:    vfpfcnvrt(fp, &cfmt, ap);
		movff	(c:vfprintf@fp),(c:vfpfcnvrt@fp)
	movff	(c:vfprintf@fp+1),(c:vfpfcnvrt@fp+1)

		movlw	low(vfprintf@cfmt)
	movwf	((c:vfpfcnvrt@fmt))^00h,c

		movff	(c:vfprintf@ap),(c:vfpfcnvrt@ap)

	call	_vfpfcnvrt	;wreg free
	line	1826
	
l1841:
;C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\doprnt.c: 1826:     while (*cfmt) {
	movff	(c:vfprintf@cfmt),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	1	;Program memory is > 0xFFFF, there are 3 active tblptr bytes
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	iorlw	0
	btfss	status,2
	goto	u921
	goto	u920
u921:
	goto	l1839
u920:
	line	1835
	
l1843:
;C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\doprnt.c: 1835:  return 0;
	movlw	high(0)
	movwf	((c:?_vfprintf+1))^00h,c
	movlw	low(0)
	movwf	((c:?_vfprintf))^00h,c
	line	1840
	
l1158:
	return	;funcret
	callstack 0
GLOBAL	__end_of_vfprintf
	__end_of_vfprintf:
	signat	_vfprintf,12410
	global	_vfpfcnvrt

;; *************** function _vfpfcnvrt *****************
;; Defined at:
;;		line 1177 in file "C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  fp              2   28[COMRAM] PTR struct _IO_FILE
;;		 -> NULL(0), 
;;  fmt             1   30[COMRAM] PTR PTR unsigned char 
;;		 -> vfprintf@cfmt(1), 
;;  ap              1   31[COMRAM] PTR PTR void 
;;		 -> printf@ap(1), 
;; Auto vars:     Size  Location     Type
;;  convarg         4   35[COMRAM] struct .
;;  c               1   39[COMRAM] unsigned char 
;;  cp              1   34[COMRAM] PTR unsigned char 
;;		 -> STR_3(24), STR_2(20), STR_1(17), 
;;  done            1   33[COMRAM] _Bool 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         7       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		___awdiv
;;		___awmod
;;		_abs
;;		_fputc
;; This function is called by:
;;		_vfprintf
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2,group=1
	line	1177
global __ptext8
__ptext8:
psect	text8
	file	"C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\doprnt.c"
	line	1177
	
_vfpfcnvrt:
;incstack = 0
	callstack 25
	line	1201
	
l1759:
;C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\doprnt.c: 1177: vfpfcnvrt(FILE *fp, char *fmt[], va_list ap);C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\doprnt.c: 1178: {;C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\doprnt.c: 1179:     char c, *cp;;C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\doprnt.c: 1180:     _Bool done;;C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\doprnt.c: 1188:  } convarg;;C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\doprnt.c: 1201:     if ((*fmt)[0] == '%') {
	movf	((c:vfpfcnvrt@fmt))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movff	indf2,tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	1	;Program memory is > 0xFFFF, there are 3 active tblptr bytes
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	xorlw	025h
	btfss	status,2
	goto	u811
	goto	u810
u811:
	goto	l1803
u810:
	line	1202
	
l1761:
;C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\doprnt.c: 1202:         ++*fmt;
	movf	((c:vfpfcnvrt@fmt))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	incf	indf2

	line	1204
	
l1763:
;C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\doprnt.c: 1204:         flags = width = 0;
	movlw	high(0)
	movwf	((c:_width+1))^00h,c
	movlw	low(0)
	movwf	((c:_width))^00h,c
	movff	(c:_width),(c:_flags)
	line	1205
	
l1765:
;C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\doprnt.c: 1205:         prec = -1;
	setf	((c:_prec))^00h,c
	setf	((c:_prec+1))^00h,c
	line	1291
	
l1767:
;C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\doprnt.c: 1291:   cp = *fmt;
	movf	((c:vfpfcnvrt@fmt))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	((c:vfpfcnvrt@cp))^00h,c
	line	1361
	
l1769:
;C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\doprnt.c: 1361:   if (*cp == 'd' || *cp == 'i') {
	movff	(c:vfpfcnvrt@cp),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	1	;Program memory is > 0xFFFF, there are 3 active tblptr bytes
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	xorlw	064h
	btfsc	status,2
	goto	u821
	goto	u820
u821:
	goto	l1773
u820:
	
l1771:
	movff	(c:vfpfcnvrt@cp),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	1	;Program memory is > 0xFFFF, there are 3 active tblptr bytes
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	xorlw	069h
	btfss	status,2
	goto	u831
	goto	u830
u831:
	goto	l1799
u830:
	line	1404
	
l1773:
;C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\doprnt.c: 1404:    convarg.sint = (vfpf_sint_t)(int)(*(int *)__va_arg(*(int **)ap, (int)0));
	movf	((c:vfpfcnvrt@ap))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	02h
	addwf	indf2,f
	subwf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(c:vfpfcnvrt@convarg)
	movff	postinc2,(c:vfpfcnvrt@convarg+1)
	line	1406
	
l1775:
;C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\doprnt.c: 1406:    *fmt = cp+1;
	movf	((c:vfpfcnvrt@fmt))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	incf	((c:vfpfcnvrt@cp))^00h,c,w
	movwf	indf2,c

	line	1408
	
l1777:
;C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\doprnt.c: 1408:    c = sizeof(dbuf);
	movlw	low(020h)
	movwf	((c:vfpfcnvrt@c))^00h,c
	line	1409
;C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\doprnt.c: 1409:    done = convarg.sint < 0;
	btfsc	((c:vfpfcnvrt@convarg+1))^00h,c,7
	goto	u841
	goto	u840

u841:
	movlw	1
	goto	u850
u840:
	movlw	0
u850:
	movwf	((c:vfpfcnvrt@done))^00h,c
	line	1411
	
l1779:
;C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\doprnt.c: 1411:     dbuf[--c] = abs(convarg.sint % 10) + '0';
	decf	((c:vfpfcnvrt@c))^00h,c
	movf	((c:vfpfcnvrt@c))^00h,c,w
	addlw	low(_dbuf)
	movwf	fsr2l
	clrf	fsr2h
	movff	(c:vfpfcnvrt@convarg),(c:___awmod@dividend)
	movff	(c:vfpfcnvrt@convarg+1),(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movff	0+?___awmod,(c:abs@a)
	movff	1+?___awmod,(c:abs@a+1)
	call	_abs	;wreg free
	movf	(0+?_abs)^00h,c,w
	addlw	low(030h)
	movwf	indf2,c

	line	1412
	
l1781:
;C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\doprnt.c: 1412:     convarg.sint /= 10;
	movff	(c:vfpfcnvrt@convarg),(c:___awdiv@dividend)
	movff	(c:vfpfcnvrt@convarg+1),(c:___awdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor))^00h,c
	call	___awdiv	;wreg free
	movff	0+?___awdiv,(c:vfpfcnvrt@convarg)
	movff	1+?___awdiv,(c:vfpfcnvrt@convarg+1)
	line	1416
	
l1783:
;C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\doprnt.c: 1416:    } while (convarg.sint != 0 && c != 0);
	movf	((c:vfpfcnvrt@convarg))^00h,c,w
iorwf	((c:vfpfcnvrt@convarg+1))^00h,c,w
	btfsc	status,2
	goto	u861
	goto	u860

u861:
	goto	l1787
u860:
	
l1785:
	movf	((c:vfpfcnvrt@c))^00h,c,w
	btfss	status,2
	goto	u871
	goto	u870
u871:
	goto	l1779
u870:
	line	1417
	
l1787:
;C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\doprnt.c: 1417:    if (c != 0 && done) {
	movf	((c:vfpfcnvrt@c))^00h,c,w
	btfsc	status,2
	goto	u881
	goto	u880
u881:
	goto	l1797
u880:
	
l1789:
	movf	((c:vfpfcnvrt@done))^00h,c,w
	btfsc	status,2
	goto	u891
	goto	u890
u891:
	goto	l1797
u890:
	line	1418
	
l1791:
;C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\doprnt.c: 1418:     dbuf[--c] = '-';
	decf	((c:vfpfcnvrt@c))^00h,c
	movf	((c:vfpfcnvrt@c))^00h,c,w
	addlw	low(_dbuf)
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02Dh)
	movwf	indf2
	goto	l1797
	line	1424
	
l1793:
;C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\doprnt.c: 1424:     fputc(dbuf[c++], fp);
	movf	((c:vfpfcnvrt@c))^00h,c,w
	addlw	low(_dbuf)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(??_vfpfcnvrt+0+0)^00h,c
	movf	((??_vfpfcnvrt+0+0))^00h,c,w
	movwf	((c:fputc@c))^00h,c
	clrf	((c:fputc@c+1))^00h,c
		movff	(c:vfpfcnvrt@fp),(c:fputc@fp)
	movff	(c:vfpfcnvrt@fp+1),(c:fputc@fp+1)

	call	_fputc	;wreg free
	
l1795:
	incf	((c:vfpfcnvrt@c))^00h,c
	line	1423
	
l1797:
;C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\doprnt.c: 1423:    while (c != sizeof(dbuf)) {
		movlw	32
	xorwf	((c:vfpfcnvrt@c))^00h,c,w
	btfss	status,2
	goto	u901
	goto	u900

u901:
	goto	l1793
u900:
	goto	l1152
	line	1806
	
l1799:
;C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\doprnt.c: 1806:         ++*fmt;
	movf	((c:vfpfcnvrt@fmt))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	incf	indf2

	goto	l1152
	line	1811
	
l1803:
;C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\doprnt.c: 1811:     fputc((int)(*fmt)[0], fp);
	movf	((c:vfpfcnvrt@fmt))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movff	indf2,tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	1	;Program memory is > 0xFFFF, there are 3 active tblptr bytes
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w

	movwf	((c:fputc@c))^00h,c
	clrf	((c:fputc@c+1))^00h,c
		movff	(c:vfpfcnvrt@fp),(c:fputc@fp)
	movff	(c:vfpfcnvrt@fp+1),(c:fputc@fp+1)

	call	_fputc	;wreg free
	goto	l1799
	line	1814
	
l1152:
	return	;funcret
	callstack 0
GLOBAL	__end_of_vfpfcnvrt
	__end_of_vfpfcnvrt:
	signat	_vfpfcnvrt,12409
	global	_fputc

;; *************** function _fputc *****************
;; Defined at:
;;		line 8 in file "C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\nf_fputc.c"
;; Parameters:    Size  Location     Type
;;  c               2    2[COMRAM] int 
;;  fp              2    4[COMRAM] PTR struct _IO_FILE
;;		 -> NULL(0), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    2[COMRAM] int 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_putch
;; This function is called by:
;;		_vfpfcnvrt
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2,group=3
	file	"C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\nf_fputc.c"
	line	8
global __ptext9
__ptext9:
psect	text9
	file	"C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\nf_fputc.c"
	line	8
	
_fputc:
;incstack = 0
	callstack 25
	line	12
	
l1713:
	movf	((c:fputc@fp))^00h,c,w
iorwf	((c:fputc@fp+1))^00h,c,w
	btfsc	status,2
	goto	u711
	goto	u710

u711:
	goto	l1717
u710:
	
l1715:
	movf	((c:fputc@fp))^00h,c,w
iorwf	((c:fputc@fp+1))^00h,c,w
	btfss	status,2
	goto	u721
	goto	u720

u721:
	goto	l1719
u720:
	line	13
	
l1717:
	movf	((c:fputc@c))^00h,c,w
	
	call	_putch
	line	14
	goto	l1177
	line	15
	
l1719:
	lfsr	2,0Ah
	movf	((c:fputc@fp))^00h,c,w
	addwf	fsr2l
	movf	((c:fputc@fp+1))^00h,c,w
	addwfc	fsr2h
	movf	postinc2,w
iorwf	postinc2,w
	btfsc	status,2
	goto	u731
	goto	u730

u731:
	goto	l1723
u730:
	
l1721:
	lfsr	2,0Ah
	movf	((c:fputc@fp))^00h,c,w
	addwf	fsr2l
	movf	((c:fputc@fp+1))^00h,c,w
	addwfc	fsr2h
	lfsr	1,03h
	movf	((c:fputc@fp))^00h,c,w
	addwf	fsr1l
	movf	((c:fputc@fp+1))^00h,c,w
	addwfc	fsr1h
		movf	postinc2,w
	subwf	postinc1,w
	movf	postinc1,w
	xorlw	80h
	movwf	(??_fputc+4+0)^00h,c
	movf	postinc2,w
	xorlw	80h
	subwfb	(??_fputc+4+0)^00h,c,w
	btfsc	status,0
	goto	u741
	goto	u740

u741:
	goto	l1177
u740:
	line	18
	
l1723:
	lfsr	2,03h
	movf	((c:fputc@fp))^00h,c,w
	addwf	fsr2l
	movf	((c:fputc@fp+1))^00h,c,w
	addwfc	fsr2h
	movff	postinc2,??_fputc+0+0
	movff	postdec2,??_fputc+0+0+1
	movff	(c:fputc@fp),fsr2l
	movff	(c:fputc@fp+1),fsr2h
	movff	postinc2,??_fputc+2+0
	movff	postdec2,??_fputc+2+0+1
	movf	(??_fputc+0+0)^00h,c,w
	addwf	(??_fputc+2+0)^00h,c,w
	movwf	c:fsr2l
	movf	(??_fputc+0+1)^00h,c,w
	addwfc	(??_fputc+2+1)^00h,c,w
	movwf	1+c:fsr2l
	movff	(c:fputc@c),indf2

	line	20
	lfsr	2,03h
	movf	((c:fputc@fp))^00h,c,w
	addwf	fsr2l
	movf	((c:fputc@fp+1))^00h,c,w
	addwfc	fsr2h
	incf	postinc2
	movlw	0
	addwfc	postdec2
	line	24
	
l1177:
	return	;funcret
	callstack 0
GLOBAL	__end_of_fputc
	__end_of_fputc:
	signat	_fputc,8314
	global	_putch

;; *************** function _putch *****************
;; Defined at:
;;		line 284 in file "mcc_generated_files/uart/src/uart2.c"
;; Parameters:    Size  Location     Type
;;  txData          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  txData          1    1[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_UART2_IsTxReady
;;		_UART2_Write
;; This function is called by:
;;		_fputc
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2,group=0
	file	"mcc_generated_files/uart/src/uart2.c"
	line	284
global __ptext10
__ptext10:
psect	text10
	file	"mcc_generated_files/uart/src/uart2.c"
	line	284
	
_putch:
;incstack = 0
	callstack 25
;putch@txData stored from wreg
	movwf	((c:putch@txData))^00h,c
	line	286
	
l1625:
;mcc_generated_files/uart/src/uart2.c: 284: void putch(char txData);mcc_generated_files/uart/src/uart2.c: 285: {;mcc_generated_files/uart/src/uart2.c: 286:     while(!(UART2_IsTxReady()));
	
l1627:
	call	_UART2_IsTxReady	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u581
	goto	u580
u581:
	goto	l1627
u580:
	line	287
	
l1629:
;mcc_generated_files/uart/src/uart2.c: 287:     return UART2_Write(txData);;	Return value of _putch is never used
	movf	((c:putch@txData))^00h,c,w
	
	call	_UART2_Write
	line	288
	
l381:
	return	;funcret
	callstack 0
GLOBAL	__end_of_putch
	__end_of_putch:
	signat	_putch,4217
	global	_UART2_Write

;; *************** function _UART2_Write *****************
;; Defined at:
;;		line 272 in file "mcc_generated_files/uart/src/uart2.c"
;; Parameters:    Size  Location     Type
;;  txData          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  txData          1    0[COMRAM] unsigned char 
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
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_putch
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2,group=0
	line	272
global __ptext11
__ptext11:
psect	text11
	file	"mcc_generated_files/uart/src/uart2.c"
	line	272
	
_UART2_Write:
;incstack = 0
	callstack 25
;UART2_Write@txData stored from wreg
	movwf	((c:UART2_Write@txData))^00h,c
	line	274
	
l1623:
;mcc_generated_files/uart/src/uart2.c: 272: void UART2_Write(uint8_t txData);mcc_generated_files/uart/src/uart2.c: 273: {;mcc_generated_files/uart/src/uart2.c: 274:     U2TXB = txData;
	movff	(c:UART2_Write@txData),(15826)	;volatile
	line	275
	
l369:
	return	;funcret
	callstack 0
GLOBAL	__end_of_UART2_Write
	__end_of_UART2_Write:
	signat	_UART2_Write,4217
	global	_UART2_IsTxReady

;; *************** function _UART2_IsTxReady *****************
;; Defined at:
;;		line 232 in file "mcc_generated_files/uart/src/uart2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      _Bool 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_putch
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2,group=0
	line	232
global __ptext12
__ptext12:
psect	text12
	file	"mcc_generated_files/uart/src/uart2.c"
	line	232
	
_UART2_IsTxReady:
;incstack = 0
	callstack 25
	line	234
	
l1613:
;mcc_generated_files/uart/src/uart2.c: 234:     return (_Bool)(U2FIFObits.TXBE && U2CON0bits.TXEN);
	movlw	low(0)
	movwf	((c:_UART2_IsTxReady$832))^00h,c
	
l1615:
	movlb	61	; () banked
	btfss	((15839))&0ffh,5	;volatile
	goto	u561
	goto	u560
u561:
	goto	l352
u560:
	
l1617:; BSR set to: 61

	btfss	((15834))&0ffh,5	;volatile
	goto	u571
	goto	u570
u571:
	goto	l352
u570:
	
l1619:; BSR set to: 61

	movlw	low(01h)
	movwf	((c:_UART2_IsTxReady$832))^00h,c
	
l352:; BSR set to: 61

	movf	((c:_UART2_IsTxReady$832))^00h,c,w
	line	235
	
l353:; BSR set to: 61

	return	;funcret
	callstack 0
GLOBAL	__end_of_UART2_IsTxReady
	__end_of_UART2_IsTxReady:
	signat	_UART2_IsTxReady,89
	global	_abs

;; *************** function _abs *****************
;; Defined at:
;;		line 1 in file "C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\abs.c"
;; Parameters:    Size  Location     Type
;;  a               2   24[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2   24[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_vfpfcnvrt
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2,group=3
	file	"C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\abs.c"
	line	1
global __ptext13
__ptext13:
psect	text13
	file	"C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\abs.c"
	line	1
	
_abs:; BSR set to: 61

;incstack = 0
	callstack 27
	line	3
	
l1727:
	btfsc	((c:abs@a+1))^00h,c,7
	goto	u751
	goto	u750

u751:
	goto	l1162
u750:
	
l1729:
	movff	(c:abs@a),(c:?_abs)
	movff	(c:abs@a+1),(c:?_abs+1)
	goto	l1165
	
l1162:
	movff	(c:abs@a),??_abs+0+0
	movff	(c:abs@a+1),??_abs+0+0+1
	comf	(??_abs+0+0)^00h,c
	comf	(??_abs+0+1)^00h,c
	infsnz	(??_abs+0+0)^00h,c
	incf	(??_abs+0+1)^00h,c
	movff	??_abs+0+0,(c:?_abs)
	movff	??_abs+0+1,(c:?_abs+1)
	line	4
	
l1165:
	return	;funcret
	callstack 0
GLOBAL	__end_of_abs
	__end_of_abs:
	signat	_abs,4218
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 7 in file "C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        2   18[COMRAM] int 
;;  divisor         2   20[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   23[COMRAM] unsigned char 
;;  counter         1   22[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   18[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_random_number
;;		_vfpfcnvrt
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2,group=2
	file	"C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\awmod.c"
	line	7
global __ptext14
__ptext14:
psect	text14
	file	"C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\awmod.c"
	line	7
	
___awmod:
;incstack = 0
	callstack 29
	line	12
	
l1677:
	movlw	low(0)
	movwf	((c:___awmod@sign))^00h,c
	line	13
	
l1679:
	btfsc	((c:___awmod@dividend+1))^00h,c,7
	goto	u650
	goto	u651

u651:
	goto	l1685
u650:
	line	14
	
l1681:
	negf	((c:___awmod@dividend))^00h,c
	comf	((c:___awmod@dividend+1))^00h,c
	btfsc	status,0
	incf	((c:___awmod@dividend+1))^00h,c
	line	15
	
l1683:
	movlw	low(01h)
	movwf	((c:___awmod@sign))^00h,c
	line	17
	
l1685:
	btfsc	((c:___awmod@divisor+1))^00h,c,7
	goto	u660
	goto	u661

u661:
	goto	l1689
u660:
	line	18
	
l1687:
	negf	((c:___awmod@divisor))^00h,c
	comf	((c:___awmod@divisor+1))^00h,c
	btfsc	status,0
	incf	((c:___awmod@divisor+1))^00h,c
	line	19
	
l1689:
	movf	((c:___awmod@divisor))^00h,c,w
iorwf	((c:___awmod@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u671
	goto	u670

u671:
	goto	l1705
u670:
	line	20
	
l1691:
	movlw	low(01h)
	movwf	((c:___awmod@counter))^00h,c
	line	21
	goto	l1695
	line	22
	
l1693:
	bcf	status,0
	rlcf	((c:___awmod@divisor))^00h,c
	rlcf	((c:___awmod@divisor+1))^00h,c
	line	23
	incf	((c:___awmod@counter))^00h,c
	line	21
	
l1695:
	
	btfss	((c:___awmod@divisor+1))^00h,c,(15)&7
	goto	u681
	goto	u680
u681:
	goto	l1693
u680:
	line	26
	
l1697:
		movf	((c:___awmod@divisor))^00h,c,w
	subwf	((c:___awmod@dividend))^00h,c,w
	movf	((c:___awmod@divisor+1))^00h,c,w
	subwfb	((c:___awmod@dividend+1))^00h,c,w
	btfss	status,0
	goto	u691
	goto	u690

u691:
	goto	l1701
u690:
	line	27
	
l1699:
	movf	((c:___awmod@divisor))^00h,c,w
	subwf	((c:___awmod@dividend))^00h,c
	movf	((c:___awmod@divisor+1))^00h,c,w
	subwfb	((c:___awmod@dividend+1))^00h,c

	line	28
	
l1701:
	bcf	status,0
	rrcf	((c:___awmod@divisor+1))^00h,c
	rrcf	((c:___awmod@divisor))^00h,c
	line	29
	
l1703:
	decfsz	((c:___awmod@counter))^00h,c
	
	goto	l1697
	line	31
	
l1705:
	movf	((c:___awmod@sign))^00h,c,w
	btfsc	status,2
	goto	u701
	goto	u700
u701:
	goto	l1709
u700:
	line	32
	
l1707:
	negf	((c:___awmod@dividend))^00h,c
	comf	((c:___awmod@dividend+1))^00h,c
	btfsc	status,0
	incf	((c:___awmod@dividend+1))^00h,c
	line	33
	
l1709:
	movff	(c:___awmod@dividend),(c:?___awmod)
	movff	(c:___awmod@dividend+1),(c:?___awmod+1)
	line	34
	
l680:
	return	;funcret
	callstack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 7 in file "C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    0[COMRAM] int 
;;  divisor         2    2[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[COMRAM] int 
;;  sign            1    5[COMRAM] unsigned char 
;;  counter         1    4[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_vfpfcnvrt
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2,group=2
	file	"C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\awdiv.c"
	line	7
global __ptext15
__ptext15:
psect	text15
	file	"C:\Program Files\Microchip\xc8\v2.46\pic\sources\c99\common\awdiv.c"
	line	7
	
___awdiv:
;incstack = 0
	callstack 27
	line	13
	
l1633:
	movlw	low(0)
	movwf	((c:___awdiv@sign))^00h,c
	line	14
	
l1635:
	btfsc	((c:___awdiv@divisor+1))^00h,c,7
	goto	u590
	goto	u591

u591:
	goto	l1641
u590:
	line	15
	
l1637:
	negf	((c:___awdiv@divisor))^00h,c
	comf	((c:___awdiv@divisor+1))^00h,c
	btfsc	status,0
	incf	((c:___awdiv@divisor+1))^00h,c
	line	16
	
l1639:
	movlw	low(01h)
	movwf	((c:___awdiv@sign))^00h,c
	line	18
	
l1641:
	btfsc	((c:___awdiv@dividend+1))^00h,c,7
	goto	u600
	goto	u601

u601:
	goto	l1647
u600:
	line	19
	
l1643:
	negf	((c:___awdiv@dividend))^00h,c
	comf	((c:___awdiv@dividend+1))^00h,c
	btfsc	status,0
	incf	((c:___awdiv@dividend+1))^00h,c
	line	20
	
l1645:
	movlw	(01h)&0ffh
	xorwf	((c:___awdiv@sign))^00h,c
	line	22
	
l1647:
	movlw	high(0)
	movwf	((c:___awdiv@quotient+1))^00h,c
	movlw	low(0)
	movwf	((c:___awdiv@quotient))^00h,c
	line	23
	
l1649:
	movf	((c:___awdiv@divisor))^00h,c,w
iorwf	((c:___awdiv@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u611
	goto	u610

u611:
	goto	l1669
u610:
	line	24
	
l1651:
	movlw	low(01h)
	movwf	((c:___awdiv@counter))^00h,c
	line	25
	goto	l1655
	line	26
	
l1653:
	bcf	status,0
	rlcf	((c:___awdiv@divisor))^00h,c
	rlcf	((c:___awdiv@divisor+1))^00h,c
	line	27
	incf	((c:___awdiv@counter))^00h,c
	line	25
	
l1655:
	
	btfss	((c:___awdiv@divisor+1))^00h,c,(15)&7
	goto	u621
	goto	u620
u621:
	goto	l1653
u620:
	line	30
	
l1657:
	bcf	status,0
	rlcf	((c:___awdiv@quotient))^00h,c
	rlcf	((c:___awdiv@quotient+1))^00h,c
	line	31
	
l1659:
		movf	((c:___awdiv@divisor))^00h,c,w
	subwf	((c:___awdiv@dividend))^00h,c,w
	movf	((c:___awdiv@divisor+1))^00h,c,w
	subwfb	((c:___awdiv@dividend+1))^00h,c,w
	btfss	status,0
	goto	u631
	goto	u630

u631:
	goto	l1665
u630:
	line	32
	
l1661:
	movf	((c:___awdiv@divisor))^00h,c,w
	subwf	((c:___awdiv@dividend))^00h,c
	movf	((c:___awdiv@divisor+1))^00h,c,w
	subwfb	((c:___awdiv@dividend+1))^00h,c

	line	33
	
l1663:
	bsf	(0+(0/8)+(c:___awdiv@quotient))^00h,c,(0)&7
	line	35
	
l1665:
	bcf	status,0
	rrcf	((c:___awdiv@divisor+1))^00h,c
	rrcf	((c:___awdiv@divisor))^00h,c
	line	36
	
l1667:
	decfsz	((c:___awdiv@counter))^00h,c
	
	goto	l1657
	line	38
	
l1669:
	movf	((c:___awdiv@sign))^00h,c,w
	btfsc	status,2
	goto	u641
	goto	u640
u641:
	goto	l1673
u640:
	line	39
	
l1671:
	negf	((c:___awdiv@quotient))^00h,c
	comf	((c:___awdiv@quotient+1))^00h,c
	btfsc	status,0
	incf	((c:___awdiv@quotient+1))^00h,c
	line	40
	
l1673:
	movff	(c:___awdiv@quotient),(c:?___awdiv)
	movff	(c:___awdiv@quotient+1),(c:?___awdiv+1)
	line	41
	
l667:
	return	;funcret
	callstack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_SYSTEM_Initialize

;; *************** function _SYSTEM_Initialize *****************
;; Defined at:
;;		line 40 in file "mcc_generated_files/system/src/system.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
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
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_CLOCK_Initialize
;;		_INTERRUPT_Initialize
;;		_PIN_MANAGER_Initialize
;;		_UART2_Initialize
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2,group=0
	file	"mcc_generated_files/system/src/system.c"
	line	40
global __ptext16
__ptext16:
psect	text16
	file	"mcc_generated_files/system/src/system.c"
	line	40
	
_SYSTEM_Initialize:
;incstack = 0
	callstack 28
	line	42
	
l1847:
;mcc_generated_files/system/src/system.c: 42:     CLOCK_Initialize();
	call	_CLOCK_Initialize	;wreg free
	line	43
;mcc_generated_files/system/src/system.c: 43:     PIN_MANAGER_Initialize();
	call	_PIN_MANAGER_Initialize	;wreg free
	line	44
	
l1849:
;mcc_generated_files/system/src/system.c: 44:     UART2_Initialize();
	call	_UART2_Initialize	;wreg free
	line	45
	
l1851:
;mcc_generated_files/system/src/system.c: 45:     INTERRUPT_Initialize();
	call	_INTERRUPT_Initialize	;wreg free
	line	46
	
l11:
	return	;funcret
	callstack 0
GLOBAL	__end_of_SYSTEM_Initialize
	__end_of_SYSTEM_Initialize:
	signat	_SYSTEM_Initialize,89
	global	_UART2_Initialize

;; *************** function _UART2_Initialize *****************
;; Defined at:
;;		line 95 in file "mcc_generated_files/uart/src/uart2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
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
;;		_UART2_FramingErrorCallbackRegister
;;		_UART2_OverrunErrorCallbackRegister
;;		_UART2_ParityErrorCallbackRegister
;; This function is called by:
;;		_SYSTEM_Initialize
;;		_main
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2,group=0
	file	"mcc_generated_files/uart/src/uart2.c"
	line	95
global __ptext17
__ptext17:
psect	text17
	file	"mcc_generated_files/uart/src/uart2.c"
	line	95
	
_UART2_Initialize:
;incstack = 0
	callstack 29
	line	101
	
l1809:
;mcc_generated_files/uart/src/uart2.c: 101:     U2RXB = 0x0;
	movlw	low(0)
	movlb	61	; () banked
	movwf	((15824))&0ffh	;volatile
	line	103
;mcc_generated_files/uart/src/uart2.c: 103:     U2TXB = 0x0;
	movlw	low(0)
	movwf	((15826))&0ffh	;volatile
	line	105
;mcc_generated_files/uart/src/uart2.c: 105:     U2P1L = 0x0;
	movlw	low(0)
	movwf	((15828))&0ffh	;volatile
	line	107
;mcc_generated_files/uart/src/uart2.c: 107:     U2P2L = 0x0;
	movlw	low(0)
	movwf	((15830))&0ffh	;volatile
	line	109
;mcc_generated_files/uart/src/uart2.c: 109:     U2P3L = 0x0;
	movlw	low(0)
	movwf	((15832))&0ffh	;volatile
	line	111
;mcc_generated_files/uart/src/uart2.c: 111:     U2CON0 = 0xB0;
	movlw	low(0B0h)
	movwf	((15834))&0ffh	;volatile
	line	113
;mcc_generated_files/uart/src/uart2.c: 113:     U2CON1 = 0x80;
	movlw	low(080h)
	movwf	((15835))&0ffh	;volatile
	line	115
;mcc_generated_files/uart/src/uart2.c: 115:     U2CON2 = 0x0;
	movlw	low(0)
	movwf	((15836))&0ffh	;volatile
	line	117
;mcc_generated_files/uart/src/uart2.c: 117:     U2BRGL = 0x82;
	movlw	low(082h)
	movwf	((15837))&0ffh	;volatile
	line	119
;mcc_generated_files/uart/src/uart2.c: 119:     U2BRGH = 0x6;
	movlw	low(06h)
	movwf	((15838))&0ffh	;volatile
	line	121
;mcc_generated_files/uart/src/uart2.c: 121:     U2FIFO = 0x2E;
	movlw	low(02Eh)
	movwf	((15839))&0ffh	;volatile
	line	123
;mcc_generated_files/uart/src/uart2.c: 123:     U2UIR = 0x0;
	movlw	low(0)
	movwf	((15840))&0ffh	;volatile
	line	125
;mcc_generated_files/uart/src/uart2.c: 125:     U2ERRIR = 0x80;
	movlw	low(080h)
	movwf	((15841))&0ffh	;volatile
	line	127
;mcc_generated_files/uart/src/uart2.c: 127:     U2ERRIE = 0x0;
	movlw	low(0)
	movwf	((15842))&0ffh	;volatile
	line	129
	
l1811:; BSR set to: 61

;mcc_generated_files/uart/src/uart2.c: 129:     UART2_FramingErrorCallbackRegister(UART2_DefaultFramingErrorCallback);
		movlw	low(_UART2_DefaultFramingErrorCallback)
	movwf	((c:UART2_FramingErrorCallbackRegister@callbackHandler))^00h,c
	movlw	high(_UART2_DefaultFramingErrorCallback)
	movwf	((c:UART2_FramingErrorCallbackRegister@callbackHandler+1))^00h,c
	movlw	low highword(_UART2_DefaultFramingErrorCallback)
	movwf	((c:UART2_FramingErrorCallbackRegister@callbackHandler+2))^00h,c

	call	_UART2_FramingErrorCallbackRegister	;wreg free
	line	130
	
l1813:
;mcc_generated_files/uart/src/uart2.c: 130:     UART2_OverrunErrorCallbackRegister(UART2_DefaultOverrunErrorCallback);
		movlw	low(_UART2_DefaultOverrunErrorCallback)
	movwf	((c:UART2_OverrunErrorCallbackRegister@callbackHandler))^00h,c
	movlw	high(_UART2_DefaultOverrunErrorCallback)
	movwf	((c:UART2_OverrunErrorCallbackRegister@callbackHandler+1))^00h,c
	movlw	low highword(_UART2_DefaultOverrunErrorCallback)
	movwf	((c:UART2_OverrunErrorCallbackRegister@callbackHandler+2))^00h,c

	call	_UART2_OverrunErrorCallbackRegister	;wreg free
	line	131
	
l1815:
;mcc_generated_files/uart/src/uart2.c: 131:     UART2_ParityErrorCallbackRegister(UART2_DefaultParityErrorCallback);
		movlw	low(_UART2_DefaultParityErrorCallback)
	movwf	((c:UART2_ParityErrorCallbackRegister@callbackHandler))^00h,c
	movlw	high(_UART2_DefaultParityErrorCallback)
	movwf	((c:UART2_ParityErrorCallbackRegister@callbackHandler+1))^00h,c
	movlw	low highword(_UART2_DefaultParityErrorCallback)
	movwf	((c:UART2_ParityErrorCallbackRegister@callbackHandler+2))^00h,c

	call	_UART2_ParityErrorCallbackRegister	;wreg free
	line	133
	
l1817:
;mcc_generated_files/uart/src/uart2.c: 133:     uart2RxLastError.status = 0;
	movlw	high(0)
	movwf	((c:_uart2RxLastError+1))^00h,c	;volatile
	movlw	low(0)
	movwf	((c:_uart2RxLastError))^00h,c	;volatile
	line	134
	
l301:
	return	;funcret
	callstack 0
GLOBAL	__end_of_UART2_Initialize
	__end_of_UART2_Initialize:
	signat	_UART2_Initialize,89
	global	_UART2_ParityErrorCallbackRegister

;; *************** function _UART2_ParityErrorCallbackRegister *****************
;; Defined at:
;;		line 325 in file "mcc_generated_files/uart/src/uart2.c"
;; Parameters:    Size  Location     Type
;;  callbackHand    3    0[COMRAM] PTR FTN()void 
;;		 -> UART2_DefaultParityErrorCallback(1), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_UART2_Initialize
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2,group=0
	line	325
global __ptext18
__ptext18:
psect	text18
	file	"mcc_generated_files/uart/src/uart2.c"
	line	325
	
_UART2_ParityErrorCallbackRegister:
;incstack = 0
	callstack 29
	line	327
	
l1745:
;mcc_generated_files/uart/src/uart2.c: 325: void UART2_ParityErrorCallbackRegister(void (* callbackHandler)(void));mcc_generated_files/uart/src/uart2.c: 326: {;mcc_generated_files/uart/src/uart2.c: 327:     if(((void*)0) != callbackHandler)
	movf	((c:UART2_ParityErrorCallbackRegister@callbackHandler))^00h,c,w
iorwf	((c:UART2_ParityErrorCallbackRegister@callbackHandler+1))^00h,c,w
iorwf	((c:UART2_ParityErrorCallbackRegister@callbackHandler+2))^00h,c,w
	btfsc	status,2
	goto	u781
	goto	u780

u781:
	goto	l402
u780:
	line	329
	
l1747:
;mcc_generated_files/uart/src/uart2.c: 328:     {;mcc_generated_files/uart/src/uart2.c: 329:         UART2_ParityErrorHandler = callbackHandler;
		movff	(c:UART2_ParityErrorCallbackRegister@callbackHandler),(c:_UART2_ParityErrorHandler)
	movff	(c:UART2_ParityErrorCallbackRegister@callbackHandler+1),(c:_UART2_ParityErrorHandler+1)
	movff	(c:UART2_ParityErrorCallbackRegister@callbackHandler+2),(c:_UART2_ParityErrorHandler+2)

	line	331
	
l402:
	return	;funcret
	callstack 0
GLOBAL	__end_of_UART2_ParityErrorCallbackRegister
	__end_of_UART2_ParityErrorCallbackRegister:
	signat	_UART2_ParityErrorCallbackRegister,4217
	global	_UART2_OverrunErrorCallbackRegister

;; *************** function _UART2_OverrunErrorCallbackRegister *****************
;; Defined at:
;;		line 317 in file "mcc_generated_files/uart/src/uart2.c"
;; Parameters:    Size  Location     Type
;;  callbackHand    3    0[COMRAM] PTR FTN()void 
;;		 -> UART2_DefaultOverrunErrorCallback(1), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_UART2_Initialize
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2,group=0
	line	317
global __ptext19
__ptext19:
psect	text19
	file	"mcc_generated_files/uart/src/uart2.c"
	line	317
	
_UART2_OverrunErrorCallbackRegister:
;incstack = 0
	callstack 29
	line	319
	
l1741:
;mcc_generated_files/uart/src/uart2.c: 317: void UART2_OverrunErrorCallbackRegister(void (* callbackHandler)(void));mcc_generated_files/uart/src/uart2.c: 318: {;mcc_generated_files/uart/src/uart2.c: 319:     if(((void*)0) != callbackHandler)
	movf	((c:UART2_OverrunErrorCallbackRegister@callbackHandler))^00h,c,w
iorwf	((c:UART2_OverrunErrorCallbackRegister@callbackHandler+1))^00h,c,w
iorwf	((c:UART2_OverrunErrorCallbackRegister@callbackHandler+2))^00h,c,w
	btfsc	status,2
	goto	u771
	goto	u770

u771:
	goto	l398
u770:
	line	321
	
l1743:
;mcc_generated_files/uart/src/uart2.c: 320:     {;mcc_generated_files/uart/src/uart2.c: 321:         UART2_OverrunErrorHandler = callbackHandler;
		movff	(c:UART2_OverrunErrorCallbackRegister@callbackHandler),(c:_UART2_OverrunErrorHandler)
	movff	(c:UART2_OverrunErrorCallbackRegister@callbackHandler+1),(c:_UART2_OverrunErrorHandler+1)
	movff	(c:UART2_OverrunErrorCallbackRegister@callbackHandler+2),(c:_UART2_OverrunErrorHandler+2)

	line	323
	
l398:
	return	;funcret
	callstack 0
GLOBAL	__end_of_UART2_OverrunErrorCallbackRegister
	__end_of_UART2_OverrunErrorCallbackRegister:
	signat	_UART2_OverrunErrorCallbackRegister,4217
	global	_UART2_FramingErrorCallbackRegister

;; *************** function _UART2_FramingErrorCallbackRegister *****************
;; Defined at:
;;		line 309 in file "mcc_generated_files/uart/src/uart2.c"
;; Parameters:    Size  Location     Type
;;  callbackHand    3    0[COMRAM] PTR FTN()void 
;;		 -> UART2_DefaultFramingErrorCallback(1), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_UART2_Initialize
;; This function uses a non-reentrant model
;;
psect	text20,class=CODE,space=0,reloc=2,group=0
	line	309
global __ptext20
__ptext20:
psect	text20
	file	"mcc_generated_files/uart/src/uart2.c"
	line	309
	
_UART2_FramingErrorCallbackRegister:
;incstack = 0
	callstack 29
	line	311
	
l1737:
;mcc_generated_files/uart/src/uart2.c: 309: void UART2_FramingErrorCallbackRegister(void (* callbackHandler)(void));mcc_generated_files/uart/src/uart2.c: 310: {;mcc_generated_files/uart/src/uart2.c: 311:     if(((void*)0) != callbackHandler)
	movf	((c:UART2_FramingErrorCallbackRegister@callbackHandler))^00h,c,w
iorwf	((c:UART2_FramingErrorCallbackRegister@callbackHandler+1))^00h,c,w
iorwf	((c:UART2_FramingErrorCallbackRegister@callbackHandler+2))^00h,c,w
	btfsc	status,2
	goto	u761
	goto	u760

u761:
	goto	l394
u760:
	line	313
	
l1739:
;mcc_generated_files/uart/src/uart2.c: 312:     {;mcc_generated_files/uart/src/uart2.c: 313:         UART2_FramingErrorHandler = callbackHandler;
		movff	(c:UART2_FramingErrorCallbackRegister@callbackHandler),(c:_UART2_FramingErrorHandler)
	movff	(c:UART2_FramingErrorCallbackRegister@callbackHandler+1),(c:_UART2_FramingErrorHandler+1)
	movff	(c:UART2_FramingErrorCallbackRegister@callbackHandler+2),(c:_UART2_FramingErrorHandler+2)

	line	315
	
l394:
	return	;funcret
	callstack 0
GLOBAL	__end_of_UART2_FramingErrorCallbackRegister
	__end_of_UART2_FramingErrorCallbackRegister:
	signat	_UART2_FramingErrorCallbackRegister,4217
	global	_PIN_MANAGER_Initialize

;; *************** function _PIN_MANAGER_Initialize *****************
;; Defined at:
;;		line 38 in file "mcc_generated_files/system/src/pins.c"
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SYSTEM_Initialize
;; This function uses a non-reentrant model
;;
psect	text21,class=CODE,space=0,reloc=2,group=0
	file	"mcc_generated_files/system/src/pins.c"
	line	38
global __ptext21
__ptext21:
psect	text21
	file	"mcc_generated_files/system/src/pins.c"
	line	38
	
_PIN_MANAGER_Initialize:
;incstack = 0
	callstack 29
	line	43
	
l1397:
;mcc_generated_files/system/src/pins.c: 43:     LATA = 0x0;
	movlw	low(0)
	movwf	((c:16314))^03f00h,c	;volatile
	line	44
;mcc_generated_files/system/src/pins.c: 44:     LATB = 0x0;
	movlw	low(0)
	movwf	((c:16315))^03f00h,c	;volatile
	line	45
;mcc_generated_files/system/src/pins.c: 45:     LATC = 0x0;
	movlw	low(0)
	movwf	((c:16316))^03f00h,c	;volatile
	line	46
;mcc_generated_files/system/src/pins.c: 46:     LATD = 0x0;
	movlw	low(0)
	movwf	((c:16317))^03f00h,c	;volatile
	line	47
;mcc_generated_files/system/src/pins.c: 47:     LATE = 0x0;
	movlw	low(0)
	movwf	((c:16318))^03f00h,c	;volatile
	line	52
	
l1399:
;mcc_generated_files/system/src/pins.c: 52:     TRISA = 0xFF;
	setf	((c:16322))^03f00h,c	;volatile
	line	53
;mcc_generated_files/system/src/pins.c: 53:     TRISB = 0xFD;
	movlw	low(0FDh)
	movwf	((c:16323))^03f00h,c	;volatile
	line	54
	
l1401:
;mcc_generated_files/system/src/pins.c: 54:     TRISC = 0xFF;
	setf	((c:16324))^03f00h,c	;volatile
	line	55
;mcc_generated_files/system/src/pins.c: 55:     TRISD = 0xFE;
	movlw	low(0FEh)
	movwf	((c:16325))^03f00h,c	;volatile
	line	56
;mcc_generated_files/system/src/pins.c: 56:     TRISE = 0x7;
	movlw	low(07h)
	movwf	((c:16326))^03f00h,c	;volatile
	line	61
	
l1403:
;mcc_generated_files/system/src/pins.c: 61:     ANSELA = 0xFF;
	movlb	58	; () banked
	setf	((14912))&0ffh	;volatile
	line	62
;mcc_generated_files/system/src/pins.c: 62:     ANSELB = 0xFD;
	movlw	low(0FDh)
	movwf	((14928))&0ffh	;volatile
	line	63
	
l1405:; BSR set to: 58

;mcc_generated_files/system/src/pins.c: 63:     ANSELC = 0xFF;
	setf	((14944))&0ffh	;volatile
	line	64
;mcc_generated_files/system/src/pins.c: 64:     ANSELD = 0xFC;
	movlw	low(0FCh)
	movwf	((14960))&0ffh	;volatile
	line	65
;mcc_generated_files/system/src/pins.c: 65:     ANSELE = 0x7;
	movlw	low(07h)
	movwf	((14976))&0ffh	;volatile
	line	70
;mcc_generated_files/system/src/pins.c: 70:     WPUA = 0x0;
	movlw	low(0)
	movwf	((14913))&0ffh	;volatile
	line	71
;mcc_generated_files/system/src/pins.c: 71:     WPUB = 0x0;
	movlw	low(0)
	movwf	((14929))&0ffh	;volatile
	line	72
;mcc_generated_files/system/src/pins.c: 72:     WPUC = 0x0;
	movlw	low(0)
	movwf	((14945))&0ffh	;volatile
	line	73
;mcc_generated_files/system/src/pins.c: 73:     WPUD = 0x0;
	movlw	low(0)
	movwf	((14961))&0ffh	;volatile
	line	74
;mcc_generated_files/system/src/pins.c: 74:     WPUE = 0x0;
	movlw	low(0)
	movwf	((14977))&0ffh	;volatile
	line	79
;mcc_generated_files/system/src/pins.c: 79:     ODCONA = 0x0;
	movlw	low(0)
	movwf	((14914))&0ffh	;volatile
	line	80
;mcc_generated_files/system/src/pins.c: 80:     ODCONB = 0x0;
	movlw	low(0)
	movwf	((14930))&0ffh	;volatile
	line	81
;mcc_generated_files/system/src/pins.c: 81:     ODCONC = 0x0;
	movlw	low(0)
	movwf	((14946))&0ffh	;volatile
	line	82
;mcc_generated_files/system/src/pins.c: 82:     ODCOND = 0x0;
	movlw	low(0)
	movwf	((14962))&0ffh	;volatile
	line	83
;mcc_generated_files/system/src/pins.c: 83:     ODCONE = 0x0;
	movlw	low(0)
	movwf	((14978))&0ffh	;volatile
	line	88
	
l1407:; BSR set to: 58

;mcc_generated_files/system/src/pins.c: 88:     SLRCONA = 0xFF;
	setf	((14915))&0ffh	;volatile
	line	89
	
l1409:; BSR set to: 58

;mcc_generated_files/system/src/pins.c: 89:     SLRCONB = 0xFF;
	setf	((14931))&0ffh	;volatile
	line	90
	
l1411:; BSR set to: 58

;mcc_generated_files/system/src/pins.c: 90:     SLRCONC = 0xFF;
	setf	((14947))&0ffh	;volatile
	line	91
	
l1413:; BSR set to: 58

;mcc_generated_files/system/src/pins.c: 91:     SLRCOND = 0xFF;
	setf	((14963))&0ffh	;volatile
	line	92
;mcc_generated_files/system/src/pins.c: 92:     SLRCONE = 0x7;
	movlw	low(07h)
	movwf	((14979))&0ffh	;volatile
	line	97
	
l1415:; BSR set to: 58

;mcc_generated_files/system/src/pins.c: 97:     INLVLA = 0xFF;
	setf	((14916))&0ffh	;volatile
	line	98
	
l1417:; BSR set to: 58

;mcc_generated_files/system/src/pins.c: 98:     INLVLB = 0xFF;
	setf	((14932))&0ffh	;volatile
	line	99
	
l1419:; BSR set to: 58

;mcc_generated_files/system/src/pins.c: 99:     INLVLC = 0xFF;
	setf	((14948))&0ffh	;volatile
	line	100
	
l1421:; BSR set to: 58

;mcc_generated_files/system/src/pins.c: 100:     INLVLD = 0xFF;
	setf	((14964))&0ffh	;volatile
	line	101
;mcc_generated_files/system/src/pins.c: 101:     INLVLE = 0xF;
	movlw	low(0Fh)
	movwf	((14980))&0ffh	;volatile
	line	106
;mcc_generated_files/system/src/pins.c: 106:     RB1I2C = 0x0;
	movlw	low(0)
	movwf	((14938))&0ffh	;volatile
	line	107
;mcc_generated_files/system/src/pins.c: 107:     RB2I2C = 0x0;
	movlw	low(0)
	movwf	((14939))&0ffh	;volatile
	line	108
;mcc_generated_files/system/src/pins.c: 108:     RC3I2C = 0x0;
	movlw	low(0)
	movwf	((14954))&0ffh	;volatile
	line	109
;mcc_generated_files/system/src/pins.c: 109:     RC4I2C = 0x0;
	movlw	low(0)
	movwf	((14955))&0ffh	;volatile
	line	110
;mcc_generated_files/system/src/pins.c: 110:     RD0I2C = 0x0;
	movlw	low(0)
	movwf	((14970))&0ffh	;volatile
	line	111
;mcc_generated_files/system/src/pins.c: 111:     RD1I2C = 0x0;
	movlw	low(0)
	movwf	((14971))&0ffh	;volatile
	line	115
;mcc_generated_files/system/src/pins.c: 115:     U2RXPPS = 0x19;
	movlw	low(019h)
	movwf	((15080))&0ffh	;volatile
	line	116
;mcc_generated_files/system/src/pins.c: 116:     RD0PPS = 0x16;
	movlw	low(016h)
	movwf	((14872))&0ffh	;volatile
	line	121
;mcc_generated_files/system/src/pins.c: 121:     IOCAP = 0x0;
	movlw	low(0)
	movwf	((14917))&0ffh	;volatile
	line	122
;mcc_generated_files/system/src/pins.c: 122:     IOCAN = 0x0;
	movlw	low(0)
	movwf	((14918))&0ffh	;volatile
	line	123
;mcc_generated_files/system/src/pins.c: 123:     IOCAF = 0x0;
	movlw	low(0)
	movwf	((14919))&0ffh	;volatile
	line	124
;mcc_generated_files/system/src/pins.c: 124:     IOCBP = 0x0;
	movlw	low(0)
	movwf	((14933))&0ffh	;volatile
	line	125
;mcc_generated_files/system/src/pins.c: 125:     IOCBN = 0x0;
	movlw	low(0)
	movwf	((14934))&0ffh	;volatile
	line	126
;mcc_generated_files/system/src/pins.c: 126:     IOCBF = 0x0;
	movlw	low(0)
	movwf	((14935))&0ffh	;volatile
	line	127
;mcc_generated_files/system/src/pins.c: 127:     IOCCP = 0x0;
	movlw	low(0)
	movwf	((14949))&0ffh	;volatile
	line	128
;mcc_generated_files/system/src/pins.c: 128:     IOCCN = 0x0;
	movlw	low(0)
	movwf	((14950))&0ffh	;volatile
	line	129
;mcc_generated_files/system/src/pins.c: 129:     IOCCF = 0x0;
	movlw	low(0)
	movwf	((14951))&0ffh	;volatile
	line	130
;mcc_generated_files/system/src/pins.c: 130:     IOCEP = 0x0;
	movlw	low(0)
	movwf	((14981))&0ffh	;volatile
	line	131
;mcc_generated_files/system/src/pins.c: 131:     IOCEN = 0x0;
	movlw	low(0)
	movwf	((14982))&0ffh	;volatile
	line	132
;mcc_generated_files/system/src/pins.c: 132:     IOCEF = 0x0;
	movlw	low(0)
	movwf	((14983))&0ffh	;volatile
	line	135
	
l137:; BSR set to: 58

	return	;funcret
	callstack 0
GLOBAL	__end_of_PIN_MANAGER_Initialize
	__end_of_PIN_MANAGER_Initialize:
	signat	_PIN_MANAGER_Initialize,89
	global	_INTERRUPT_Initialize

;; *************** function _INTERRUPT_Initialize *****************
;; Defined at:
;;		line 42 in file "mcc_generated_files/system/src/interrupt.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
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
;;		_INT0_SetInterruptHandler
;;		_INT1_SetInterruptHandler
;;		_INT2_SetInterruptHandler
;; This function is called by:
;;		_SYSTEM_Initialize
;; This function uses a non-reentrant model
;;
psect	text22,class=CODE,space=0,reloc=2,group=0
	file	"mcc_generated_files/system/src/interrupt.c"
	line	42
global __ptext22
__ptext22:
psect	text22
	file	"mcc_generated_files/system/src/interrupt.c"
	line	42
	
_INTERRUPT_Initialize:; BSR set to: 58

;incstack = 0
	callstack 28
	line	45
	
l1819:
;mcc_generated_files/system/src/interrupt.c: 45:     INTCON0bits.IPEN = 0;
	bcf	((c:16338))^03f00h,c,5	;volatile
	line	49
;mcc_generated_files/system/src/interrupt.c: 49:     (PIR1bits.INT0IF = 0);
	movlb	57	; () banked
	bcf	((14753))&0ffh,0	;volatile
	line	50
;mcc_generated_files/system/src/interrupt.c: 50:     (INTCON0bits.INT0EDG = 1);
	bsf	((c:16338))^03f00h,c,0	;volatile
	line	52
	
l1821:; BSR set to: 57

;mcc_generated_files/system/src/interrupt.c: 52:     INT0_SetInterruptHandler(INT0_DefaultInterruptHandler);
		movlw	low(_INT0_DefaultInterruptHandler)
	movwf	((c:INT0_SetInterruptHandler@InterruptHandler))^00h,c
	movlw	high(_INT0_DefaultInterruptHandler)
	movwf	((c:INT0_SetInterruptHandler@InterruptHandler+1))^00h,c
	movlw	low highword(_INT0_DefaultInterruptHandler)
	movwf	((c:INT0_SetInterruptHandler@InterruptHandler+2))^00h,c

	call	_INT0_SetInterruptHandler	;wreg free
	line	57
	
l1823:
;mcc_generated_files/system/src/interrupt.c: 57:     (PIR5bits.INT1IF = 0);
	movlb	57	; () banked
	bcf	((14757))&0ffh,0	;volatile
	line	58
	
l1825:; BSR set to: 57

;mcc_generated_files/system/src/interrupt.c: 58:     (INTCON0bits.INT1EDG = 1);
	bsf	((c:16338))^03f00h,c,1	;volatile
	line	60
;mcc_generated_files/system/src/interrupt.c: 60:     INT1_SetInterruptHandler(INT1_DefaultInterruptHandler);
		movlw	low(_INT1_DefaultInterruptHandler)
	movwf	((c:INT1_SetInterruptHandler@InterruptHandler))^00h,c
	movlw	high(_INT1_DefaultInterruptHandler)
	movwf	((c:INT1_SetInterruptHandler@InterruptHandler+1))^00h,c
	movlw	low highword(_INT1_DefaultInterruptHandler)
	movwf	((c:INT1_SetInterruptHandler@InterruptHandler+2))^00h,c

	call	_INT1_SetInterruptHandler	;wreg free
	line	65
	
l1827:
;mcc_generated_files/system/src/interrupt.c: 65:     (PIR7bits.INT2IF = 0);
	movlb	57	; () banked
	bcf	((14759))&0ffh,5	;volatile
	line	66
	
l1829:; BSR set to: 57

;mcc_generated_files/system/src/interrupt.c: 66:     (INTCON0bits.INT2EDG = 1);
	bsf	((c:16338))^03f00h,c,2	;volatile
	line	68
;mcc_generated_files/system/src/interrupt.c: 68:     INT2_SetInterruptHandler(INT2_DefaultInterruptHandler);
		movlw	low(_INT2_DefaultInterruptHandler)
	movwf	((c:INT2_SetInterruptHandler@InterruptHandler))^00h,c
	movlw	high(_INT2_DefaultInterruptHandler)
	movwf	((c:INT2_SetInterruptHandler@InterruptHandler+1))^00h,c
	movlw	low highword(_INT2_DefaultInterruptHandler)
	movwf	((c:INT2_SetInterruptHandler@InterruptHandler+2))^00h,c

	call	_INT2_SetInterruptHandler	;wreg free
	line	71
	
l175:
	return	;funcret
	callstack 0
GLOBAL	__end_of_INTERRUPT_Initialize
	__end_of_INTERRUPT_Initialize:
	signat	_INTERRUPT_Initialize,89
	global	_INT2_SetInterruptHandler

;; *************** function _INT2_SetInterruptHandler *****************
;; Defined at:
;;		line 144 in file "mcc_generated_files/system/src/interrupt.c"
;; Parameters:    Size  Location     Type
;;  InterruptHan    3    0[COMRAM] PTR FTN()void 
;;		 -> INT2_DefaultInterruptHandler(1), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_INTERRUPT_Initialize
;; This function uses a non-reentrant model
;;
psect	text23,class=CODE,space=0,reloc=2,group=0
	line	144
global __ptext23
__ptext23:
psect	text23
	file	"mcc_generated_files/system/src/interrupt.c"
	line	144
	
_INT2_SetInterruptHandler:
;incstack = 0
	callstack 28
	line	145
	
l1735:
;mcc_generated_files/system/src/interrupt.c: 145:     INT2_InterruptHandler = InterruptHandler;
		movff	(c:INT2_SetInterruptHandler@InterruptHandler),(c:_INT2_InterruptHandler)
	movff	(c:INT2_SetInterruptHandler@InterruptHandler+1),(c:_INT2_InterruptHandler+1)
	movff	(c:INT2_SetInterruptHandler@InterruptHandler+2),(c:_INT2_InterruptHandler+2)

	line	146
	
l211:
	return	;funcret
	callstack 0
GLOBAL	__end_of_INT2_SetInterruptHandler
	__end_of_INT2_SetInterruptHandler:
	signat	_INT2_SetInterruptHandler,4217
	global	_INT1_SetInterruptHandler

;; *************** function _INT1_SetInterruptHandler *****************
;; Defined at:
;;		line 118 in file "mcc_generated_files/system/src/interrupt.c"
;; Parameters:    Size  Location     Type
;;  InterruptHan    3    0[COMRAM] PTR FTN()void 
;;		 -> INT1_DefaultInterruptHandler(1), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_INTERRUPT_Initialize
;; This function uses a non-reentrant model
;;
psect	text24,class=CODE,space=0,reloc=2,group=0
	line	118
global __ptext24
__ptext24:
psect	text24
	file	"mcc_generated_files/system/src/interrupt.c"
	line	118
	
_INT1_SetInterruptHandler:
;incstack = 0
	callstack 28
	line	119
	
l1733:
;mcc_generated_files/system/src/interrupt.c: 119:     INT1_InterruptHandler = InterruptHandler;
		movff	(c:INT1_SetInterruptHandler@InterruptHandler),(c:_INT1_InterruptHandler)
	movff	(c:INT1_SetInterruptHandler@InterruptHandler+1),(c:_INT1_InterruptHandler+1)
	movff	(c:INT1_SetInterruptHandler@InterruptHandler+2),(c:_INT1_InterruptHandler+2)

	line	120
	
l198:
	return	;funcret
	callstack 0
GLOBAL	__end_of_INT1_SetInterruptHandler
	__end_of_INT1_SetInterruptHandler:
	signat	_INT1_SetInterruptHandler,4217
	global	_INT0_SetInterruptHandler

;; *************** function _INT0_SetInterruptHandler *****************
;; Defined at:
;;		line 92 in file "mcc_generated_files/system/src/interrupt.c"
;; Parameters:    Size  Location     Type
;;  InterruptHan    3    0[COMRAM] PTR FTN()void 
;;		 -> INT0_DefaultInterruptHandler(1), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15  BANK16  BANK17  BANK18  BANK19  BANK20  BANK21  BANK22  BANK23  BANK24  BANK25  BANK26  BANK27  BANK28  BANK29  BANK30  BANK31
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_INTERRUPT_Initialize
;; This function uses a non-reentrant model
;;
psect	text25,class=CODE,space=0,reloc=2,group=0
	line	92
global __ptext25
__ptext25:
psect	text25
	file	"mcc_generated_files/system/src/interrupt.c"
	line	92
	
_INT0_SetInterruptHandler:
;incstack = 0
	callstack 28
	line	93
	
l1731:
;mcc_generated_files/system/src/interrupt.c: 93:     INT0_InterruptHandler = InterruptHandler;
		movff	(c:INT0_SetInterruptHandler@InterruptHandler),(c:_INT0_InterruptHandler)
	movff	(c:INT0_SetInterruptHandler@InterruptHandler+1),(c:_INT0_InterruptHandler+1)
	movff	(c:INT0_SetInterruptHandler@InterruptHandler+2),(c:_INT0_InterruptHandler+2)

	line	94
	
l185:
	return	;funcret
	callstack 0
GLOBAL	__end_of_INT0_SetInterruptHandler
	__end_of_INT0_SetInterruptHandler:
	signat	_INT0_SetInterruptHandler,4217
	global	_CLOCK_Initialize

;; *************** function _CLOCK_Initialize *****************
;; Defined at:
;;		line 39 in file "mcc_generated_files/system/src/clock.c"
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SYSTEM_Initialize
;; This function uses a non-reentrant model
;;
psect	text26,class=CODE,space=0,reloc=2,group=0
	file	"mcc_generated_files/system/src/clock.c"
	line	39
global __ptext26
__ptext26:
psect	text26
	file	"mcc_generated_files/system/src/clock.c"
	line	39
	
_CLOCK_Initialize:
;incstack = 0
	callstack 29
	line	42
	
l1395:
;mcc_generated_files/system/src/clock.c: 42:     OSCCON1 = (0 << 0x0)
	movlw	low(060h)
	movlb	57	; () banked
	movwf	((14809))&0ffh	;volatile
	line	44
;mcc_generated_files/system/src/clock.c: 44:     OSCCON3 = (0 << 0x6)
	movlw	low(0)
	movwf	((14811))&0ffh	;volatile
	line	46
;mcc_generated_files/system/src/clock.c: 46:     OSCEN = (0 << 0x7)
	movlw	low(0)
	movwf	((14813))&0ffh	;volatile
	line	52
;mcc_generated_files/system/src/clock.c: 52:     OSCFRQ = (8 << 0x0);
	movlw	low(08h)
	movwf	((14815))&0ffh	;volatile
	line	53
;mcc_generated_files/system/src/clock.c: 53:     OSCTUNE = (0 << 0x0);
	movlw	low(0)
	movwf	((14814))&0ffh	;volatile
	line	55
	
l24:; BSR set to: 57

	return	;funcret
	callstack 0
GLOBAL	__end_of_CLOCK_Initialize
	__end_of_CLOCK_Initialize:
	signat	_CLOCK_Initialize,89
psect	smallconst
	db 0	; dummy byte at the end
	global	__smallconst
	global	__mediumconst
	GLOBAL	__activetblptr
__activetblptr	EQU	3
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
