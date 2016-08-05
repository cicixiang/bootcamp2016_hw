int state;

void setup(){
  size(800, 800);
  background(255,204,204);
  state = 0;
  
}




void draw(){
  
apple((int)random(1000)+1,(int)random(1000)+1,(int)random(8)+1) ;
 
  

  
  
  
  
  
  if(state == 0){
    println("Once upon a time, there was a beautiful princess named Snow White,she was kind and gentle and a friend to all animals...");
    println();
    println("One day, the queen disguised as an old pedder woman, offered Snow White a beautiful red apple...");
    println();
    println("Will Snow White eat the apple?");
    println("A: YES");
    println("B: NO");
    state = 1;
  }
}

void apple(int transformX, int transformY, int size) {
  strokeWeight(4);
  fill(#DE0D14);
  ellipse((250/size)+transformX, (250/size)+transformY, (200/size), (200/size)) ;
  fill(#0C5812);
  triangle((300/size)+transformX, (150/size)+transformY, (280/size)+transformX, (110/size)+transformY, (250/size)+transformX, (210/size)+transformY) ;
}

void keyPressed(){
  
  
  
  if (key == 'A' || key == 'a'){
    if (state == 1){
      println("");
      println("Great! Snow White is sitting in sofa and watching Walking Dead, it's time to eat her apple. How will she eat it?");
      println("A Snow White eats the apple with her favorite stawberry mojito made by herself");
      println("B Snow White eats the apple with peanut butter which she found in the wood");
      state = 2;
    }
    
    
    else if (state == 2){
      println("");
      println("Snow White gets choked badly! What will happen next?");
      println("A She called 911 for help");
      println("B The prince comes to help her");
      state = 4;
      
    }else if (state == 3){
       println("");
       println("The Queen pissed off and kick her ass! Snow White dies.");
       println("");
       println("GAME OVER!");
       println("press 'ESC' to play again");
    }
    else if (state == 4){
      
       println("");
       println("The ambulance get lost in woods, Snow White dies.");
       println("");
       println("GAME OVER!");
       println("press 'ESC' to play again");
      
  }
   else if (state == 5){
      
       println("");
       println("They all die. Snow White feels extremely guilty, so she jump into the river in front of the house. She dies.");
       println("");
       println("GAME OVER!");
       println("press 'ESC' to play again");
      
  }
  }

  
  
  if (key == 'B' || key == 'b'){
    if (state == 1){
      println(" ");
      println("So what will she do?");
      println("A: Snow White throws the apple on Queen's urgly face.");
      println("B: Snow White gives the apple to 'Happy', who is one of the dwarf.");
      state = 3;
    }  else if (state == 3){
     
      println(" ");
      println("Will 'Happy' share the apple with his brother?");
      println("A Yes, 'Happy' gives everyone a piece of apple.");
      println("B: No, 'Happy' eats the apple by himself.");
      state = 5;
}     else if (state == 5){
      println(" ");
      println("No 'Happy' is too kind to eat the apple alone, he share with Snow White eventually. Snow White dies.");
      println("");
      println("GAME OVER!");
      println("press 'ESC' to play again");
      
}    else if (state == 4){
      println(" ");
      println("There is no prince in the world. Snow White dies.");
      println("");
      println("GAME OVER!");
      println("press 'ESC' to play again");
     
}else if (state == 2){
      println(" ");
      println("Oh no! Snow White is allergic to peanut! Snow White dies.");
      println("");
      println("GAME OVER!");
      println("press 'ESC' to play again");
}
  }
}
  