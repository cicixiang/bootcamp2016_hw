float theta;
float r = 100;

void setup(){
size(800,800);

smooth();
}

void draw(){
  
  fill(0,10);
  rect(0,0,width,height);
  
  float x;
  float y;
  
x = r * cos(theta);
y = r * sin(theta);

fill(0,255,255);
noStroke();
ellipse(x+width/2,y+height/2,50,50);

theta += 10;

}