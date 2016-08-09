
void setup(){
  size(600,600);
  background(#982323);


}



void draw(){

     


    fill(#FCFF50);
    ellipse(random(width),random(height),20,20);

for(int y = 0; y < height; y += 10 ){
  for(int x = 0; x < width*2; x += 100){
    fill(#2B3386);
    ellipse(x,y ,7,7);
    line(x,y,width/2,height/2);
  }
}

for(int y = 0; y < height; y += 10 ){
  for(int x = 0; x < width*2; x += 100){
    fill(#2B3386);
    ellipse(y,x ,7,7);
    fill(#2B3322);
    line(y,x,width/2,height/2);

  }
}



}