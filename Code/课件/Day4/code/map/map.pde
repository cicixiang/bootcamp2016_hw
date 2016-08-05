void setup() {
  size(150, 150);
  background(255);
}

void draw() {
  int c = (int) map(mouseX,0,150,0,255);
  
  fill(c);
  ellipse(width/2, height/2, 100, 100);
}