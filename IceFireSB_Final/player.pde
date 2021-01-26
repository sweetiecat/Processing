PVector move,move2,P2move,P1move;
float vx0=0,vx1=0,vu=0,vd=0;
float vx00=0,vx11=0,vu2=0,vd2=0;
int driction1=0;

int P1vyU,P1vxR,P2vxR,P2vyU,P1vyD,P1vxL,P2vxL,P2vyD;
int P1x,P1y,P2x,P2y;//為了+重力所以要設速度變速
int P1jump=0,P2jump=0;
//PVector move;
boolean []keyState = new boolean[256];
PImage fire,ice;
int b=0;
//void Playerset(){
//  P1x=400;P1y=720;
//  P2x=820;P2y=720;
//  P1vyU = 0;
//  P1vyD = 4;
//  P2vyU = 0;
//  P2vyD = 4;
//  P1vxR=0;
//  P1vxL=0;
//  P2vxR=0;
//  P2vxL=0;

//  fire = loadImage("fire.png");
//  ice = loadImage("ice.png");
//}
void keyPressed(){
  if(key=='a') P1vxL=-3;
  if(key=='w'){
    if(P1jump==0||onboard3u==1){
      P1vyU=-2;P1vyD=0;P1jump=1;
      println("onboard3uW1:"+onboard3u);
    }else{
      P1vyU=0;P1vyD=4;
      println("onboard3uW:"+onboard3u);
    }
  }//{keyState[key]=true;}
  if(key=='d') P1vxR=3;
  if(key=='j') P2vxL=-3;
  if(key=='l') P2vxR=3;
  if(key=='i') {
    if(P2jump==0||onboard3u==1){
      P2vyU=-2;P2vyD=0;P2jump=1;
      println("onboard3uW1:"+onboard3u);
      //onboard3u=0;
      //println("onboard3u:"+onboard3u);
    }else{
      P2vyU=0;P2vyD=4;
      println("onboard3uW:"+onboard3u);
    }
  }
}
void keyReleased(){
  if(key=='a') P1vxL=0;
  if(key=='w'){
      if(onboard3u==1){
        //println("onboard3u:_"+onboard3u);
        P1vyU=0;P1vyD=0;
        //onboard3u=1;
      }else
      P1vyU=0;P1vyD=4;
  }
  if(key=='d') P1vxR=0;
  if(key=='j') P2vxL=0;
  if(key=='l') P2vxR=0;
  if(key=='i'){
      if(onboard3u==1){
        //println("onboard3u:_"+onboard3u);
        P2vyU=0;P2vyD=0;
        //onboard3u=1;
      }else
      P2vyU=0;P2vyD=4;
  }
}
void P1(){
  if(P1FourC(P1x,P1y)==false && P1FourC(P1x+P1vxL+P1vxR,P1y)==false){
    P1x+=P1vxL+P1vxR;
  }
  if(P1FourC(P1x,P1y)==false && P1FourC(P1x,P1y+P1vyU+P1vyD)==false){
    P1y+=P1vyU+P1vyD;
    P1jump=1;
  }
  if(P1FourC(P1x,P1y)==false && P1FourC(P1x,P1y+P1vyU+P1vyD)==true){
    if(P1FourC(P1x+P1vxL+P1vxR,P1y)==false){
      P1jump=0;
    }
  }
  image(fire,P1x,P1y,41,41);
}
void P2(){
   if(P2FourC(P2x,P2y)==false && P2FourC(P2x+P2vxL+P2vxR,P2y)==false){
    P2x+=P2vxL+P2vxR;
  }
  if(P2FourC(P2x,P2y)==false && P2FourC(P2x,P2y+P2vyU+P2vyD)==false){
    P2y+=P2vyU+P2vyD;
    P2jump=1;
  }
  if(P2FourC(P2x,P2y)==false && P2FourC(P2x,P2y+P2vyU+P2vyD)==true){
    if(P2FourC(P2x+P2vxL+P2vxR,P2y)==false){
      P2jump=0;
    }
  }
  image(ice,P2x,P2y,30,30);
}
