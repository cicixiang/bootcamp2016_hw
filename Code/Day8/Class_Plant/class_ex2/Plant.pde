class Plant {

  float xpos;
  color c;
  float pHeight;
  int leafNum;

  Plant(float tempX) {

    xpos = tempX;
  }


  void display(color tempC, float tempHeight, int tempLeafNum) {

    c = tempC;
    pHeight = tempHeight;
    leafNum = tempLeafNum;

    float leafYpos;

    fill(c);
    rect(xpos, pHeight, 10, 500);
    noStroke();

    for (int i = 0; i<leafNum; i++) {
      leafYpos = pHeight+i*60;
      ellipse(xpos, leafYpos, 50+(i*50), 20);
    }
  }
}