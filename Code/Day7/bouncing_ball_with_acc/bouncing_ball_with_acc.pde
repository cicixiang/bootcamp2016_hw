float xpos, ypos;
float yvel;
float yacc;

void setup(){
size(500,500);
xpos = width/2;
ypos = 0;
yvel = 1.0;
yacc = 0.3;

}


void draw(){
background(255);
ellipse(xpos,ypos,50,50);

if(ypos > height){
  yvel *= -1;

}

yvel += yacc; 
ypos += yvel;
//ypos = ypos + yvel;
}