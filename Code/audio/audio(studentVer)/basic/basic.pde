import ddf.minim.*;


Minim minim;
AudioPlayer player;
float vol,pan;


void setup() {
  size(100, 100);
  minim = new Minim(this);

  player = minim.loadFile("1.mp3");
  player.play();
  player.loop();
}

void draw() {
  player.setGain(vol);
  player.setPan(pan);
}


void keyPressed() {
  //rewind();pause(); setGain();setPan(); Skip();
  if (key == 'a') {
    player.rewind();
  } else if (key == 's') {

    if (player.isPlaying()) {
      player.pause();
    } else if (!player.isPlaying()) {
      player.play();
    }
  }else if(key == 'd'){
    vol -= 5;
  }else if(key == 'f'){
    vol += 5;
  }else if(key == 'g'){
    pan -= 0.1;
  }else if(key == 'h'){
    pan += 0.1;
  }else if(key == 'j'){
    player.skip(500);
  }
}