int w;
int h;
void setup(){
  size(500,500);
  
  w = width/2;
  h = height/2;
  
}

void draw(){
  background(255);
  
  line(w,0,w,height);
  line(0,h,width,h);
  
  if(mouseX<w && mouseX>0 && mouseY<h && mouseY >0){
  fill(0);
  rect(0,0,w,h);
  }
  
  if(mouseX>0 && mouseX<w && mouseY>h && mouseY<height){
  fill(0);
  rect(0,h,w,h);
  }
  
  if(mouseX>w && mouseX<height && mouseY>h && mouseY<height){
  fill(0);
  rect(w,h,w,h);
  }
  
  if(mouseX>w && mouseY<h ){
  fill(0);
  rect(w,0,w,h);
}
  
}