
Plant myPlant;

int[] myIntList = new int[3];
Plant[] plantsArray = new Plant[3];


void setup() {
  size(1000, 600);

  myPlant = new Plant(width/2);

  ellipseMode(CENTER);

  //plantsArray[0] = new Plant(random(width));

  for (int i = 0; i < plantsArray.length; i ++) {
  }
}


void draw() {

  background(255);

  myPlant.display(color(35, 180, 200), 200, 4);

  for (int i = 0; i < plantsArray.length; i ++) {
    plantsArray[i].display(color(random(256), random(256), random(256)), random(180, 240), (int)random(4, 9));
  }
}