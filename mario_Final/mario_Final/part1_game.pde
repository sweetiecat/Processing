int[] t2={0,0};
int c=0,c1=0,z=0;
PImage pl,pip,flag;
PVector floor;
void Loadgame(){
  bgMove();
  player();
  plant();
  collision();
  win_flag();
}
void plant(){
  p1();
  if(t2[0]>300)t2[0]/=300;
  if(t2[1]>300)t2[1]/=300;
  t2[0]++;
  t2[1]++;
}
void p1(){
  //植物水管生成
  image(pl,plantPos[0].x,plantPos[0].y,120,260);
  image(pip,pipPos[0].x,pipPos[0].y,120,130) ;
  image(pl,plantPos[1].x,plantPos[1].y,120,260);
  image(pip,pipPos[1].x,pipPos[1].y,120,130) ;
  if(plantPos[0].y<=280 && plantPos[0].y>=50 && c==0){
     plantPos[0].y-=2;
     if(plantPos[0].y==50)c=1;  
   }
  else if(c==1){
     plantPos[0].y+=2;
     if(plantPos[0].y==280)c=2;  
   }
  else if(t2[0]==200)c=0;
  
  if(plantPos[1].y<=280 && plantPos[1].y>=50 && c1==0){
     plantPos[1].y-=2;
     if(plantPos[1].y==50)c1=1;  
   }
  else if(c1==1){
     plantPos[1].y+=2;
     if(plantPos[1].y==280)c1=2;  
   }
  else if(t2[1]==150)c1=0;
  
  if(plantPos[1].x<-10 && bgPos.x>=-1280){
    plantPos[1].x=900;
    pipPos[1].x=900;
  }
  if(plantPos[0].x<-10 && bgPos.x>=-1280){
    plantPos[0].x=900;
    pipPos[0].x=900;
  }
}
void collision(){//還有問題!!
  //水管碰撞
  if(pipPos[0].x+78 > move.x && move.x > pipPos[0].x-38 && pipPos[0].y-50 > move.y|| pipPos[1].x+78 > move.x && move.x > pipPos[1].x-38 && pipPos[1].y-50 > move.y){
    floor.y=212;
    z=0;
    println(pipPos[0].y,floor.y);
  }
  //改
  else if(pipPos[0].x+40 > move.x && move.x > pipPos[0].x-40 || pipPos[1].x+40 > move.x && move.x > pipPos[1].x-40)z=1;
  else if(pipPos[0].x+80 > move.x && move.x > pipPos[0].x-20 || pipPos[1].x+80 > move.x && move.x > pipPos[1].x-20)z=2;
  else{
    floor.y=270;
    z=0;
  }
  //花碰撞
  if(plantPos[0].x+50 > move.x && move.x > plantPos[0].x-20 &&plantPos[0].y+70 > move.y && move.y > plantPos[0].y-60 || plantPos[1].x+50 > move.x && move.x > plantPos[1].x-20 &&plantPos[1].y+70 > move.y && move.y > plantPos[1].y-60 )m=1;
}
void win_flag(){//下一關
  image(flag,flagPos.x,flagPos.y,100,100);
  if(flagPos.x+0>move.x && move.x>flagPos.x-10 && flagPos.y+100>move.y && move.y>flagPos.y-100){
    p=6;
    move.x=300;
  }
}
