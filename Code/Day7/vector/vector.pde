PVector v1;
PVector v2;

int num;

void setup(){
  frameRate(1);
 size(500,500);
  num = 0;

v1 = new PVector(40,50,80);
v2 = new PVector(160,70,40);


}


void draw(){

  ellipse(v1.x,v1.y,50,50);
  ellipse(v2.x,v2.y,50,50);
  
  v2.add(v1);
  println(v2);

  ellipse(v2.x,v2.y,50,50);

}