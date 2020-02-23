//A0-A2 --> Z0-Z2

// B0  B1  B2
// B3  B4  B5
// A3  A4  A6

int i;
int j;
int loop;
int count;
int delay = 100;

void clearDisplay(); //prototype
void refreshDisplay(int time, int array[][]); //prototype

unsigned short arrayData0[3][3] = {{01,02,04}, {01,02,04}, {01,02,04}};  //AU BU BL
unsigned short arrayData1[3][3] = {{02,02,02}, {02,02,02}, {02,02,02}};  //AU BU BL
unsigned short arrayData2[3][3] = {{04,02,01}, {04,02,01}, {04,02,01}};  //AU BU BL
unsigned short arrayData3[3][3] = {{00,07,00}, {00,07,00}, {00,07,00}};  //AU BU BL
unsigned short arrayData4[3][3] = {{07,00,00}, {00,07,00}, {00,00,07}};  //AU BU BL
unsigned short arrayData5[3][3] = {{00,00,00}, {07,07,07}, {00,00,00}};  //AU BU BL
unsigned short arrayData6[3][3] = {{00,00,07}, {00,07,00}, {07,00,00}};  //AU BU BL


void main() {
osccon=0x72;
trisa=0x00;
trisb=0x00;
porta=0x00;
portb=0x00;
  while(1) {
    for(count=0;count<8;count++) {
      refreshDisplay(delay, arrayData0); //time on desplay in ms, patern to display
      refreshDisplay(delay, arrayData1); //time on desplay in ms, patern to display
      refreshDisplay(delay, arrayData2); //time on desplay in ms, patern to display
      refreshDisplay(delay, arrayData3); //time on desplay in ms, patern to display
    }
    for(count=0;count<8;count++) {
      refreshDisplay(delay, arrayData2); //time on desplay in ms, patern to display
      refreshDisplay(delay, arrayData1); //time on desplay in ms, patern to display
      refreshDisplay(delay, arrayData0); //time on desplay in ms, patern to display
      refreshDisplay(delay, arrayData3); //time on desplay in ms, patern to display
    }
    for(count=0;count<8;count++) {
      refreshDisplay(delay, arrayData4); //time on desplay in ms, patern to display
      refreshDisplay(delay, arrayData5); //time on desplay in ms, patern to display
      refreshDisplay(delay, arrayData6); //time on desplay in ms, patern to display
      refreshDisplay(delay, arrayData3); //time on desplay in ms, patern to display
    }
    for(count=0;count<8;count++) {
      refreshDisplay(delay, arrayData6); //time on desplay in ms, patern to display
      refreshDisplay(delay, arrayData5); //time on desplay in ms, patern to display
      refreshDisplay(delay, arrayData4); //time on desplay in ms, patern to display
      refreshDisplay(delay, arrayData3); //time on desplay in ms, patern to display
    }
  }
}

void clearDisplay() {
  porta = 0x00;
  portb = 0x00;
}

void refreshDisplay (int time, int array[3][3]) {
  loop = time/9;
  for(i=0;i<loop;i++) {    //CYCLE the entire desplay long enough to equal time
    for(j=0;j<3;j++) {    //cycle through each layer
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