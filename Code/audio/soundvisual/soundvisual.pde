import ddf.minim.*;
import ddf.minim.analysis.*;

Minim minim;
AudioPlayer song;
FFT fft;

void setup(){
size(1025,200);

minim = new Minim(this);
song = minim.loadFile("1.mp3");
song.loop();

fft = new FFT(song.bufferSize(),song.sampleRate());
}



void draw(){
  background(0);
  
  fill(255);
  rect(0,0, song.left.level()*width, 100);
  rect(0,100, song.right.level()*width, 100);
  
  fft.forward(song.mix);
  
  for(int i = 0; i < fft.specSize(); i ++){
    line(i, height, height - fft. getBand(0)*4);
  
  }

}