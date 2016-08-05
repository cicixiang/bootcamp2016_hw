float posY, vel;



void setup(){
  size(1000,1000);
  
  posY = 0;
  vel = 5;

}

void draw(){

  fill(0,10);
  rect(0,0,width,height);
  
  move();
  makeCircle(width/4, 50);
  makeCircle(3*width/4,15);
  
  
 float sizeOfCenterCircle = map(mouseX,0,600,0,154);
  makeCircle(width/2, sizeOfCenterCircle);
}

void makeCircle(float posX, float size){
float r = posX;
float g = posY;
float b = 227;

  noStroke();
  fill(r,g,b);
  ellipse(posX,posY,size,size);
  
}

void move(){
  posY += vel;
  
  if(posY > height || posY<0){
    vel *= -1;
  
  }
  
}