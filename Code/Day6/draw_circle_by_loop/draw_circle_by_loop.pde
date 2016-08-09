void setup(){
size(600,600);
background(255);

}

void draw(){
fill(0);

//ellipse(200,200,50,50);
//ellipse(200,400,50,50);

//ellipse(400,200,50,50);
//ellipse(400,400,50,50);


for(int y = 0; y < height; y += 22 ){
  for(int x = 0; x < width; x += 22){
    ellipse(x,y ,15,15);
    line(x,y,width/2,height/2);
  }
}



}