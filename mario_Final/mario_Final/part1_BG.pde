PImage []shell=new PImage[2];
PImage BG;
PVector bgPos,flagPos;
PVector []plantPos=new PVector[2];
PVector []pipPos=new PVector[2];
int mv=0;
void part1(){
  BG = loadImage("mario_bg2.jpg");
  pl=loadImage("eat.png");
  pip=loadImage("pip.png");
  flag=loadImage("flag.png");
  bgPos = new PVector(0,0);
  flagPos = new PVector(2300,220);
  plantPos[0] = new PVector(500,280);
  pipPos[0] = new PVector(500,275);
  plantPos[1] = new PVector(1000,270);
  pipPos[1] = new PVector(1000,275);
  floor = new PVector(30,260);
}
void ObjMoveSub(){
  plantPos[0].x-=3;
  pipPos[0].x-=3;
  plantPos[1].x-=3;
  pipPos[1].x-=3;
}
void ObjMoveAdd(){
  plantPos[0].x+=3;
  pipPos[0].x+=3;
  plantPos[1].x+=3;
  pipPos[1].x+=3;
}
void bgMove(){
  image(BG,bgPos.x,bgPos.y,2696,400);
  if(mousePressed == true){
    if(mouseX>100 && mouseX<170 && mouseY>320 && mouseY<390){
        if(bgPos.x!=-1887 && z!=1){
          bgPos.x-=3;
          flagPos.x-=3;
          ObjMoveSub();
        }
    }
    else if(mouseX>20 && mouseX<90 && mouseY>320 && mouseY<390){
      if(bgPos.x!=-1887 && bgPos.x != 0 && z!=2 ){//改
        bgPos.x+=3;
        flagPos.x+=3;
        ObjMoveAdd();
      }
    }
    else if(mouseX>710 && mouseX<790 && mouseY>320 && mouseY<390){
      if(jumpimg==0 && bgPos.x!=-1887){
        bgPos.x-=3;
        flagPos.x-=3;
        ObjMoveSub();
      }
      if(jumpimg==1 && bgPos.x!=-1887){
        bgPos.x+=3;
        ObjMoveAdd();
      }
    }
  }
}
