int state;

void setup(){
  size(100,100);
  background(255);
  state = 0;
  
}

void draw(){
  if(state == 0){
    println("There is a door.");
    println("A: Open it");
    println("B: Walk away");
    state = 1;
  }
}

void keyPressed(){
  if (key == 'A' || key == 'a'){
    if (state == 1){
      println("");
      println("You see a tiger.");
      println("A fight!");
      println("B go back");
      state = 2;
    }else if (state == 2){
      println("You killed the tiger");
    }
    
  }
  
  if (key == 'B' || key == 'b'){
    if (state == 1){
      println(" ");
      println("No you can't.");
      println("A: open it.");
      state = 1;
    }else if (state ==2){
      println(" ");
      println("It's locked");
      println("You're killed");
      println("press 'ESC' to play again");
    }
  }
}