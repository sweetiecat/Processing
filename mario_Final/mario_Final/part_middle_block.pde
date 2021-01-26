int jp=0;
PImage block1,block2,block3,turtle1,turtle2,jw,qu,BG3;
PVector velocity1,jvelocity1,av1,down,down2,bgPos2;
void Block(){
  bgMove2();

//1
  image(block1,bgPos2.x+450,bgPos2.y+250,67,31);
  image(block2,bgPos2.x+455,bgPos2.y+275,57,60);
  
//2
  image(block1,bgPos2.x+525,bgPos2.y+275,67,31);
  image(block2,bgPos2.x+530,bgPos2.y+300,57,32);
  
//3 (show turtle1)
  image(block1,bgPos2.x+850,bgPos2.y+250,67,31);
  image(block2,bgPos2.x+855,bgPos2.y+275,57,60);
  
//4 (show turtle2)
  image(block1,bgPos2.x+1220,bgPos2.y+250,67,31);
  image(block2,bgPos2.x+1225,bgPos2.y+275,57,60);

//5 
  if(s==0){
    image(qu,bgPos2.x+1985,bgPos2.y+300,20,20);
    image(block3,bgPos2.x+2005,bgPos2.y+250,32,32);
    image(block3,bgPos2.x+2035,bgPos2.y+260,32,32);
    image(block3,bgPos2.x+2005,bgPos2.y+270,32,32);
    image(block3,bgPos2.x+2035,bgPos2.y+280,32,32);
    image(block3,bgPos2.x+2005,bgPos2.y+300,32,32);
    image(block3,bgPos2.x+2035,bgPos2.y+300,32,32);
  }
}

void range(){
  if(-92>bgPos2.x && bgPos2.x>-182){
    jp=1;floor.y=188;
  }
  else if(-183>bgPos2.x && bgPos2.x>-260){
    jp=2;floor.y=210;
  }
  else if(-502>bgPos2.x && bgPos2.x>-592){
    jp=3;floor.y=188;
  }
  else if(-880>bgPos2.x && bgPos2.x>-975){
    jp=4;floor.y=188;
  }
  else {jp=0;floor.y=260;}
} 

void tall(){
  range();
  if(move.y>=floor.y){
    jvelocity1.y=-10;
  }
}
