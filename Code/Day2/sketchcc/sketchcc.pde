void setup() {
  size(600, 600);
}

void draw() {
  background(255,204,204);
  noStroke();
  
  fill(255,255,255,97);
  rect(70,20,510,580);
  noStroke();
  
    pushMatrix();
  translate(-100, 0);
  
  fill(255);
  rect(300,200,30,1000);
  noStroke();
  
  fill(255);
  rect(350,100,30,1000);
  noStroke();
  
  fill(255);
  rect(250,150,30,1000);
  
  fill(255);
  rect(200,400,30,1000);
  
   popMatrix();
  
     pushMatrix();
  translate(130, -100);
  
  fill(255);
  rect(300,200,30,1000);
  noStroke();
  
  fill(255);
  rect(350,100,30,1000);
  noStroke();
  
  fill(255);
  rect(250,150,30,1000);
  
  fill(255);
  rect(200,400,30,1000);
  
   popMatrix();

  
  fill(204,0,102,97);
  triangle(0, 250, 450, 500, -100, 900);
  noStroke();
  
  fill(0);
  rect(20,470,30,1000);
  noStroke();
  
  fill(0);
  rect(120,470,30,1000);
  noStroke();
  
  fill(0);
  rect(70,470,30,1000);
  noStroke();
 
  fill(204,0,0);
  ellipse(470, 150, 150, 150);


     pushMatrix();
  translate(430, 180);
  
  fill(0,128,255);
  triangle(30, 75, 58, 20, 86, 75);
     popMatrix();
     
     
  
   if(mouseX > 395 && mouseX<545  && mouseY>75 && mouseY<235 && mousePressed){
   background(0);
  }
  
   if(mouseX<150 && mouseX>20 && mouseY<600 && mouseY >470){

  
  fill(96,96,96,90);
  rect(70,20,510,580);
  pushMatrix();
  translate(130, -100);
  
    fill(255,255,0);
  rect(300,580,30,1000);
  rect(350,550,30,1000);
  rect(250,450,30,1000);
  rect(200,500,30,1000);
  
  
  popMatrix();
  

  }
  





  

}