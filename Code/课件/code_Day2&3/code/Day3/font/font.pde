PFont f;

void setup(){
size(400,200);
f = createFont("Arial",16,true);

}

void draw(){
background(255);

fill(255,0,0);
textFont(f);
textAlign(CENTER);
text("Hello World", width/2,height/2);

}