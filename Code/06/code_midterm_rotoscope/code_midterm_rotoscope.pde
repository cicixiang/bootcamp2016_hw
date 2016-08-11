// CODE MIDTERM
// Rotoscoping
//
// This sketch loads the assigned frames and plays them back
// Add your own draw code
// Then it saves out the rendered frames
//
// DON'T FORGET TO CHANGE THE VALUE OF THE STUDENTNAME VARIABLE TO YOUR NAME!!

import java.io.File;

File[] tempfiles;
ArrayList<File> files;
PImage image;
String currentFilename;

// EDIT THIS LINE WITH YOUR NAME!
String studentName = "Chengcheng Xiang";

void setup() {
  files = new ArrayList<File>();

  // get list of files from directory
  File dir = new File(sketchPath() + "/rawFrames");
  tempfiles = dir.listFiles();

  // filter out files that don't end in .png
  for (int i = 0; i < tempfiles.length; i++) {
    String path = tempfiles[i].getAbsolutePath();
    if (path.toLowerCase().endsWith(".png")) {
      files.add(tempfiles[i]);
    }
  }

  // Resize the canvas to full-HD 1080p glory
  size(960, 540);
  pixelDensity(2);
  
  // if that doesn't work, comment it out and uncomment this instead:
  //size(1920, 1080);
  //pixelDensity(1);
}

void draw() {
  // DO NOT ALTER THE LINE BELOW
  prepare();

  // BEGIN ADDING YOUR CODE HERE -----
  
    fill(#FCFF50);
    ellipse(random(width),random(height),50,50);
    ellipse(random(width),random(height),50,50);
    ellipse(random(width),random(height),30,30);
    ellipse(random(width),random(height),20,20);
    ellipse(random(width),random(height),30,30);
    ellipse(random(width),random(height),20,20);
    fill(#EA1515);
    ellipse(random(width),random(height),30,30);
    ellipse(random(width),random(height),20,20);
    ellipse(random(width),random(height),30,30);
    ellipse(random(width),random(height),20,20);
for(int y = 0; y < height; y += 200 ){
  for(int x = 0; x < width*2; x += 500){
    fill(#2B3386);
    //ellipse(x,y ,15,15);
    line(x,y,width/2,height/2);
  }
}

for(int y = 0; y < height; y += 50 ){
  for(int x = 0; x < width*2; x += 500){
    //fill(#2B3386);
    //ellipse(y,x ,15,15);
    fill(#2B3322);
    line(y,x,width/2,height/2);

  }
  

}











  // STOP ADDING YOUR CODE HERE -----

  // DO NOT ALTER THE LINES BELOW
  if (frameCount < files.size()) { 
    export();
  } else {
    exit();
  }
}

// DO NOT ALTER THIS FUNCTION!!
void prepare() {
  String path = files.get(frameCount-1).getAbsolutePath();
  currentFilename = files.get(frameCount-1).getName();

  // Load current file into our PImage variable
  tint(255, 255);
  image = loadImage(path);
  image(image, 0, 0, width, height);
}

// DO NOT ALTER THIS FUNCTION!!
void export() {
  // saves frame without watermark
  saveFrame(sketchPath() + "/outFrames/edited_" + currentFilename);

  int sidePadding = 125;
  int bottomPadding = 50;
  
  textAlign(LEFT);
  textSize(32);
  fill(255);
  text(studentName, sidePadding + 1, height - bottomPadding + 1);
  fill(0);
  text(studentName, sidePadding, height - bottomPadding);

  // saves frame with watermark
  saveFrame(sketchPath() + "/outFrames/watermarked_" + currentFilename);
}