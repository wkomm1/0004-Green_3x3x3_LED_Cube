//A0-A2 --> Z0-Z2

//B0  B1  B2
//B3  B4  B5
//A3  A4  A6

int i;
int time;
int frame;
int count;
int layer;
int cycles;
int layerData;
int frameTime;

void displayFrame(int duration, long frame);  //prototype

void upDown(int frameTime, int count);
void CSpinX(int frameTime, int count);  //viewed from front
void CSpinY(int frameTime, int count);  //viewed from left
void CSpinZ(int frameTime, int count);  //viewed from top
void CCSpinX(int frameTime, int count); //viewed from front
void CCSpinY(int frameTime, int count); //viewed from left
void CCSpinZ(int frameTime, int count); //viewed from top
void leftRight(int frameTime, int count);
void frontBack(int frameTime, int count);
void randomBit(int frameTime, int count);
void CHelix(int frameTime, int count);
void CCHelix(int frameTime, int count);


void main() {
  osccon=0x72;
  trisa=0x00;
  trisb=0x00;
  while(1) {
    switch(rand()%(11+1)) {
      case 0: upDown(100, 8); break;
      case 1: leftRight(100, 8); break;
      case 2: frontBack(100, 8); break;
      case 3: randomBit(50, 64); break;
      case 4: CSpinX(100, 8); break;
      case 5: CSpinY(100, 8); break;
      case 6: CSpinZ(100, 8); break;
      case 7: CCSpinX(100, 8); break;
      case 8: CCSpinY(100, 8); break;
      case 9: CCSpinZ(100, 8); break;
      case 10: CHelix(100, 4); break;
      case 11: CCHelix(100, 4); break;
    }
  }
}

//z2x0 z2x1 z2x2||z201x0 z201x1 z01x2||z0x0 z0x1 z0x2||
void displayFrame(int frameTime, long frame) {
  cycles = frameTime/9;
  for(time=0;time<cycles;time++) {
    for(layer=0;layer<3;layer++) {
      layerData = frame>>(layer*9);
      porta = (layerData>>5&8|(layerData>>6&7))<<3|(1<<layer);
      portb = 0x00;
      delay_ms(1);
      porta = 1<<layer;
      portb = layerData&0x38;
      delay_ms(1);
      porta = 1<<layer;
      portb = layerData&0x07;
      delay_ms(1);
    }
  }
}

void upDown(int frameTime, int count) {
  for(i=0;i<count;i++) {
    displayFrame(frameTime, 0000000777);
    displayFrame(frameTime, 0000777000);
    displayFrame(frameTime, 0777000000);
    displayFrame(frameTime, 0000777000);
  }
}

void leftRight(int frameTime, int count) {
  for(i=0;i<count;i++) {
    displayFrame(frameTime, 0111111111);
    displayFrame(frameTime, 0222222222);
    displayFrame(frameTime, 0444444444);
    displayFrame(frameTime, 0222222222);
  }
}

void frontBack(int frameTime, int count) {
  for(i=0;i<count;i++) {
    displayFrame(frameTime, 0700700700);
    displayFrame(frameTime, 0070070070);
    displayFrame(frameTime, 0007007007);
    displayFrame(frameTime, 0070070070);
  }
}

void randomBit(int frameTime, int count) {
  for(i=0;i<count;i++) {
    displayFrame(frameTime, 0400000000>>(rand()%27));
  }
}

void CSpinX(int frameTime, int count) {
  for(i=0;i<count;i++) {
    displayFrame(frameTime, 0222222222);
    displayFrame(frameTime, 0444222111);
    displayFrame(frameTime, 0000777000);
    displayFrame(frameTime, 0111222444);
  }
}

void CSpinY(int frameTime, int count) {
  for(i=0;i<count;i++) {
    displayFrame(frameTime, 0070070070);
    displayFrame(frameTime, 0700070007);
    displayFrame(frameTime, 0000777000);
    displayFrame(frameTime, 0007070700);
  }
}

void CSpinZ(int frameTime, int count) {
  for(i=0;i<count;i++) {
    displayFrame(frameTime, 0070070070);
    displayFrame(frameTime, 0421421421);
    displayFrame(frameTime, 0222222222);
    displayFrame(frameTime, 0124124124);
  }
}

void CCSpinX(int frameTime, int count) {
  for(i=0;i<count;i++) {
    displayFrame(frameTime, 0222222222);
    displayFrame(frameTime, 0111222444);
    displayFrame(frameTime, 0000777000);
    displayFrame(frameTime, 0444222111);
  }
}

void CCSpinY(int frameTime, int count) {
  for(i=0;i<count;i++) {
    displayFrame(frameTime, 0070070070);
    displayFrame(frameTime, 0007070700);
    displayFrame(frameTime, 0000777000);
    displayFrame(frameTime, 0700070007);
  }
}

void CCSpinZ(int frameTime, int count) {
  for(i=0;i<count;i++) {
    displayFrame(frameTime, 0070070070);
    displayFrame(frameTime, 0124124124);
    displayFrame(frameTime, 0222222222);
    displayFrame(frameTime, 0421421421);
  }
}

void CHelix(int frameTime, int count) {
  for(i=0;i<count;i++) {
    displayFrame(frameTime, 0100200400);
    displayFrame(frameTime, 0010100200);
    displayFrame(frameTime, 0001010100);
    displayFrame(frameTime, 0002001010);
    displayFrame(frameTime, 0004002001);
    displayFrame(frameTime, 0040004002);
    displayFrame(frameTime, 0400040004);
    displayFrame(frameTime, 0200400040);
  }
}

void CCHelix(int frameTime, int count) {
  for(i=0;i<count;i++) {
    displayFrame(frameTime, 0100010001);
    displayFrame(frameTime, 0200100010);
    displayFrame(frameTime, 0400200100);
    displayFrame(frameTime, 0040400200);
    displayFrame(frameTime, 0004040400);
    displayFrame(frameTime, 0002004040);
    displayFrame(frameTime, 0001002004);
    displayFrame(frameTime, 0010001002);
    
  }
}
