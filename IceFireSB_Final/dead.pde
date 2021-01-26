int wdead=0,fdead=0;
void dead(){
  //if(predict()==#156F30 || predict4()==#156F30){scene=3;}
  //if(predict()==#FF0000){scene=3;}
  if(P2y+38>235&&P2y+38<250&&P2x+20>230&&P2x<423){scene=3;}
  if(P2y+38>713&&P2y+38<728&&P2x+20>370&&P2x<882){scene=3;}
  if(P1y+38>713&&P1y+38<728&&P1x+20>370&&P1x<882){scene=3;}
}
void dead2(){
  //if(predict5()==#D90000){wdead=1;scene=4;}
  //if(predict3()==#3F48CC){fdead=1;scene=4;}
  if(P1y+38>121&&P1y+38<136&&P1x+20>235&&P1x<378){scene=4;}
  if(P1y+38>730&&P1y+38<745&&P1x+20>897&&P1x<1159){scene=4;}
  if(P2y+38>128&&P2y+38<143&&P2x+20>844&&P2x<982){scene=4;}
  if(P2y+38>727&&P2y+38<742&&P2x+20>39&&P2x<316){scene=4;}
}
void scene1set(){
  //復原位置
  //rolemove
  P1x=200;P1y=680;P2x=1110;P2y=60;
  move = new PVector(P1x,P1y);
  move2 = new PVector(P1y,P2y);
  //繩子
  
  ropePos1=new PVector(65,-75);
  ropePos2=new PVector(810,-673);
  
  Vec=new PVector(0,3);//加速度
  Limt=new PVector(0,2);//限制
  mass1=new PVector(0,3);
  mass2=new PVector(0,4);
  Bmass = new PVector(0,8);//8
  
  BrickPos = new PVector(1050,60);
  bdown = new PVector(0,1);
  boardPos = new PVector(250,40);
  boardPos2 = new PVector(370,450);
  butPos = new PVector(975,300);
  basePos = new PVector(145,103);
  putterPos = new PVector(185,110);
  
  push=0;
}
void scene2set(){
    //位置復原
    //rolemove
  P1x=400;P1y=720;
  P2x=820;P2y=720;
  P1move = new PVector(P1x,P1y);
  P2move = new PVector(P2x,P2y);
  //搖桿
  boardPos3 = new PVector(515,680);
  boardPos4 = new PVector(583,480);
  boardPos5 = new PVector(515,325);
  angle2=0.9;
  angle3=-0.9;
  angle4=0.9;
  //繩索
  ropePos3 = new PVector(70,-100);
  ropePos4 = new PVector(1050,-600);
  push2=0;
  push3=0;
  push4=0;
}
void tryagain(){
  background(#F0EB91);
  image(BG3,0,0,1300,800);
  scene1set();
  if(mouseX>540&&mouseX<700&&mouseY>300&&mouseY<440){
    image(again,475,225,300,300);
    if(mousePressed==true)scene=1;
  }else{
    image(again,500,250,250,250);
  }
}
void tryagaingame(){
  if(mouseX>1154&&mouseX<1192&&mouseY>15&&mouseY<50){
    image(inagain,1145,4,60,60);
    if(mousePressed==true){
      scene1set();
      scene=1;
    }
  }else{
    image(inagain,1150,9,50,50);
  }
}
void tryagain2(){
  background(#F0EB91);
  image(BG3,0,0,1300,800);
  scene2set();
  //again
  if(mouseX>540&&mouseX<700&&mouseY>300&&mouseY<440){
    image(again,475,225,300,300);
    if(mousePressed==true)scene=2;
  }else{
    image(again,500,250,250,250);
  }
}
void tryagain2game(){
  if(mouseX>1154&&mouseX<1192&&mouseY>15&&mouseY<50){
    image(inagain,1145,4,60,60);
    if(mousePressed==true){
      scene2set();
      scene=2;
    }
  }else{
    image(inagain,1150,9,50,50);
  }
}
