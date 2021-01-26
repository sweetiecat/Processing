PImage []playerwalk=new PImage[8];
PImage []playerjump=new PImage[2];
PVector move;
PImage butR,butL,butJP;
void control(){
  image(butR,100,320,70,70);
  image(butL,20,320,70,70);
  image(butJP,710,320,70,70);
}
void catwalkimg(){
  playerwalk[0]=loadImage("cat.png");
  playerwalk[1]=loadImage("cat_walk1.png");
  playerwalk[2]=loadImage("cat_walk2.png");
  playerwalk[3]=loadImage("cat_walk3.png");
  playerwalk[4]=loadImage("cat2.png");
  playerwalk[5]=loadImage("cat_walk1(2).png");
  playerwalk[6]=loadImage("cat_walk2(2).png");
  playerwalk[7]=loadImage("cat_walk3(2).png");
  playerjump[0]=loadImage("cat_jump1.png");
  playerjump[1]=loadImage("cat_jump1(2).png");
  move = new PVector(300,260);
  butR = loadImage("RButton.png"); 
  butL = loadImage("LButton.png");
  butJP = loadImage("JPButton.png");
}
int walkimg=0,jumpimg=0;
void player(){
  if(mousePressed == true){
    if(mouseX>100 && mouseX<170 && mouseY>320 && mouseY<390){
      walkimg=0;
      jumpimg=0;
      if(bgPos.x<= -1887){
        move.add(3,0);
      }
      runimg();
    }
    if(mouseX>20 && mouseX<90 && mouseY>320 && mouseY<390){
      walkimg=4;
      jumpimg=1;
      if(bgPos.x<= -1887){
        move.add(-3,0);
      }
      runimg();
    }
    if(mouseX>710 && mouseX<790 && mouseY>320 && mouseY<390){
      move.add(0,-10);
    }
  }
  else{
    if(walkimg>=4) walkimg=4;
    else walkimg=0;
  }
  if(move.y<floor.y) move.add(0,5);//改
  if(move.y>=floor.y)image(playerwalk[walkimg],move.x,move.y,70,70);//改
  else image(playerjump[jumpimg],move.x,move.y,70,70);
}
int i=0;
void runimg(){
  walkimg+=i;
  if(i==3){
    walkimg-=3;
    i=0;
  }
  else i++;
}
void player2(){
  arrow();
  if(mousePressed == true){
    if(mouseX>100 && mouseX<170 && mouseY>320 && mouseY<390){
      walkimg=0;
      jumpimg=0;
      move.add(3,0);
      runimg();
    }
    if(mouseX>20 && mouseX<90 && mouseY>320 && mouseY<390){
      walkimg=4;
      jumpimg=1;
      move.add(-3,0);
      runimg();
    }
    if(mouseX>710 && mouseX<790 && mouseY>320 && mouseY<390){
      move.add(0,-10);
    }
  }
  else{
    if(walkimg>=4) walkimg=4;
    else walkimg=0;
  }
  if(move.y<floor.y) move.add(0,5);//改
  if(move.y>=floor.y)image(playerwalk[walkimg],move.x,move.y,70,70);//改
  else image(playerjump[jumpimg],move.x,move.y,70,70);
}
void player3(){
  if(mousePressed == true){
    if(mouseX>100 && mouseX<170 && mouseY>320 && mouseY<390){
      tall();
      walkimg=0;
      jumpimg=0;
      runimg();
      if(bgPos2.x<=-1689){
        move.add(3,0);
      }
    }
    if(mouseX>20 && mouseX<90 && mouseY>320 && mouseY<390){
      tall();
      walkimg=4;
      jumpimg=1;
      runimg();
      if(bgPos2.x<=-1689){
        move.add(-3,0);
      }
    }
    if(mouseX>710 && mouseX<790 && mouseY>320 && mouseY<390){
      tall();
      move.add(0,-10);
    }
  }
  else{
    if(walkimg>=4) walkimg=4;
    else walkimg=0;
  }
  if(move.x==582){
    p=3;
    background(255);
    move.x=100;
  }
  if(move.y<floor.y) move.add(0,5);//改
  if(move.y>=floor.y)image(playerwalk[walkimg],move.x,move.y,70,70);//改
  else image(playerjump[jumpimg],move.x,move.y,70,70);
}
