PImage BG1,brick,board,button,base,putter,doorF,doorW,openDoor;
PImage BG2,board3,board4,board5,base2,putter2,doorF2,doorW2,openDoor2;
PImage start,again,inagain,manual,and,Fire,Ice,BG3,BG4,card1,hand,go,endBG,onemore,endgame;
int scene=0;
void setup(){
  size(1200,783);
  setting();
  
}
void draw(){
  if(scene==0){background(0);}
  else if(scene==1){background(0);image(BG1,0,0);}
  else if(scene==2){background(0);image(BG2,0,0);}
  else if(scene==3){background(#F0EB91);}
  else if(scene==6){background(#F0EB91);}
  loadPixels();
  if(scene==0)start1();
  else if(scene==1)scene1();
  else if(scene==2)scene2();
  else if(scene==3)tryagain();
  else if(scene==4)tryagain2();
  else if(scene==5)end();
  else if(scene==6){manualRead();}
  else if(scene==7){card1();}
  //println(mouseX,mouseY);
  println(ropePos2.y);
}
////顏色路徑偵測
//color predict(){
//  int newX = int(P1move.x+vx0+vx1),newY = int(P1move.y+vd+vu);
//  return pixels[newX+newY*width];
//}
//color predict4(){
//  int newX = int(move2.x+vx00+vx11),newY = int(move2.y+vd2+vu2);
//  return pixels[newX+newY*width];
//}
//color predict3(){
//  int newX = int(P2move.x+vx00+vx11),newY = int(P2move.y+vd2+vu2);
//  return pixels[newX+newY*width];
//}
//color predict2(){
//  int newX = int(BrickPos.x+vx0+vx1),newY = int(BrickPos.y+vd+vu);
//  return pixels[newX+newY*width];
//}
//color predict5(){
//  int newX = int(P1move.x+vx0+vx1),newY = int(P1move.y+vd+vu);
//  return pixels[newX+newY*width];
//}

//初始設定
void setting(){
  //Image
  BG1=loadImage("scene01.png");
  BG2=loadImage("scene02.png");
  BG3=loadImage("bg3.jpg");
  BG4=loadImage("bg4.jpg");
  rope=loadImage("rope4.png");
  brick = loadImage("brick.png");
  board = loadImage("board.png");
  button = loadImage("button1.png");
  base = loadImage("base.png");
  putter = loadImage("putter2.png");
  doorF = loadImage("firedoor.png");
  doorW = loadImage("fwaterdoor.png");
  openDoor = loadImage("opendoor.png");
  board3 = loadImage("board2.png");
  board4 = loadImage("board3.png");
  board5 = loadImage("board4.png");
  base2 = loadImage("base.png");
  putter2 = loadImage("putter2.png");
  doorF2 = loadImage("firedoor.png");
  doorW2 = loadImage("fwaterdoor.png");
  openDoor2 = loadImage("opendoor.png");
  rope2 = loadImage("rope4.png");
  start = loadImage("start1.png");
  again = loadImage("again1.png");
  inagain = loadImage("in_again.png");
  manual = loadImage("manual1.png");
  and = loadImage("and1.png");
  Fire = loadImage("fire.png");
  Ice = loadImage("ice.png");
  card1 = loadImage("card2.png");
  hand = loadImage("hand1.png");
  go = loadImage("go.png");
  endBG = loadImage("end.png");
  onemore = loadImage("onemore.png");
  endgame = loadImage("endgame.png");
  fire = loadImage("fire.png");
  ice = loadImage("ice.png");
  //rolemove
  P1x=200;P1y=680;P2x=1100;P2y=65;//第1關
  //P1x=400;P1y=720;P2x=820;P2y=720;//第二關
  
  move = new PVector(P1x,P1y);
  move2 = new PVector(P1y,P2y);
  P1move = new PVector(P1x,P1y);
  P2move = new PVector(P2x,P2y);
  
  //繩子
  
  ropePos1=new PVector(65,-75);
  ropePos2=new PVector(810,-673);
  
  Vec=new PVector(0,3);//加速度
  Limt=new PVector(0,2);//限制
  mass1=new PVector(0,4);
  mass2=new PVector(0,3);
  Bmass = new PVector(0,8);//8
  
  BrickPos = new PVector(1050,60);
  bdown = new PVector(0,1);
  boardPos = new PVector(250,40);
  boardPos2 = new PVector(370,450);
  butPos = new PVector(975,300);
  basePos = new PVector(145,103);
  putterPos = new PVector(185,110);
  //windoor
  doorfPos = new PVector(235,460);
  doorwPos = new PVector(300,460);
  //Part2
  //搖桿
  boardPos3 = new PVector(515,680);
  boardPos4 = new PVector(583,480);
  boardPos5 = new PVector(515,325);
  basePos2 = new PVector(370,582);
  basePos3 = new PVector(775,405);
  basePos4 = new PVector(370,265);
  putterPos2 = new PVector(405,590);
  putterPos3 = new PVector(815,412);
  putterPos4 = new PVector(405,275);
  doorwPos2 = new PVector(260,375);
  doorfPos2 = new PVector(900,377);
  //繩索
  ropePos3 = new PVector(70,-100);
  ropePos4 = new PVector(1050,-600);
  
  P1vyU = 0;
  P1vyD = 4;
  P2vyU = 0;
  P2vyD = 4;
  P1vxR=0;
  P1vxL=0;
  P2vxR=0;
  P2vxL=0;
}
