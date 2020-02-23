
_main:

;ledcube3.c,25 :: 		void main() {
;ledcube3.c,26 :: 		osccon=0x72;
	MOVLW      114
	MOVWF      OSCCON+0
;ledcube3.c,27 :: 		trisa=0x00;
	CLRF       TRISA+0
;ledcube3.c,28 :: 		trisb=0x00;
	CLRF       TRISB+0
;ledcube3.c,29 :: 		porta=0x00;
	CLRF       PORTA+0
;ledcube3.c,30 :: 		portb=0x00;
	CLRF       PORTB+0
;ledcube3.c,31 :: 		while(1) {
L_main0:
;ledcube3.c,32 :: 		for(count=0;count<8;count++) {
	CLRF       _count+0
	CLRF       _count+1
L_main2:
	MOVLW      128
	XORWF      _count+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main24
	MOVLW      8
	SUBWF      _count+0, 0
L__main24:
	BTFSC      STATUS+0, 0
	GOTO       L_main3
;ledcube3.c,33 :: 		refreshDisplay(delay, arrayData0); //time on desplay in ms, patern to display
	MOVF       _delay+0, 0
	MOVWF      FARG_refreshDisplay_time+0
	MOVF       _delay+1, 0
	MOVWF      FARG_refreshDisplay_time+1
	MOVLW      _arrayData0+0
	MOVWF      FARG_refreshDisplay_array+0
	CALL       _refreshDisplay+0
;ledcube3.c,34 :: 		refreshDisplay(delay, arrayData1); //time on desplay in ms, patern to display
	MOVF       _delay+0, 0
	MOVWF      FARG_refreshDisplay_time+0
	MOVF       _delay+1, 0
	MOVWF      FARG_refreshDisplay_time+1
	MOVLW      _arrayData1+0
	MOVWF      FARG_refreshDisplay_array+0
	CALL       _refreshDisplay+0
;ledcube3.c,35 :: 		refreshDisplay(delay, arrayData2); //time on desplay in ms, patern to display
	MOVF       _delay+0, 0
	MOVWF      FARG_refreshDisplay_time+0
	MOVF       _delay+1, 0
	MOVWF      FARG_refreshDisplay_time+1
	MOVLW      _arrayData2+0
	MOVWF      FARG_refreshDisplay_array+0
	CALL       _refreshDisplay+0
;ledcube3.c,36 :: 		refreshDisplay(delay, arrayData3); //time on desplay in ms, patern to display
	MOVF       _delay+0, 0
	MOVWF      FARG_refreshDisplay_time+0
	MOVF       _delay+1, 0
	MOVWF      FARG_refreshDisplay_time+1
	MOVLW      _arrayData3+0
	MOVWF      FARG_refreshDisplay_array+0
	CALL       _refreshDisplay+0
;ledcube3.c,32 :: 		for(count=0;count<8;count++) {
	INCF       _count+0, 1
	BTFSC      STATUS+0, 2
	INCF       _count+1, 1
;ledcube3.c,37 :: 		}
	GOTO       L_main2
L_main3:
;ledcube3.c,38 :: 		for(count=0;count<8;count++) {
	CLRF       _count+0
	CLRF       _count+1
L_main5:
	MOVLW      128
	XORWF      _count+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main25
	MOVLW      8
	SUBWF      _count+0, 0
L__main25:
	BTFSC      STATUS+0, 0
	GOTO       L_main6
;ledcube3.c,39 :: 		refreshDisplay(delay, arrayData2); //time on desplay in ms, patern to display
	MOVF       _delay+0, 0
	MOVWF      FARG_refreshDisplay_time+0
	MOVF       _delay+1, 0
	MOVWF      FARG_refreshDisplay_time+1
	MOVLW      _arrayData2+0
	MOVWF      FARG_refreshDisplay_array+0
	CALL       _refreshDisplay+0
;ledcube3.c,40 :: 		refreshDisplay(delay, arrayData1); //time on desplay in ms, patern to display
	MOVF       _delay+0, 0
	MOVWF      FARG_refreshDisplay_time+0
	MOVF       _delay+1, 0
	MOVWF      FARG_refreshDisplay_time+1
	MOVLW      _arrayData1+0
	MOVWF      FARG_refreshDisplay_array+0
	CALL       _refreshDisplay+0
;ledcube3.c,41 :: 		refreshDisplay(delay, arrayData0); //time on desplay in ms, patern to display
	MOVF       _delay+0, 0
	MOVWF      FARG_refreshDisplay_time+0
	MOVF       _delay+1, 0
	MOVWF      FARG_refreshDisplay_time+1
	MOVLW      _arrayData0+0
	MOVWF      FARG_refreshDisplay_array+0
	CALL       _refreshDisplay+0
;ledcube3.c,42 :: 		refreshDisplay(delay, arrayData3); //time on desplay in ms, patern to display
	MOVF       _delay+0, 0
	MOVWF      FARG_refreshDisplay_time+0
	MOVF       _delay+1, 0
	MOVWF      FARG_refreshDisplay_time+1
	MOVLW      _arrayData3+0
	MOVWF      FARG_refreshDisplay_array+0
	CALL       _refreshDisplay+0
;ledcube3.c,38 :: 		for(count=0;count<8;count++) {
	INCF       _count+0, 1
	BTFSC      STATUS+0, 2
	INCF       _count+1, 1
;ledcube3.c,43 :: 		}
	GOTO       L_main5
L_main6:
;ledcube3.c,44 :: 		for(count=0;count<8;count++) {
	CLRF       _count+0
	CLRF       _count+1
L_main8:
	MOVLW      128
	XORWF      _count+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main26
	MOVLW      8
	SUBWF      _count+0, 0
L__main26:
	BTFSC      STATUS+0, 0
	GOTO       L_main9
;ledcube3.c,45 :: 		refreshDisplay(delay, arrayData4); //time on desplay in ms, patern to display
	MOVF       _delay+0, 0
	MOVWF      FARG_refreshDisplay_time+0
	MOVF       _delay+1, 0
	MOVWF      FARG_refreshDisplay_time+1
	MOVLW      _arrayData4+0
	MOVWF      FARG_refreshDisplay_array+0
	CALL       _refreshDisplay+0
;ledcube3.c,46 :: 		refreshDisplay(delay, arrayData5); //time on desplay in ms, patern to display
	MOVF       _delay+0, 0
	MOVWF      FARG_refreshDisplay_time+0
	MOVF       _delay+1, 0
	MOVWF      FARG_refreshDisplay_time+1
	MOVLW      _arrayData5+0
	MOVWF      FARG_refreshDisplay_array+0
	CALL       _refreshDisplay+0
;ledcube3.c,47 :: 		refreshDisplay(delay, arrayData6); //time on desplay in ms, patern to display
	MOVF       _delay+0, 0
	MOVWF      FARG_refreshDisplay_time+0
	MOVF       _delay+1, 0
	MOVWF      FARG_refreshDisplay_time+1
	MOVLW      _arrayData6+0
	MOVWF      FARG_refreshDisplay_array+0
	CALL       _refreshDisplay+0
;ledcube3.c,48 :: 		refreshDisplay(delay, arrayData3); //time on desplay in ms, patern to display
	MOVF       _delay+0, 0
	MOVWF      FARG_refreshDisplay_time+0
	MOVF       _delay+1, 0
	MOVWF      FARG_refreshDisplay_time+1
	MOVLW      _arrayData3+0
	MOVWF      FARG_refreshDisplay_array+0
	CALL       _refreshDisplay+0
;ledcube3.c,44 :: 		for(count=0;count<8;count++) {
	INCF       _count+0, 1
	BTFSC      STATUS+0, 2
	INCF       _count+1, 1
;ledcube3.c,49 :: 		}
	GOTO       L_main8
L_main9:
;ledcube3.c,50 :: 		for(count=0;count<8;count++) {
	CLRF       _count+0
	CLRF       _count+1
L_main11:
	MOVLW      128
	XORWF      _count+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main27
	MOVLW      8
	SUBWF      _count+0, 0
L__main27:
	BTFSC      STATUS+0, 0
	GOTO       L_main12
;ledcube3.c,51 :: 		refreshDisplay(delay, arrayData6); //time on desplay in ms, patern to display
	MOVF       _delay+0, 0
	MOVWF      FARG_refreshDisplay_time+0
	MOVF       _delay+1, 0
	MOVWF      FARG_refreshDisplay_time+1
	MOVLW      _arrayData6+0
	MOVWF      FARG_refreshDisplay_array+0
	CALL       _refreshDisplay+0
;ledcube3.c,52 :: 		refreshDisplay(delay, arrayData5); //time on desplay in ms, patern to display
	MOVF       _delay+0, 0
	MOVWF      FARG_refreshDisplay_time+0
	MOVF       _delay+1, 0
	MOVWF      FARG_refreshDisplay_time+1
	MOVLW      _arrayData5+0
	MOVWF      FARG_refreshDisplay_array+0
	CALL       _refreshDisplay+0
;ledcube3.c,53 :: 		refreshDisplay(delay, arrayData4); //time on desplay in ms, patern to display
	MOVF       _delay+0, 0
	MOVWF      FARG_refreshDisplay_time+0
	MOVF       _delay+1, 0
	MOVWF      FARG_refreshDisplay_time+1
	MOVLW      _arrayData4+0
	MOVWF      FARG_refreshDisplay_array+0
	CALL       _refreshDisplay+0
;ledcube3.c,54 :: 		refreshDisplay(delay, arrayData3); //time on desplay in ms, patern to display
	MOVF       _delay+0, 0
	MOVWF      FARG_refreshDisplay_time+0
	MOVF       _delay+1, 0
	MOVWF      FARG_refreshDisplay_time+1
	MOVLW      _arrayData3+0
	MOVWF      FARG_refreshDisplay_array+0
	CALL       _refreshDisplay+0
;ledcube3.c,50 :: 		for(count=0;count<8;count++) {
	INCF       _count+0, 1
	BTFSC      STATUS+0, 2
	INCF       _count+1, 1
;ledcube3.c,55 :: 		}
	GOTO       L_main11
L_main12:
;ledcube3.c,56 :: 		}
	GOTO       L_main0
;ledcube3.c,57 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

_clearDisplay:

;ledcube3.c,59 :: 		void clearDisplay() {
;ledcube3.c,60 :: 		porta = 0x00;
	CLRF       PORTA+0
;ledcube3.c,61 :: 		portb = 0x00;
	CLRF       PORTB+0
;ledcube3.c,62 :: 		}
L_end_clearDisplay:
	RETURN
; end of _clearDisplay

_refreshDisplay:

;ledcube3.c,64 :: 		void refreshDisplay (int time, int array[3][3]) {
;ledcube3.c,65 :: 		loop = time/9;
	MOVLW      9
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_refreshDisplay_time+0, 0
	MOVWF      R0+0
	MOVF       FARG_refreshDisplay_time+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      _loop+0
	MOVF       R0+1, 0
	MOVWF      _loop+1
;ledcube3.c,66 :: 		for(i=0;i<loop;i++) {    //CYCLE the entire desplay long enough to equal time
	CLRF       _i+0
	CLRF       _i+1
L_refreshDisplay14:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _loop+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__refreshDisplay30
	MOVF       _loop+0, 0
	SUBWF      _i+0, 0
L__refreshDisplay30:
	BTFSC      STATUS+0, 0
	GOTO       L_refreshDisplay15
;ledcube3.c,67 :: 		for(j=0;j<3;j++) {    //cycle through each layer
	CLRF       _j+0
	CLRF       _j+1
L_refreshDisplay17:
	MOVLW      128
	XORWF      _j+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__refreshDisplay31
	MOVLW      3
	SUBWF      _j+0, 0
L__refreshDisplay31:
	BTFSC      STATUS+0, 0
	GOTO       L_refreshDisplay18
;ledcube3.c,68 :: 		clearDisplay();
	CALL       _clearDisplay+0
;ledcube3.c,69 :: 		porta=(array[j][0]<<1&0xf8|array[j][0])<<3|1<<j;
	MOVLW      6
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	MOVF       _j+0, 0
	MOVWF      R4+0
	MOVF       _j+1, 0
	MOVWF      R4+1
	CALL       _Mul_16x16_U+0
	MOVF       R0+0, 0
	ADDWF      FARG_refreshDisplay_array+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R2+0
	MOVF       R2+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVLW      248
	ANDWF      R0+0, 1
	MOVF       R2+0, 0
	IORWF      R0+0, 0
	MOVWF      R1+0
	MOVF       R1+0, 0
	MOVWF      R2+0
	RLF        R2+0, 1
	BCF        R2+0, 0
	RLF        R2+0, 1
	BCF        R2+0, 0
	RLF        R2+0, 1
	BCF        R2+0, 0
	MOVF       _j+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__refreshDisplay32:
	BTFSC      STATUS+0, 2
	GOTO       L__refreshDisplay33
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__refreshDisplay32
L__refreshDisplay33:
	MOVF       R0+0, 0
	IORWF      R2+0, 0
	MOVWF      PORTA+0
;ledcube3.c,70 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_refreshDisplay20:
	DECFSZ     R13+0, 1
	GOTO       L_refreshDisplay20
	DECFSZ     R12+0, 1
	GOTO       L_refreshDisplay20
	NOP
	NOP
;ledcube3.c,72 :: 		clearDisplay();
	CALL       _clearDisplay+0
;ledcube3.c,73 :: 		porta=1<<j;
	MOVF       _j+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__refreshDisplay34:
	BTFSC      STATUS+0, 2
	GOTO       L__refreshDisplay35
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__refreshDisplay34
L__refreshDisplay35:
	MOVF       R0+0, 0
	MOVWF      PORTA+0
;ledcube3.c,74 :: 		portb=array[j][1]<<3;
	MOVLW      6
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	MOVF       _j+0, 0
	MOVWF      R4+0
	MOVF       _j+1, 0
	MOVWF      R4+1
	CALL       _Mul_16x16_U+0
	MOVF       FARG_refreshDisplay_array+0, 0
	ADDWF      R0+0, 1
	MOVLW      2
	ADDWF      R0+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      R2+0
	MOVF       R2+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;ledcube3.c,75 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_refreshDisplay21:
	DECFSZ     R13+0, 1
	GOTO       L_refreshDisplay21
	DECFSZ     R12+0, 1
	GOTO       L_refreshDisplay21
	NOP
	NOP
;ledcube3.c,77 :: 		clearDisplay();
	CALL       _clearDisplay+0
;ledcube3.c,78 :: 		porta=1<<j;
	MOVF       _j+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__refreshDisplay36:
	BTFSC      STATUS+0, 2
	GOTO       L__refreshDisplay37
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__refreshDisplay36
L__refreshDisplay37:
	MOVF       R0+0, 0
	MOVWF      PORTA+0
;ledcube3.c,79 :: 		portb=array[j][2];
	MOVLW      6
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	MOVF       _j+0, 0
	MOVWF      R4+0
	MOVF       _j+1, 0
	MOVWF      R4+1
	CALL       _Mul_16x16_U+0
	MOVF       FARG_refreshDisplay_array+0, 0
	ADDWF      R0+0, 1
	MOVLW      4
	ADDWF      R0+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;ledcube3.c,80 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_refreshDisplay22:
	DECFSZ     R13+0, 1
	GOTO       L_refreshDisplay22
	DECFSZ     R12+0, 1
	GOTO       L_refreshDisplay22
	NOP
	NOP
;ledcube3.c,67 :: 		for(j=0;j<3;j++) {    //cycle through each layer
	INCF       _j+0, 1
	BTFSC      STATUS+0, 2
	INCF       _j+1, 1
;ledcube3.c,81 :: 		}
	GOTO       L_refreshDisplay17
L_refreshDisplay18:
;ledcube3.c,66 :: 		for(i=0;i<loop;i++) {    //CYCLE the entire desplay long enough to equal time
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;ledcube3.c,82 :: 		}
	GOTO       L_refreshDisplay14
L_refreshDisplay15:
;ledcube3.c,83 :: 		}
L_end_refreshDisplay:
	RETURN
; end of _refreshDisplay
