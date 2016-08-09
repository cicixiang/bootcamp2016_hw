
int xpos;

void setup(){
size(500,400);
background(255);
}


void draw(){
  
  ellipse(100,200,50,50);
  ellipse(200,200,50,50);
  ellipse(300,200,50,50);
  ellipse(400,200,50,50);
  
for ( int i = 0; i <4; i ++){
     xpos = 100+ i * 100;
  ellipse(xpos ,200,50,50);
  }
  
  //for(int xpos = 100; xpos<500; xpos+=100){
  //ellipse(xpos,200,50,50);
}
//  