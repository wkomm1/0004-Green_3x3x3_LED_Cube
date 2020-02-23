
_main:

;ledcube3rev2.c,32 :: 		void main() {
;ledcube3rev2.c,33 :: 		osccon=0x72;
	MOVLW      114
	MOVWF      OSCCON+0
;ledcube3rev2.c,34 :: 		trisa=0x00;
	CLRF       TRISA+0
;ledcube3rev2.c,35 :: 		trisb=0x00;
	CLRF       TRISB+0
;ledcube3rev2.c,36 :: 		while(1) {
L_main0:
;ledcube3rev2.c,37 :: 		switch(rand()%(11+1)) {
	CALL       _rand+0
	MOVLW      12
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      FLOC__main+0
	MOVF       R0+1, 0
	MOVWF      FLOC__main+1
	GOTO       L_main2
;ledcube3rev2.c,38 :: 		case 0: upDown(100, 8); break;
L_main4:
	MOVLW      100
	MOVWF      FARG_upDown_frameTime+0
	MOVLW      0
	MOVWF      FARG_upDown_frameTime+1
	MOVLW      8
	MOVWF      FARG_upDown_count+0
	MOVLW      0
	MOVWF      FARG_upDown_count+1
	CALL       _upDown+0
	GOTO       L_main3
;ledcube3rev2.c,39 :: 		case 1: leftRight(100, 8); break;
L_main5:
	MOVLW      100
	MOVWF      FARG_leftRight_frameTime+0
	MOVLW      0
	MOVWF      FARG_leftRight_frameTime+1
	MOVLW      8
	MOVWF      FARG_leftRight_count+0
	MOVLW      0
	MOVWF      FARG_leftRight_count+1
	CALL       _leftRight+0
	GOTO       L_main3
;ledcube3rev2.c,40 :: 		case 2: frontBack(100, 8); break;
L_main6:
	MOVLW      100
	MOVWF      FARG_frontBack_frameTime+0
	MOVLW      0
	MOVWF      FARG_frontBack_frameTime+1
	MOVLW      8
	MOVWF      FARG_frontBack_count+0
	MOVLW      0
	MOVWF      FARG_frontBack_count+1
	CALL       _frontBack+0
	GOTO       L_main3
;ledcube3rev2.c,41 :: 		case 3: randomBit(50, 64); break;
L_main7:
	MOVLW      50
	MOVWF      FARG_randomBit_frameTime+0
	MOVLW      0
	MOVWF      FARG_randomBit_frameTime+1
	MOVLW      64
	MOVWF      FARG_randomBit_count+0
	MOVLW      0
	MOVWF      FARG_randomBit_count+1
	CALL       _randomBit+0
	GOTO       L_main3
;ledcube3rev2.c,42 :: 		case 4: CSpinX(100, 8); break;
L_main8:
	MOVLW      100
	MOVWF      FARG_CSpinX_frameTime+0
	MOVLW      0
	MOVWF      FARG_CSpinX_frameTime+1
	MOVLW      8
	MOVWF      FARG_CSpinX_count+0
	MOVLW      0
	MOVWF      FARG_CSpinX_count+1
	CALL       _CSpinX+0
	GOTO       L_main3
;ledcube3rev2.c,43 :: 		case 5: CSpinY(100, 8); break;
L_main9:
	MOVLW      100
	MOVWF      FARG_CSpinY_frameTime+0
	MOVLW      0
	MOVWF      FARG_CSpinY_frameTime+1
	MOVLW      8
	MOVWF      FARG_CSpinY_count+0
	MOVLW      0
	MOVWF      FARG_CSpinY_count+1
	CALL       _CSpinY+0
	GOTO       L_main3
;ledcube3rev2.c,44 :: 		case 6: CSpinZ(100, 8); break;
L_main10:
	MOVLW      100
	MOVWF      FARG_CSpinZ_frameTime+0
	MOVLW      0
	MOVWF      FARG_CSpinZ_frameTime+1
	MOVLW      8
	MOVWF      FARG_CSpinZ_count+0
	MOVLW      0
	MOVWF      FARG_CSpinZ_count+1
	CALL       _CSpinZ+0
	GOTO       L_main3
;ledcube3rev2.c,45 :: 		case 7: CCSpinX(100, 8); break;
L_main11:
	MOVLW      100
	MOVWF      FARG_CCSpinX_frameTime+0
	MOVLW      0
	MOVWF      FARG_CCSpinX_frameTime+1
	MOVLW      8
	MOVWF      FARG_CCSpinX_count+0
	MOVLW      0
	MOVWF      FARG_CCSpinX_count+1
	CALL       _CCSpinX+0
	GOTO       L_main3
;ledcube3rev2.c,46 :: 		case 8: CCSpinY(100, 8); break;
L_main12:
	MOVLW      100
	MOVWF      FARG_CCSpinY_frameTime+0
	MOVLW      0
	MOVWF      FARG_CCSpinY_frameTime+1
	MOVLW      8
	MOVWF      FARG_CCSpinY_count+0
	MOVLW      0
	MOVWF      FARG_CCSpinY_count+1
	CALL       _CCSpinY+0
	GOTO       L_main3
;ledcube3rev2.c,47 :: 		case 9: CCSpinZ(100, 8); break;
L_main13:
	MOVLW      100
	MOVWF      FARG_CCSpinZ_frameTime+0
	MOVLW      0
	MOVWF      FARG_CCSpinZ_frameTime+1
	MOVLW      8
	MOVWF      FARG_CCSpinZ_count+0
	MOVLW      0
	MOVWF      FARG_CCSpinZ_count+1
	CALL       _CCSpinZ+0
	GOTO       L_main3
;ledcube3rev2.c,48 :: 		case 10: CHelix(100, 4); break;
L_main14:
	MOVLW      100
	MOVWF      FARG_CHelix_frameTime+0
	MOVLW      0
	MOVWF      FARG_CHelix_frameTime+1
	MOVLW      4
	MOVWF      FARG_CHelix_count+0
	MOVLW      0
	MOVWF      FARG_CHelix_count+1
	CALL       _CHelix+0
	GOTO       L_main3
;ledcube3rev2.c,49 :: 		case 11: CCHelix(100, 4); break;
L_main15:
	MOVLW      100
	MOVWF      FARG_CCHelix_frameTime+0
	MOVLW      0
	MOVWF      FARG_CCHelix_frameTime+1
	MOVLW      4
	MOVWF      FARG_CCHelix_count+0
	MOVLW      0
	MOVWF      FARG_CCHelix_count+1
	CALL       _CCHelix+0
	GOTO       L_main3
;ledcube3rev2.c,50 :: 		}
L_main2:
	MOVLW      0
	XORWF      FLOC__main+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main62
	MOVLW      0
	XORWF      FLOC__main+0, 0
L__main62:
	BTFSC      STATUS+0, 2
	GOTO       L_main4
	MOVLW      0
	XORWF      FLOC__main+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main63
	MOVLW      1
	XORWF      FLOC__main+0, 0
L__main63:
	BTFSC      STATUS+0, 2
	GOTO       L_main5
	MOVLW      0
	XORWF      FLOC__main+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main64
	MOVLW      2
	XORWF      FLOC__main+0, 0
L__main64:
	BTFSC      STATUS+0, 2
	GOTO       L_main6
	MOVLW      0
	XORWF      FLOC__main+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main65
	MOVLW      3
	XORWF      FLOC__main+0, 0
L__main65:
	BTFSC      STATUS+0, 2
	GOTO       L_main7
	MOVLW      0
	XORWF      FLOC__main+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main66
	MOVLW      4
	XORWF      FLOC__main+0, 0
L__main66:
	BTFSC      STATUS+0, 2
	GOTO       L_main8
	MOVLW      0
	XORWF      FLOC__main+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main67
	MOVLW      5
	XORWF      FLOC__main+0, 0
L__main67:
	BTFSC      STATUS+0, 2
	GOTO       L_main9
	MOVLW      0
	XORWF      FLOC__main+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main68
	MOVLW      6
	XORWF      FLOC__main+0, 0
L__main68:
	BTFSC      STATUS+0, 2
	GOTO       L_main10
	MOVLW      0
	XORWF      FLOC__main+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main69
	MOVLW      7
	XORWF      FLOC__main+0, 0
L__main69:
	BTFSC      STATUS+0, 2
	GOTO       L_main11
	MOVLW      0
	XORWF      FLOC__main+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main70
	MOVLW      8
	XORWF      FLOC__main+0, 0
L__main70:
	BTFSC      STATUS+0, 2
	GOTO       L_main12
	MOVLW      0
	XORWF      FLOC__main+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main71
	MOVLW      9
	XORWF      FLOC__main+0, 0
L__main71:
	BTFSC      STATUS+0, 2
	GOTO       L_main13
	MOVLW      0
	XORWF      FLOC__main+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main72
	MOVLW      10
	XORWF      FLOC__main+0, 0
L__main72:
	BTFSC      STATUS+0, 2
	GOTO       L_main14
	MOVLW      0
	XORWF      FLOC__main+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main73
	MOVLW      11
	XORWF      FLOC__main+0, 0
L__main73:
	BTFSC      STATUS+0, 2
	GOTO       L_main15
L_main3:
;ledcube3rev2.c,51 :: 		}
	GOTO       L_main0
;ledcube3rev2.c,52 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

_displayFrame:

;ledcube3rev2.c,55 :: 		void displayFrame(int frameTime, long frame) {
;ledcube3rev2.c,56 :: 		cycles = frameTime/9;
	MOVLW      9
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       FARG_displayFrame_frameTime+0, 0
	MOVWF      R0+0
	MOVF       FARG_displayFrame_frameTime+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      _cycles+0
	MOVF       R0+1, 0
	MOVWF      _cycles+1
;ledcube3rev2.c,57 :: 		for(time=0;time<cycles;time++) {
	CLRF       _time+0
	CLRF       _time+1
L_displayFrame16:
	MOVLW      128
	XORWF      _time+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _cycles+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__displayFrame75
	MOVF       _cycles+0, 0
	SUBWF      _time+0, 0
L__displayFrame75:
	BTFSC      STATUS+0, 0
	GOTO       L_displayFrame17
;ledcube3rev2.c,58 :: 		for(layer=0;layer<3;layer++) {
	CLRF       _layer+0
	CLRF       _layer+1
L_displayFrame19:
	MOVLW      128
	XORWF      _layer+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__displayFrame76
	MOVLW      3
	SUBWF      _layer+0, 0
L__displayFrame76:
	BTFSC      STATUS+0, 0
	GOTO       L_displayFrame20
;ledcube3rev2.c,59 :: 		layerData = frame>>(layer*9);
	MOVF       _layer+0, 0
	MOVWF      R0+0
	MOVF       _layer+1, 0
	MOVWF      R0+1
	MOVLW      9
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Mul_16X16_U+0
	MOVF       FARG_displayFrame_frame+0, 0
	MOVWF      R4+0
	MOVF       FARG_displayFrame_frame+1, 0
	MOVWF      R4+1
	MOVF       FARG_displayFrame_frame+2, 0
	MOVWF      R4+2
	MOVF       FARG_displayFrame_frame+3, 0
	MOVWF      R4+3
	MOVF       R0+0, 0
L__displayFrame77:
	BTFSC      STATUS+0, 2
	GOTO       L__displayFrame78
	RRF        R4+3, 1
	RRF        R4+2, 1
	RRF        R4+1, 1
	RRF        R4+0, 1
	BCF        R4+3, 7
	BTFSC      R4+3, 6
	BSF        R4+3, 7
	ADDLW      255
	GOTO       L__displayFrame77
L__displayFrame78:
	MOVF       R4+0, 0
	MOVWF      _layerData+0
	MOVF       R4+1, 0
	MOVWF      _layerData+1
;ledcube3rev2.c,60 :: 		porta = (layerData>>5&8|(layerData>>6&7))<<3|(1<<layer);
	MOVLW      5
	MOVWF      R2+0
	MOVF       R4+0, 0
	MOVWF      R0+0
	MOVF       R4+1, 0
	MOVWF      R0+1
	MOVF       R2+0, 0
L__displayFrame79:
	BTFSC      STATUS+0, 2
	GOTO       L__displayFrame80
	RRF        R0+1, 1
	RRF        R0+0, 1
	BCF        R0+1, 7
	BTFSC      R0+1, 6
	BSF        R0+1, 7
	ADDLW      255
	GOTO       L__displayFrame79
L__displayFrame80:
	MOVLW      8
	ANDWF      R0+0, 0
	MOVWF      R3+0
	MOVLW      6
	MOVWF      R2+0
	MOVF       R4+0, 0
	MOVWF      R0+0
	MOVF       R4+1, 0
	MOVWF      R0+1
	MOVF       R2+0, 0
L__displayFrame81:
	BTFSC      STATUS+0, 2
	GOTO       L__displayFrame82
	RRF        R0+1, 1
	RRF        R0+0, 1
	BCF        R0+1, 7
	BTFSC      R0+1, 6
	BSF        R0+1, 7
	ADDLW      255
	GOTO       L__displayFrame81
L__displayFrame82:
	MOVLW      7
	ANDWF      R0+0, 1
	MOVF       R0+0, 0
	IORWF      R3+0, 0
	MOVWF      R1+0
	MOVF       R1+0, 0
	MOVWF      R2+0
	RLF        R2+0, 1
	BCF        R2+0, 0
	RLF        R2+0, 1
	BCF        R2+0, 0
	RLF        R2+0, 1
	BCF        R2+0, 0
	MOVF       _layer+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__displayFrame83:
	BTFSC      STATUS+0, 2
	GOTO       L__displayFrame84
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__displayFrame83
L__displayFrame84:
	MOVF       R0+0, 0
	IORWF      R2+0, 0
	MOVWF      PORTA+0
;ledcube3rev2.c,61 :: 		portb = 0x00;
	CLRF       PORTB+0
;ledcube3rev2.c,62 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_displayFrame22:
	DECFSZ     R13+0, 1
	GOTO       L_displayFrame22
	DECFSZ     R12+0, 1
	GOTO       L_displayFrame22
	NOP
	NOP
;ledcube3rev2.c,63 :: 		porta = 1<<layer;
	MOVF       _layer+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__displayFrame85:
	BTFSC      STATUS+0, 2
	GOTO       L__displayFrame86
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__displayFrame85
L__displayFrame86:
	MOVF       R0+0, 0
	MOVWF      PORTA+0
;ledcube3rev2.c,64 :: 		portb = layerData&0x38;
	MOVLW      56
	ANDWF      _layerData+0, 0
	MOVWF      PORTB+0
;ledcube3rev2.c,65 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_displayFrame23:
	DECFSZ     R13+0, 1
	GOTO       L_displayFrame23
	DECFSZ     R12+0, 1
	GOTO       L_displayFrame23
	NOP
	NOP
;ledcube3rev2.c,66 :: 		porta = 1<<layer;
	MOVF       _layer+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__displayFrame87:
	BTFSC      STATUS+0, 2
	GOTO       L__displayFrame88
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__displayFrame87
L__displayFrame88:
	MOVF       R0+0, 0
	MOVWF      PORTA+0
;ledcube3rev2.c,67 :: 		portb = layerData&0x07;
	MOVLW      7
	ANDWF      _layerData+0, 0
	MOVWF      PORTB+0
;ledcube3rev2.c,68 :: 		delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_displayFrame24:
	DECFSZ     R13+0, 1
	GOTO       L_displayFrame24
	DECFSZ     R12+0, 1
	GOTO       L_displayFrame24
	NOP
	NOP
;ledcube3rev2.c,58 :: 		for(layer=0;layer<3;layer++) {
	INCF       _layer+0, 1
	BTFSC      STATUS+0, 2
	INCF       _layer+1, 1
;ledcube3rev2.c,69 :: 		}
	GOTO       L_displayFrame19
L_displayFrame20:
;ledcube3rev2.c,57 :: 		for(time=0;time<cycles;time++) {
	INCF       _time+0, 1
	BTFSC      STATUS+0, 2
	INCF       _time+1, 1
;ledcube3rev2.c,70 :: 		}
	GOTO       L_displayFrame16
L_displayFrame17:
;ledcube3rev2.c,71 :: 		}
L_end_displayFrame:
	RETURN
; end of _displayFrame

_upDown:

;ledcube3rev2.c,73 :: 		void upDown(int frameTime, int count) {
;ledcube3rev2.c,74 :: 		for(i=0;i<count;i++) {
	CLRF       _i+0
	CLRF       _i+1
L_upDown25:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      FARG_upDown_count+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__upDown90
	MOVF       FARG_upDown_count+0, 0
	SUBWF      _i+0, 0
L__upDown90:
	BTFSC      STATUS+0, 0
	GOTO       L_upDown26
;ledcube3rev2.c,75 :: 		displayFrame(frameTime, 0000000777);
	MOVF       FARG_upDown_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_upDown_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      255
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      1
	MOVWF      FARG_displayFrame_frame+1
	CLRF       FARG_displayFrame_frame+2
	CLRF       FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,76 :: 		displayFrame(frameTime, 0000777000);
	MOVF       FARG_upDown_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_upDown_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      0
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      254
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      3
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      0
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,77 :: 		displayFrame(frameTime, 0777000000);
	MOVF       FARG_upDown_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_upDown_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      0
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      0
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      252
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      7
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,78 :: 		displayFrame(frameTime, 0000777000);
	MOVF       FARG_upDown_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_upDown_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      0
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      254
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      3
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      0
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,74 :: 		for(i=0;i<count;i++) {
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;ledcube3rev2.c,79 :: 		}
	GOTO       L_upDown25
L_upDown26:
;ledcube3rev2.c,80 :: 		}
L_end_upDown:
	RETURN
; end of _upDown

_leftRight:

;ledcube3rev2.c,82 :: 		void leftRight(int frameTime, int count) {
;ledcube3rev2.c,83 :: 		for(i=0;i<count;i++) {
	CLRF       _i+0
	CLRF       _i+1
L_leftRight28:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      FARG_leftRight_count+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__leftRight92
	MOVF       FARG_leftRight_count+0, 0
	SUBWF      _i+0, 0
L__leftRight92:
	BTFSC      STATUS+0, 0
	GOTO       L_leftRight29
;ledcube3rev2.c,84 :: 		displayFrame(frameTime, 0111111111);
	MOVF       FARG_leftRight_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_leftRight_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      73
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      146
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      36
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      1
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,85 :: 		displayFrame(frameTime, 0222222222);
	MOVF       FARG_leftRight_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_leftRight_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      146
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      36
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      73
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      2
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,86 :: 		displayFrame(frameTime, 0444444444);
	MOVF       FARG_leftRight_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_leftRight_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      36
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      73
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      146
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      4
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,87 :: 		displayFrame(frameTime, 0222222222);
	MOVF       FARG_leftRight_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_leftRight_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      146
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      36
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      73
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      2
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,83 :: 		for(i=0;i<count;i++) {
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;ledcube3rev2.c,88 :: 		}
	GOTO       L_leftRight28
L_leftRight29:
;ledcube3rev2.c,89 :: 		}
L_end_leftRight:
	RETURN
; end of _leftRight

_frontBack:

;ledcube3rev2.c,91 :: 		void frontBack(int frameTime, int count) {
;ledcube3rev2.c,92 :: 		for(i=0;i<count;i++) {
	CLRF       _i+0
	CLRF       _i+1
L_frontBack31:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      FARG_frontBack_count+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__frontBack94
	MOVF       FARG_frontBack_count+0, 0
	SUBWF      _i+0, 0
L__frontBack94:
	BTFSC      STATUS+0, 0
	GOTO       L_frontBack32
;ledcube3rev2.c,93 :: 		displayFrame(frameTime, 0700700700);
	MOVF       FARG_frontBack_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_frontBack_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      192
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      129
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      3
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      7
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,94 :: 		displayFrame(frameTime, 0070070070);
	MOVF       FARG_frontBack_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_frontBack_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      56
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      112
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      224
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      0
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,95 :: 		displayFrame(frameTime, 0007007007);
	MOVF       FARG_frontBack_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_frontBack_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      7
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      14
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      28
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      0
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,96 :: 		displayFrame(frameTime, 0070070070);
	MOVF       FARG_frontBack_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_frontBack_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      56
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      112
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      224
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      0
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,92 :: 		for(i=0;i<count;i++) {
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;ledcube3rev2.c,97 :: 		}
	GOTO       L_frontBack31
L_frontBack32:
;ledcube3rev2.c,98 :: 		}
L_end_frontBack:
	RETURN
; end of _frontBack

_randomBit:

;ledcube3rev2.c,100 :: 		void randomBit(int frameTime, int count) {
;ledcube3rev2.c,101 :: 		for(i=0;i<count;i++) {
	CLRF       _i+0
	CLRF       _i+1
L_randomBit34:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      FARG_randomBit_count+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__randomBit96
	MOVF       FARG_randomBit_count+0, 0
	SUBWF      _i+0, 0
L__randomBit96:
	BTFSC      STATUS+0, 0
	GOTO       L_randomBit35
;ledcube3rev2.c,102 :: 		displayFrame(frameTime, 0400000000>>(rand()%27));
	CALL       _rand+0
	MOVLW      27
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVLW      0
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      0
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      0
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      4
	MOVWF      FARG_displayFrame_frame+3
	MOVF       R0+0, 0
L__randomBit97:
	BTFSC      STATUS+0, 2
	GOTO       L__randomBit98
	RRF        FARG_displayFrame_frame+3, 1
	RRF        FARG_displayFrame_frame+2, 1
	RRF        FARG_displayFrame_frame+1, 1
	RRF        FARG_displayFrame_frame+0, 1
	BCF        FARG_displayFrame_frame+3, 7
	BTFSC      FARG_displayFrame_frame+3, 6
	BSF        FARG_displayFrame_frame+3, 7
	ADDLW      255
	GOTO       L__randomBit97
L__randomBit98:
	MOVF       FARG_randomBit_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_randomBit_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	CALL       _displayFrame+0
;ledcube3rev2.c,101 :: 		for(i=0;i<count;i++) {
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;ledcube3rev2.c,103 :: 		}
	GOTO       L_randomBit34
L_randomBit35:
;ledcube3rev2.c,104 :: 		}
L_end_randomBit:
	RETURN
; end of _randomBit

_CSpinX:

;ledcube3rev2.c,106 :: 		void CSpinX(int frameTime, int count) {
;ledcube3rev2.c,107 :: 		for(i=0;i<count;i++) {
	CLRF       _i+0
	CLRF       _i+1
L_CSpinX37:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      FARG_CSpinX_count+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__CSpinX100
	MOVF       FARG_CSpinX_count+0, 0
	SUBWF      _i+0, 0
L__CSpinX100:
	BTFSC      STATUS+0, 0
	GOTO       L_CSpinX38
;ledcube3rev2.c,108 :: 		displayFrame(frameTime, 0222222222);
	MOVF       FARG_CSpinX_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_CSpinX_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      146
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      36
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      73
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      2
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,109 :: 		displayFrame(frameTime, 0444222111);
	MOVF       FARG_CSpinX_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_CSpinX_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      73
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      36
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      145
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      4
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,110 :: 		displayFrame(frameTime, 0000777000);
	MOVF       FARG_CSpinX_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_CSpinX_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      0
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      254
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      3
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      0
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,111 :: 		displayFrame(frameTime, 0111222444);
	MOVF       FARG_CSpinX_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_CSpinX_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      36
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      37
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      37
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      1
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,107 :: 		for(i=0;i<count;i++) {
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;ledcube3rev2.c,112 :: 		}
	GOTO       L_CSpinX37
L_CSpinX38:
;ledcube3rev2.c,113 :: 		}
L_end_CSpinX:
	RETURN
; end of _CSpinX

_CSpinY:

;ledcube3rev2.c,115 :: 		void CSpinY(int frameTime, int count) {
;ledcube3rev2.c,116 :: 		for(i=0;i<count;i++) {
	CLRF       _i+0
	CLRF       _i+1
L_CSpinY40:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      FARG_CSpinY_count+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__CSpinY102
	MOVF       FARG_CSpinY_count+0, 0
	SUBWF      _i+0, 0
L__CSpinY102:
	BTFSC      STATUS+0, 0
	GOTO       L_CSpinY41
;ledcube3rev2.c,117 :: 		displayFrame(frameTime, 0070070070);
	MOVF       FARG_CSpinY_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_CSpinY_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      56
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      112
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      224
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      0
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,118 :: 		displayFrame(frameTime, 0700070007);
	MOVF       FARG_CSpinY_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_CSpinY_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      7
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      112
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      0
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      7
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,119 :: 		displayFrame(frameTime, 0000777000);
	MOVF       FARG_CSpinY_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_CSpinY_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      0
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      254
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      3
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      0
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,120 :: 		displayFrame(frameTime, 0007070700);
	MOVF       FARG_CSpinY_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_CSpinY_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      192
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      113
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      28
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      0
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,116 :: 		for(i=0;i<count;i++) {
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;ledcube3rev2.c,121 :: 		}
	GOTO       L_CSpinY40
L_CSpinY41:
;ledcube3rev2.c,122 :: 		}
L_end_CSpinY:
	RETURN
; end of _CSpinY

_CSpinZ:

;ledcube3rev2.c,124 :: 		void CSpinZ(int frameTime, int count) {
;ledcube3rev2.c,125 :: 		for(i=0;i<count;i++) {
	CLRF       _i+0
	CLRF       _i+1
L_CSpinZ43:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      FARG_CSpinZ_count+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__CSpinZ104
	MOVF       FARG_CSpinZ_count+0, 0
	SUBWF      _i+0, 0
L__CSpinZ104:
	BTFSC      STATUS+0, 0
	GOTO       L_CSpinZ44
;ledcube3rev2.c,126 :: 		displayFrame(frameTime, 0070070070);
	MOVF       FARG_CSpinZ_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_CSpinZ_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      56
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      112
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      224
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      0
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,127 :: 		displayFrame(frameTime, 0421421421);
	MOVF       FARG_CSpinZ_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_CSpinZ_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      17
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      35
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      70
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      4
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,128 :: 		displayFrame(frameTime, 0222222222);
	MOVF       FARG_CSpinZ_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_CSpinZ_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      146
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      36
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      73
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      2
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,129 :: 		displayFrame(frameTime, 0124124124);
	MOVF       FARG_CSpinZ_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_CSpinZ_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      84
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      168
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      80
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      1
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,125 :: 		for(i=0;i<count;i++) {
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;ledcube3rev2.c,130 :: 		}
	GOTO       L_CSpinZ43
L_CSpinZ44:
;ledcube3rev2.c,131 :: 		}
L_end_CSpinZ:
	RETURN
; end of _CSpinZ

_CCSpinX:

;ledcube3rev2.c,133 :: 		void CCSpinX(int frameTime, int count) {
;ledcube3rev2.c,134 :: 		for(i=0;i<count;i++) {
	CLRF       _i+0
	CLRF       _i+1
L_CCSpinX46:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      FARG_CCSpinX_count+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__CCSpinX106
	MOVF       FARG_CCSpinX_count+0, 0
	SUBWF      _i+0, 0
L__CCSpinX106:
	BTFSC      STATUS+0, 0
	GOTO       L_CCSpinX47
;ledcube3rev2.c,135 :: 		displayFrame(frameTime, 0222222222);
	MOVF       FARG_CCSpinX_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_CCSpinX_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      146
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      36
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      73
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      2
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,136 :: 		displayFrame(frameTime, 0111222444);
	MOVF       FARG_CCSpinX_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_CCSpinX_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      36
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      37
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      37
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      1
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,137 :: 		displayFrame(frameTime, 0000777000);
	MOVF       FARG_CCSpinX_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_CCSpinX_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      0
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      254
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      3
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      0
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,138 :: 		displayFrame(frameTime, 0444222111);
	MOVF       FARG_CCSpinX_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_CCSpinX_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      73
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      36
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      145
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      4
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,134 :: 		for(i=0;i<count;i++) {
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;ledcube3rev2.c,139 :: 		}
	GOTO       L_CCSpinX46
L_CCSpinX47:
;ledcube3rev2.c,140 :: 		}
L_end_CCSpinX:
	RETURN
; end of _CCSpinX

_CCSpinY:

;ledcube3rev2.c,142 :: 		void CCSpinY(int frameTime, int count) {
;ledcube3rev2.c,143 :: 		for(i=0;i<count;i++) {
	CLRF       _i+0
	CLRF       _i+1
L_CCSpinY49:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      FARG_CCSpinY_count+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__CCSpinY108
	MOVF       FARG_CCSpinY_count+0, 0
	SUBWF      _i+0, 0
L__CCSpinY108:
	BTFSC      STATUS+0, 0
	GOTO       L_CCSpinY50
;ledcube3rev2.c,144 :: 		displayFrame(frameTime, 0070070070);
	MOVF       FARG_CCSpinY_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_CCSpinY_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      56
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      112
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      224
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      0
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,145 :: 		displayFrame(frameTime, 0007070700);
	MOVF       FARG_CCSpinY_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_CCSpinY_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      192
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      113
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      28
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      0
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,146 :: 		displayFrame(frameTime, 0000777000);
	MOVF       FARG_CCSpinY_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_CCSpinY_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      0
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      254
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      3
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      0
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,147 :: 		displayFrame(frameTime, 0700070007);
	MOVF       FARG_CCSpinY_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_CCSpinY_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      7
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      112
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      0
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      7
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,143 :: 		for(i=0;i<count;i++) {
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;ledcube3rev2.c,148 :: 		}
	GOTO       L_CCSpinY49
L_CCSpinY50:
;ledcube3rev2.c,149 :: 		}
L_end_CCSpinY:
	RETURN
; end of _CCSpinY

_CCSpinZ:

;ledcube3rev2.c,151 :: 		void CCSpinZ(int frameTime, int count) {
;ledcube3rev2.c,152 :: 		for(i=0;i<count;i++) {
	CLRF       _i+0
	CLRF       _i+1
L_CCSpinZ52:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      FARG_CCSpinZ_count+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__CCSpinZ110
	MOVF       FARG_CCSpinZ_count+0, 0
	SUBWF      _i+0, 0
L__CCSpinZ110:
	BTFSC      STATUS+0, 0
	GOTO       L_CCSpinZ53
;ledcube3rev2.c,153 :: 		displayFrame(frameTime, 0070070070);
	MOVF       FARG_CCSpinZ_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_CCSpinZ_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      56
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      112
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      224
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      0
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,154 :: 		displayFrame(frameTime, 0124124124);
	MOVF       FARG_CCSpinZ_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_CCSpinZ_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      84
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      168
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      80
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      1
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,155 :: 		displayFrame(frameTime, 0222222222);
	MOVF       FARG_CCSpinZ_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_CCSpinZ_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      146
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      36
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      73
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      2
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,156 :: 		displayFrame(frameTime, 0421421421);
	MOVF       FARG_CCSpinZ_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_CCSpinZ_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      17
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      35
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      70
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      4
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,152 :: 		for(i=0;i<count;i++) {
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;ledcube3rev2.c,157 :: 		}
	GOTO       L_CCSpinZ52
L_CCSpinZ53:
;ledcube3rev2.c,158 :: 		}
L_end_CCSpinZ:
	RETURN
; end of _CCSpinZ

_CHelix:

;ledcube3rev2.c,160 :: 		void CHelix(int frameTime, int count) {
;ledcube3rev2.c,161 :: 		for(i=0;i<count;i++) {
	CLRF       _i+0
	CLRF       _i+1
L_CHelix55:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      FARG_CHelix_count+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__CHelix112
	MOVF       FARG_CHelix_count+0, 0
	SUBWF      _i+0, 0
L__CHelix112:
	BTFSC      STATUS+0, 0
	GOTO       L_CHelix56
;ledcube3rev2.c,162 :: 		displayFrame(frameTime, 0100200400);
	MOVF       FARG_CHelix_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_CHelix_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      0
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      1
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      1
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      1
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,163 :: 		displayFrame(frameTime, 0010100200);
	MOVF       FARG_CHelix_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_CHelix_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      128
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      128
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      32
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      0
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,164 :: 		displayFrame(frameTime, 0001010100);
	MOVF       FARG_CHelix_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_CHelix_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      64
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      16
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      4
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      0
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,165 :: 		displayFrame(frameTime, 0002001010);
	MOVF       FARG_CHelix_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_CHelix_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      8
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      2
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      8
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      0
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,166 :: 		displayFrame(frameTime, 0004002001);
	MOVF       FARG_CHelix_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_CHelix_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      1
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      4
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      16
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      0
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,167 :: 		displayFrame(frameTime, 0040004002);
	MOVF       FARG_CHelix_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_CHelix_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      2
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      8
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      128
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      0
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,168 :: 		displayFrame(frameTime, 0400040004);
	MOVF       FARG_CHelix_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_CHelix_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      4
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      64
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      0
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      4
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,169 :: 		displayFrame(frameTime, 0200400040);
	MOVF       FARG_CHelix_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_CHelix_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      32
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      0
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      2
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      2
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,161 :: 		for(i=0;i<count;i++) {
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;ledcube3rev2.c,170 :: 		}
	GOTO       L_CHelix55
L_CHelix56:
;ledcube3rev2.c,171 :: 		}
L_end_CHelix:
	RETURN
; end of _CHelix

_CCHelix:

;ledcube3rev2.c,173 :: 		void CCHelix(int frameTime, int count) {
;ledcube3rev2.c,174 :: 		for(i=0;i<count;i++) {
	CLRF       _i+0
	CLRF       _i+1
L_CCHelix58:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      FARG_CCHelix_count+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__CCHelix114
	MOVF       FARG_CCHelix_count+0, 0
	SUBWF      _i+0, 0
L__CCHelix114:
	BTFSC      STATUS+0, 0
	GOTO       L_CCHelix59
;ledcube3rev2.c,175 :: 		displayFrame(frameTime, 0100010001);
	MOVF       FARG_CCHelix_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_CCHelix_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      1
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      16
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      0
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      1
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,176 :: 		displayFrame(frameTime, 0200100010);
	MOVF       FARG_CCHelix_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_CCHelix_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      8
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      128
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      0
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      2
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,177 :: 		displayFrame(frameTime, 0400200100);
	MOVF       FARG_CCHelix_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_CCHelix_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      64
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      0
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      1
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      4
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,178 :: 		displayFrame(frameTime, 0040400200);
	MOVF       FARG_CCHelix_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_CCHelix_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      128
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      0
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      130
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      0
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,179 :: 		displayFrame(frameTime, 0004040400);
	MOVF       FARG_CCHelix_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_CCHelix_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      0
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      65
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      16
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      0
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,180 :: 		displayFrame(frameTime, 0002004040);
	MOVF       FARG_CCHelix_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_CCHelix_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      32
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      8
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      8
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      0
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,181 :: 		displayFrame(frameTime, 0001002004);
	MOVF       FARG_CCHelix_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_CCHelix_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      4
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      4
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      4
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      0
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,182 :: 		displayFrame(frameTime, 0010001002);
	MOVF       FARG_CCHelix_frameTime+0, 0
	MOVWF      FARG_displayFrame_frameTime+0
	MOVF       FARG_CCHelix_frameTime+1, 0
	MOVWF      FARG_displayFrame_frameTime+1
	MOVLW      2
	MOVWF      FARG_displayFrame_frame+0
	MOVLW      2
	MOVWF      FARG_displayFrame_frame+1
	MOVLW      32
	MOVWF      FARG_displayFrame_frame+2
	MOVLW      0
	MOVWF      FARG_displayFrame_frame+3
	CALL       _displayFrame+0
;ledcube3rev2.c,174 :: 		for(i=0;i<count;i++) {
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;ledcube3rev2.c,184 :: 		}
	GOTO       L_CCHelix58
L_CCHelix59:
;ledcube3rev2.c,185 :: 		}
L_end_CCHelix:
	RETURN
; end of _CCHelix
