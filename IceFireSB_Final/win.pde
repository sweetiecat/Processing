PVector doorfPos,doorwPos;
int time=0,time2=0;
void win1(){//通關(一)
  if(dW==0 || dF==0){
    image(doorF,doorfPos.x,doorfPos.y,60,90);
    image(doorW,doorwPos.x,doorwPos.y,60,90);
  }
  else{
    image(openDoor,doorfPos.x,doorfPos.y,60,90);
    image(openDoor,doorwPos.x,doorwPos.y,60,90);
    time++;
  }
  coll_door();
  if(time==50){
    P1x=400;P1y=720;
    P2x=820;P2y=720;
    scene=7;
  }
}
PVector doorfPos2,doorwPos2;
void win2(){//通關(二)
  if(dW2==0 || dF2==0){
    image(doorF2,doorfPos2.x,doorfPos2.y,60,80);
    image(doorW2,doorwPos2.x,doorwPos2.y,60,80);
  }
  else{
    image(openDoor2,doorfPos2.x,doorfPos2.y,60,80);
    image(openDoor2,doorwPos2.x,doorwPos2.y,60,80);
    time2++;
  }
  coll_door2();
  if(time2==50)scene=5;
}
void end(){
  image(endBG,0,0);
  if(mouseX>750&&mouseX<1000&&mouseY>350&&mouseY<476){
    image(onemore,725,325,300,175);
    image(endgame,750,500,250,125);
    if(mousePressed==true){
      scene1set();
      scene2set();
      scene=0;
    }
  }else if(mouseX>750&&mouseX<1000&&mouseY>500&&mouseY<625){
    image(onemore,750,350,250,125);
    image(endgame,725,475,300,175);
    if(mousePressed==true) exit();
  }else{
    image(onemore,750,350,250,125);
    image(endgame,750,500,250,125);
  }
}
