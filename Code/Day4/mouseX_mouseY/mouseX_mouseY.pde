void setup(){
size(200,200);
background(255);
}

void draw(){
  float c = map(mouseX,0,150,0,255);
fill(mouseX);
ellipse(width/2,height/2,100,100);
}