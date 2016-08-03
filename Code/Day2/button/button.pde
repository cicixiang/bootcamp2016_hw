void setup(){
  size(600,600);
  background(255);
}

void draw(){
  fill(0);
  rect(400,200,100,100);
  
  if(mouseX > 400 && mouseX<500  && mouseY>200 && mouseY<300 && mousePressed){
   background(255,0,0);
  }
  

  
  
}