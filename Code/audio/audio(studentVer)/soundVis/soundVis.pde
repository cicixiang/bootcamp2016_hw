import ddf.minim.*;
import ddf.minim.analysis.*;

Minim minim;
AudioPlayer song;
FFT fft;

int num =300;
float pTime;
PVector[] psArray = new PVector[num];
float fftVal;



void setup() {

  size(1000, 800);
  minim = new Minim(this);
  song = minim.loadFile("1.mp3");
  song.loop();

  fft = new FFT(song.bufferSize(), song.sampleRate());
  
  for(int i = o; i <num; i ++){
  posArray[i] = new PVector(0,0);
  
  }
}


void draw() {
background(0);
  fft.forward(song.mix);
  
  pushMatrix();
  translate(width/2, height/2);

  
  //300 ellipses
  fill(255);
  
  for(int i = 0; i <num, i ++){
  ellipse(posArray[i].x,posArray[i].y,2,2)
  }
  
  float test = 50;
  
  //lines
  
  for(int i = 0; i <num; i ++){
    for(int j = i+1; j <num; j++){
      //dist(x1,yi,x2,y2);
      float distance = dist(posArray[i]. x, posArray[i].y, posArray[j].x, posArray[j].y);
      
      if (distance<test){
      line(posArray[i]. x, posArray[i].y, posArray[j].x, posArray[j].y);
    }
    }
  }
  
  popMatrix();
  
  
  
  
}

void update() {
  float fftval = fft.getBand(300);
  float time = millis()*0.001;
  float dt = time-pTime;
  pTime = time;
  
  
  vel = map(fftVal,0.0,0.1,0.05,0.5);
  
  for(int i = 0; i <num; i ++){
  
  
  }
}