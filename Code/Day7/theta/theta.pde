float theta;
float r = 0;
PVector pos;

void setup(){
size(800,800);
background(0);
smooth();
pos.x = new PVector(0,0);


pos = new PVector(0,0);
}


void draw(){
pos.x = r * cos(theta);
pos.y = r * sin(theta);

fill(0,255,255);
noStroke();
ellipse(pos.x + width/2, pos.y + height/2,50,50);

theta
}