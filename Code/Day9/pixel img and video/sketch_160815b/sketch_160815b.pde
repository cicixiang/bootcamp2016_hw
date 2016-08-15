PImage img;
int smallPoint, largePoint;

void setup() {
  size(640, 360);
  img= loadImage("img.jpg");
  smallPoint=4;
  largePoint=40;
  imageMode(CENTER);
  noStroke();
  background(255);
  frameRate(100000);
}
void draw() {
  float size= map(mouseX,0,width,smallPoint,largePoint);
  int x=(int) random(img.width);
  int y=(int) random(img.height);
  color pix= img.get(x,y);
  fill(pix,128);
  ellipse(x,y,size,size);
  
  
}