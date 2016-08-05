int xVal, yVal;

void setup() {
  size(600, 600);
  background(0);

  xVal = 0;
  yVal = width/2;
}

void draw() {
  fill(0, 10);
  rect(0, 0, width, height);

  //drawCircle(mouseX,mouseY,mouseX/4);
  if (xVal<width/2) {
    movingCircles(xVal);
    xVal++;
  } else {
    movingCircles(xVal);
    yVal--;
  }

  if (yVal == 0) {
    xVal = 0;
    yVal = width/2;
  }
}

void drawCircle(int posX, int posY, int size) {
  float r = map(posX, 0, width, 0, 255);
  float g = map(posX, 0, height, 0, 255);
  noStroke();

  fill(r, g, 200);
  ellipse(posX, posY, size, size);
}

void movingCircles(int x) {
  
  int size = x/8;

  drawCircle(x, height/2, size);
  drawCircle(width-x, height/2, size);
  drawCircle(width/2, x, size);
  drawCircle(width/2, height-x, size);

  drawCircle(x, x, x/8); 
  drawCircle(width-x, height-x, size); 
  drawCircle(x, width-x, size); 
  drawCircle(height-x, x, x/8);
}