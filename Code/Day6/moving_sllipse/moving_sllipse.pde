int xPos;
int vel;

void setup(){
   frameRate(1);
   size(1000,600);
   vel = 10;
   xPos = 10;
   

}

void draw(){
   background(0);
ellipse(xPos,300,100,100);
//xPos = xPos + 10;
xPos += vel;
}