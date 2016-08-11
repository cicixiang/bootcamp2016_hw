

static final int NUM_LINES = 20;
float t;



void setup() {
  background(20);
  size(1000, 1000);
}

void draw() {
  background(20);
  stroke(255);
  strokeWeight(5);
  


  translate(width/2, height/2);
  
  
  for (int i = 0; i < NUM_LINES; i ++){
    
    
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