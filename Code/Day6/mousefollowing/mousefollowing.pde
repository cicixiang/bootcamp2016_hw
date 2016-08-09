
int num = 50;
int[] xpos = new int[num];
int[] ypos = new int[num];


void setup(){
  size(600,600);
  for(int i = 0; i <num; i ++){
  xpos[i] = 0;
  ypos[i] = 0;
  }
}


void draw(){
background(mouseY,mouseX,mouseX);

  for(int i = 0; i < num-1; i++){
  xpos[i] = xpos[i+1];
  ypos[i] = ypos[i+1];
  } 
  
  xpos[num-1] = mouseX;
  ypos[num-1] = mouseY;

 for(int i = 0; i<num; i++){
   smooth();
   noStroke();
   
 ellipse(xpos[i],ypos[i],i,i);
 }

}