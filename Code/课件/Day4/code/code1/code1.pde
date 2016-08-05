float yPos, vel, size;

//-------------------------------
void setup() {
  size(600, 600);
  background(0);


  yPos = 0; 
  vel = 4;
}

//-------------------------------
void draw() {
  fill(0, 10);
  rect(0, 0, width, height);

  moveDrop();
  
  makeEllipse(width/4,5);
  makeEllipse(3*width/4,25);
  
  size = calculateSize(mouseX/8,mouseY/8);
  makeEllipse(width/2,size+5);
  }


//-------------------------------
void moveDrop() {
  

  yPos += vel; //increment yPos

  if ( yPos < 0 || yPos > height) { 
    vel *= -1;
  }
}


//-------------------------------
void makeEllipse(float xPos, float size) {
  float r = xPos;
  float g = yPos;

   if(r>255){
    r=100;
  }
  
  if(g>255){
    g=100;
  }
  
  noStroke();
  fill(r,g,227);
  ellipse(xPos,yPos,size,size);
}


//-------------------------------
float calculateSize(float x1, float y1) {
  float s = x1 + y1;
  return s;
}