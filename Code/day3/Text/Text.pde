PFont f;

void setup(){
size(500,500);
background(255);
f = createFont("Arial",36,true);
}

void draw(){

  fill(0);
  textFont(f);
  textAlign(CENTER);
  text("HEllO", width/2-50, height/2);
  
}