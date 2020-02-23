#line 1 "D:/Cloud Storage/Dropbox/Projects/Electronics/PIC/MikroC PIC Programs/PIC16F88/ledcube3/ledcube3.c"






int i;
int j;
int loop;
int count;
int delay = 100;

void clearDisplay();
void refreshDisplay(int time, int array[][]);

unsigned short arrayData0[3][3] = {{01,02,04}, {01,02,04}, {01,02,04}};
unsigned short arrayData1[3][3] = {{02,02,02}, {02,02,02}, {02,02,02}};
unsigned short arrayData2[3][3] = {{04,02,01}, {04,02,01}, {04,02,01}};
unsigned short arrayData3[3][3] = {{00,07,00}, {00,07,00}, {00,07,00}};
unsigned short arrayData4[3][3] = {{07,00,00}, {00,07,00}, {00,00,07}};
unsigned short arrayData5[3][3] = {{00,00,00}, {07,07,07}, {00,00,00}};
unsigned short arrayData6[3][3] = {{00,00,07}, {00,07,00}, {07,00,00}};


void main() {
osccon=0x72;
trisa=0x00;
trisb=0x00;
porta=0x00;
portb=0x00;
 while(1) {
 for(count=0;count<8;count++) {
 refreshDisplay(delay, arrayData0);
 refreshDisplay(delay, arrayData1);
 refreshDisplay(delay, arrayData2);
 refreshDisplay(delay, arrayData3);
 }
 for(count=0;count<8;count++) {
 refreshDisplay(delay, arrayData2);
 refreshDisplay(delay, arrayData1);
 refreshDisplay(delay, arrayData0);
 refreshDisplay(delay, arrayData3);
 }
 for(count=0;count<8;count++) {
 refreshDisplay(delay, arrayData4);
 refreshDisplay(delay, arrayData5);
 refreshDisplay(delay, arrayData6);
 refreshDisplay(delay, arrayData3);
 }
 for(count=0;count<8;count++) {
 refreshDisplay(delay, arrayData6);
 refreshDisplay(delay, arrayData5);
 refreshDisplay(delay, arrayData4);
 refreshDisplay(delay, arrayData3);
 }
 }
}

void clearDisplay() {
 porta = 0x00;
 portb = 0x00;
}

void refreshDisplay (int time, int array[3][3]) {
 loop = time/9;
 for(i=0;i<loop;i++) {
 for(j=0;j<3;j++) {
 clearDisplay();
 porta=(array[j][0]<<1&0xf8|array[j][0])<<3|1<<j;
 delay_ms(1);

 clearDisplay();
 porta=1<<j;
 portb=array[j][1]<<3;
 delay_ms(1);

 clearDisplay();
 porta=1<<j;
 portb=array[j][2];
 delay_ms(1);
 }
 }
}
