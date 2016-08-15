


static final int LINES = 20;
float t;
float x;
float y;




//this is tree
float a;
float theta =random(0, 6.289); 
//tree above//





void setup() {
  size(1000, 1000);
  smooth();

}

void draw() {


  float xPos = constrain(x + random(-40, 40), 0, width);
  float yPos = constrain(y + random(-40, 40), 0, height);


  //tree
  translate(width/2, height/2);
  background(0);
  stroke(#FA3A28, 100);
  theta=theta+0.003;///(2*pi)
  branch(30);
  rotate(PI/3);
  branch(30);
  rotate(PI/3);
  branch(100);
  rotate(PI/3);
  branch(100);
  rotate(PI/3);

  //second tree 
  translate(width/3, height/3);
  stroke(#3684FF, 100);
  theta=theta+0.003;///(2*pi)
  branch(20);
  rotate(PI/3);
  branch(20);
  rotate(PI/3);
  branch(20);
  rotate(PI/3);
  branch(20);
  rotate(PI/3);

  //third tree 

  stroke(#3684FF, 100);
  theta=theta+0.003;///(2*pi)
  branch(30);
  rotate(PI/3);
  branch(30);
  rotate(PI/3);
  branch(30);
  rotate(PI/3);
  branch(30);
  rotate(PI/3);

  //fourth tree 
  translate(width/3, height/3);
  stroke(#3684FF, 40);
  theta=theta+0.003;///(2*pi)
  branch(70);
  rotate(PI/4);
  branch(70);
  rotate(PI/4);
  branch(20);
  rotate(PI/4);
  branch(10);
  rotate(PI/4);



  //this are trees above



  stroke(255);
  strokeWeight(3);



  translate(width/2, height/2);


  for (int i = 0; i < LINES; i ++) {
    
    line(x1(t +i), y1(t + i), x2(t + i), y2(t + i));
    line(x3(t +i/2), y3(t + i/2), x4(t + i/2), y4(t + i/2));
  }

  t += 0.5;
}



float x1(float t) {
  return sin(-t/10) * 1000 + sin(t /5 ) * 20;
}

float y1(float t) {
  return cos(t / 10) * 1000 + sin(t/5) * 50;
}

float x2(float t) {
  return sin(t/10) * 1000 + sin(t) * 2 + cos(t) * 10;
}

float y2(float t) {
  return cos(t / 20) * 1000 + cos(t /12) * 20;
}

float x3(float t) {
  return sin(-t / 50) * 1000 + sin(t) * 2 + cos(t) * 30;
}

float y3(float t) {
  return cos(t / 50) * 100 + cos(t /12) * 20;
}

float x4(float t) {
  return sin(-t / 10) * 1000 + sin(t) * 6 + cos(t) * 20;
}

float y4(float t) {
  return cos(t / 20) * 1000 + cos(t /10) * 20;
}




void branch(float h) {
  h *= 0.7;
  if (h > 3) {

    pushMatrix();   
    rotate(theta);  
    line(0, 0, 0, -h); 
    translate(0, -h);
    branch(h);    
    popMatrix();   
    pushMatrix();
    rotate(-theta);
    line(0, 0, 0, -h);
    translate(0, -h);
    branch(h);
    popMatrix();
  }
}


///reference http://www.openprocessing.org/sketch/108420