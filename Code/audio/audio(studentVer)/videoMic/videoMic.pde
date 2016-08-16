import ddf.minim.*;
import ddf.minim.analysis.*;
import processing.video.*;

Movie video1;
Movie[] movies = new Movie[5];

Minim minim;
AudioInput in;


void setup() {
  size(600, 427);

  for ( int i = 0; i <5; i ++) {
    movies[i] = new Movie(this, i + ".mp4");
    movies[i].loop();
  }
  
  minim = new Minim(this);
  in = minim.getLineIn();
}

void movieEvent(Movie m){
m.read();
}

void draw() {
  
  float level = in.mix.level();
  
  if(level<1){
  image(movies[0],0,0);
  } else if (level>= 1 && level <3){
  image(movies[1],0,0);
 }else if (level>= 3 && level <5){
  image(movies[2],0,0);
}else if (level>= 5 && level <30){
  image(movies[3],0,0);
}else if (level>= 30 && level <50){
  image(movies[4],0,0);
}
  
}