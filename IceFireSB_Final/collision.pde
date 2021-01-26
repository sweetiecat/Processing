int n1=0,n2=0,n3=0,n4=0,n5=0,dF=0,dW=0, dF2=0,dW2=0,P1on=0;//物件碰撞偵測判定
int n11=0,n22=0,n33=0,n44=0,c=50,c1=50;
//繩梯1碰撞
void coll_1(){
  
  //P1
  if(ropePos1.y+780-30<P1y+30 && ropePos1.y+790+10>P1y && ropePos1.x<P1x+30 && P1x+30<ropePos1.x+95 &&onboard3u==0){
    if(ropePos1.y!=-483){n1=1;c=0;}
    else {n1=0;c=50;}
  }
  else n1=0;
  if(ropePos1.y+780-10<P1y+30 && ropePos1.y+790>P1y && ropePos1.x<P1x+30 && P1x+30<ropePos1.x+95 &&onboard3u==0){
    P1vyU=0;P1vyD=0;onboard3u=1;println("onboard3uRC:"+onboard3u);P1jump=0;
  }
  if(ropePos1.y+780-53<P1y+30 && ropePos1.y+790-c>P1y && ropePos1.x<P1x+30 && P1x+30<ropePos1.x+95){
    onboard3u=0;
    println("onboard3uRC1:"+onboard3u);
  }
  if(ropePos1.y+790<P1y && ropePos1.y+800+5>P1y && ropePos1.x<P1x && P1x<ropePos1.x+95){P1vyU=0;P1vyD=4;}
  
  if(ropePos1.y+780<P1y+30 && ropePos1.y+800>P1y+38 && ropePos1.x-5<P1x+30 && P1x<ropePos1.x+85){P1vxR=0;}
  if(ropePos1.y+780<P1y+30 && ropePos1.y+800>P1y+38 && ropePos1.x+10<P1x+30 && P1x<ropePos1.x+95+5){P1vxL=0;}
  //P2
  
  n4=0;
  if(ropePos1.y+780<P2y+30 && ropePos1.y+790>P2y && ropePos1.x<P2x+20 && P2x<ropePos1.x+95){P2vyD=0;n4=1;
    //println("n1");
  }
  if(ropePos1.y+790<P2y && ropePos1.y+800+5>P2y && ropePos1.x<P2x+20 && P2x<ropePos1.x+95)P2vyU=0;
  if(ropePos1.y+780<P2y+30 && ropePos1.y+800>P2y && ropePos1.x-5<P2x+20 && P2x<ropePos1.x+85)P2vxR=0;
  if(ropePos1.y+780<P2y+30 && ropePos1.y+800>P2y && ropePos1.x+10<P2x+20 && P2x<ropePos1.x+95+5)P2vxL=0;
  println(n1);
}
//繩梯2碰撞
void coll_2(){
  n2=0;
  //P1
  if(ropePos2.y+780<P1y+38 && ropePos2.y+790>P1y+38 && ropePos2.x<P1x+30 && P1x+30<ropePos2.x+95){P1vyD=0;n2=1;}
  if(ropePos2.y+790<P1y && ropePos2.y+800+5>P1y && ropePos2.x<P1x && P1x<ropePos2.x+95)P1vyU=0;
  if(ropePos2.y+780<P1y+38 && ropePos2.y+800>P1y+38 && ropePos2.x-5<P1x+30 && P1x<ropePos2.x+85)P1vxR=0;
  if(ropePos2.y+780<P1y+38 && ropePos2.y+800>P1y+38 && ropePos2.x+10<P1x+30 && P1x<ropePos2.x+95+5)P1vxL=0;
  
  //P2改
  n5=0;
  //if(ropePos2.y+780-30<P2y+30 && ropePos2.y+790+10>P2y && ropePos2.x<P2x+30 && P1x+30<ropePos2.x+95 &&onboard3u==0){
  //  if(ropePos2.y!=-265){n5=1;c1=0;}
  //  else {n5=0;c1=50;}
  //}
  //else n5=0;
  //if(ropePos2.y+780-10<P2y+30 && ropePos2.y+790>P2y && ropePos2.x<P2x+30 && P2x+30<ropePos2.x+95 &&onboard3u==0){
  //  P2vyU=0;P2vyD=0;onboard3u=1;println("onboard3uRC:"+onboard3u);P2jump=0;
  //}
  //if(ropePos2.y+780-53<P2y+30 && ropePos2.y+790-c1>P2y && ropePos2.x<P2x+30 && P2x+30<ropePos2.x+95){
  //  onboard3u=0;
  //  println("onboard3uRC1:"+onboard3u);
  //}
  //if(ropePos2.y+790<P2y && ropePos2.y+800+5>P2y && ropePos2.x<P2x && P2x<ropePos2.x+95){P2vyU=0;P2vyD=4;}
  
  //if(ropePos2.y+780<P2y+30 && ropePos2.y+800>P2y+38 && ropePos2.x-5<P2x+30 && P2x<ropePos2.x+85){P2vxR=0;}
  //if(ropePos2.y+780<P2y+30 && ropePos2.y+800>P2y+38 && ropePos2.x+10<P2x+30 && P2x<ropePos2.x+95+5){P2vxL=0;}
  
  
  if(ropePos2.y+780<P2y+30 && ropePos2.y+790>P2y+30 && ropePos2.x<P2x+20 && P2x<ropePos2.x+95){P2vyD=0;n5=1;}
  if(ropePos2.y+790<P2y && ropePos2.y+800+5>P2y && ropePos2.x<P2x+20 && P2x<ropePos2.x+95)P2vyU=0;
  if(ropePos2.y+780<P2y+30 && ropePos2.y+800>P2y && ropePos2.x-5<P2x+20 && P2x<ropePos2.x+85)P2vxR=0;
  if(ropePos2.y+780<P2y+30 && ropePos2.y+800>P2y && ropePos2.x+10<P2x+20 && P2x<ropePos2.x+95+5)P2vxL=0;
}

void coll_B(){//磚塊角色碰撞
    //P1
    P1on=0;
    if(BrickPos.y-3<P1y+38 && BrickPos.y+40>P1y+38 && BrickPos.x<P1x+30 && BrickPos.x+40>P1x){P1vyD=0;P1on=1;}
    if(BrickPos.y-3<P1y+38 && BrickPos.y+40>P1y+38 && BrickPos.x+20<P1x+30 && BrickPos.x+43>P1x){
      if(BrickPos.x>810)BrickPos.x+=P1vxR;
    }
    if(BrickPos.y-3<P1y+38 && BrickPos.y+40>P1y+38 && BrickPos.x-3<P1x+20 && BrickPos.x+20>P1x){
      if(BrickPos.y>498 && BrickPos.y<537 && BrickPos.x>920)BrickPos.x+=0;
      if(BrickPos.x>810 && BrickPos.x<920)BrickPos.x+=P1vxR;
      if(BrickPos.x<920)BrickPos.x+=P1vxR;
    }
    
    //P2
    if(BrickPos.y-3<P2y+30 && BrickPos.y+40>P2y && BrickPos.x<P2x+20 && BrickPos.x+40>P2x){P2vyD=0;}
    if(BrickPos.y-3<P2y+30 && BrickPos.y+40>P2y && BrickPos.x+20<P2x+20 && BrickPos.x+43>P2x){
      if(BrickPos.x>810)BrickPos.x+=P2vxL;
    }
    if(BrickPos.y-3<P2y+30 && BrickPos.y+40>P2y && BrickPos.x-3<P2x+20 && BrickPos.x+20>P2x){
      if(BrickPos.y>498 && BrickPos.y<537 && BrickPos.x>920)BrickPos.x+=0;
      if(BrickPos.x>810 && BrickPos.x<920)BrickPos.x+=P2vxR;
      else if(BrickPos.x<920)BrickPos.x+=P2vxL;
    }  
}

void coll_11(){//磚塊繩梯碰撞
  n3=0;
  if(ropePos2.y+780-5<BrickPos.y+40 && ropePos2.y+800>BrickPos.y+40 && ropePos2.x<BrickPos.x && BrickPos.x<ropePos2.x+95)n3=1;
  
}

void coll_board1(){//擋板1碰撞
  //P1
  if(boardPos.y-5<P1y+38 && boardPos.y+60>P1y+38 && boardPos.x<P1x+20 && P1x<boardPos.x+25){
    P1vyD=0;
  }
  if(boardPos.y+60<P1y && boardPos.y+120>P1y && boardPos.x<P1x+20 && P1x<boardPos.x+25)P1vyU=0;
  if(boardPos.y<P1y+38 && boardPos.y+120>P1y && boardPos.x-5<P1x+20 && P1x<boardPos.x+10)P1vxR=0;
  if(boardPos.y<P1y+38 && boardPos.y+120>P1y && boardPos.x+10<P1x+20 && P1x<boardPos.x+25+5)P1vxL=0;
  //P2
  if(boardPos.y-5<P2y+38 && boardPos.y+60>P2y+38 && boardPos.x<P2x+20 && P2x<boardPos.x+25){
    P2vyD=0;
  }
  if(boardPos.y+60<P2y && boardPos.y+120>P2y && boardPos.x<P2x+20 && P2x<boardPos.x+25)P2vyU=0;
  if(boardPos.y<P2y+38 && boardPos.y+120>P2y && boardPos.x-5<P2x+20 && P2x<boardPos.x+10)P2vxR=0;
  if(boardPos.y<P2y+38 && boardPos.y+120>P2y && boardPos.x+10<P2x+20 && P2x<boardPos.x+25+5)P2vxL=0;
}

void coll_board2(){//擋板2碰撞
  //P1
  if(boardPos2.y-5<P1y+38 && boardPos2.y+60>P1y+38 && boardPos2.x<P1x+20 && P1x<boardPos2.x+25){
    P1vyD=0;
  }
  if(boardPos2.y+60<P1y && boardPos2.y+120>P1y && boardPos2.x<P1x+20 && P1x<boardPos2.x+25)P1vyU=0;
  if(boardPos2.y<P1y+38 && boardPos2.y+120>P1y && boardPos2.x-5<P1x+20 && P1x<boardPos2.x+10)P1vxR=0;
  if(boardPos2.y<P1y+38 && boardPos2.y+120>P1y && boardPos2.x+10<P1x+20 && P1x<boardPos2.x+25+5)P1vxL=0;
  //P2
  if(boardPos2.y-5<P2y+38 && boardPos2.y+60>P2y+38 && boardPos2.x<P2x+20 && P2x<boardPos2.x+25){
    P2vyD=0;
  }
  if(boardPos2.y+60<P2y && boardPos2.y+120>P2y && boardPos2.x<P2x+20 && P2x<boardPos2.x+25)P2vyU=0;
  if(boardPos2.y<P2y+38 && boardPos2.y+120>P2y && boardPos2.x-5<P2x+20 && P2x<boardPos2.x+10)P2vxR=0;
  if(boardPos2.y<P2y+38 && boardPos2.y+120>P2y && boardPos2.x+10<P2x+20 && P2x<boardPos2.x+25+5)P2vxL=0;
}

void coll_putter(){//拉桿碰撞
  if(angle==-0.9)push=3;
  if(push!=3){
    if(P1x<234 && P1x+30>197 && P1y<100 && P1y>65 && push!=3)push=1;
    if(P1x<197 && P1x+30>180 && P1y<100 && P1y>65 && push!=3)push=2;
    if(P2x<234 && P2x+20>197 && P2y<100 && P2y>65 && push!=3)push=1;
    if(P2x<197 && P2x+20>180 && P2y<100 && P2y>65 && push!=3)push=2;
  }
}

void coll_door(){
  dF=0;
  dW=0;
  if(doorfPos.y<P1y && doorfPos.y+90>P1y && doorfPos.x<P1x && P1x<doorfPos.x+60)dF=1;
  if(doorwPos.y<P2y && doorwPos.y+90>P2y && doorwPos.x<P2x && P2x<doorwPos.x+60)dW=1;
}


//PART2
int onboard2=0;
void col2_1(){

  n11=0;
  if(ropePos3.y+780-5<P1y+38 && ropePos3.y+790>P1y+38 && ropePos3.x<P1x+30 && P1x<ropePos3.x+95)n11=1;
  
  if(ropePos3.y+780-3<P1y+38 && ropePos3.y+790>P1y+38 && ropePos3.x<P1x+30 && P1x<ropePos3.x+95)P1vyD=0;
  if(ropePos3.y+790<P1y && ropePos3.y+800+5>P1y && ropePos3.x<P1x && P1x<ropePos3.x+95)P1vyU=0;
  if(ropePos3.y+780<P1y+38 && ropePos3.y+800>P1y+38 && ropePos3.x-5<P1x+30 && P1x<ropePos3.x+85) P1vxR=0;
  if(ropePos3.y+780<P1y+38 && ropePos3.y+800>P1y+38 && ropePos3.x+10<P1x+30 && P1x<ropePos3.x+95+5) P1vxL=0;
  //P2
  n33=0;//修
  if(ropePos3.y+780-10<P2y+30 && ropePos3.y+790>P2y+30 && ropePos3.x<P2x+20 && P2x<ropePos3.x+95)n33=1;
  
  if(ropePos3.y+780-5<P2y+30 && ropePos3.y+790>P2y+30 && ropePos3.x<P2x+20 && P2x<ropePos3.x+95)P2vyD=0;
  if(ropePos3.y+790<P2y && ropePos3.y+800+5>P2y && ropePos3.x<P2x+20 && P2x<ropePos3.x+95)P2vyU=0;
  if(ropePos3.y+780<P2y+30 && ropePos3.y+800>P2y && ropePos3.x-5<P2x+20 && P2x<ropePos3.x+85)P2vxR=0;
  if(ropePos3.y+780<P2y+30 && ropePos3.y+800>P2y && ropePos3.x+10<P2x+20 && P2x<ropePos3.x+95+5)P2vxL=0;
}
void col2_2(){
  //P1
  n22=0;
  if(ropePos4.y+780-10<P1y+30 && ropePos4.y+790>P1y+30 && ropePos4.x<P1x+20 && P1x<ropePos4.x+95)n22=1;
  
  if(ropePos4.y+780-5<P1y+30 && ropePos4.y+790>P1y+30 && ropePos4.x<P1x+20 && P1x<ropePos4.x+95)P1vyD=0;
  if(ropePos4.y+790<P1y && ropePos4.y+800+5>P1y && ropePos4.x<P1x && P1x<ropePos3.x+95)P1vyU=0;
  if(ropePos4.y+780<P1y+30 && ropePos4.y+800>P1y && ropePos4.x-5<P1x+20 && P1x<ropePos4.x+85) P1vxR=0;
  if(ropePos4.y+780<P1y+30 && ropePos4.y+800>P1y && ropePos4.x+10<P1x+20 && P1x<ropePos4.x+95+5) P1vxL=0;
  //P2
  n44=0;
  if(ropePos4.y+780-5<P2y+30 && ropePos4.y+790>P2y+30 && ropePos4.x<P2x+20 && P2x<ropePos4.x+95)n33=1;
  
  if(ropePos4.y+780-3<P2y+30 && ropePos4.y+790>P2y+30 && ropePos4.x<P2x+20 && P2x<ropePos4.x+95)P2vyD=0;
  if(ropePos4.y+790<P2y && ropePos4.y+800+5>P2y && ropePos4.x<P2x+20 && P2x<ropePos4.x+95)P2vyU=0;
  if(ropePos4.y+780<P2y+30 && ropePos4.y+800>P2y && ropePos4.x-5<P2x+20 && P2x<ropePos4.x+85)P2vxR=0;
  if(ropePos4.y+780<P2y+30 && ropePos4.y+800>P2y && ropePos4.x+10<P2x+20 && P2x<ropePos4.x+95+5)P2vxL=0;
}
void coll_putter2(){//拉桿碰撞
  if(angle2==-0.9)push2=3;
  if(push2!=3){
    if(P1x<440 && P1x>373 && P1y<577 && P1y>545 && push2!=3)push2=1;
    if(P1x<440 && P1x>373 && P1y<577 && P1y>545 && push2!=3)push2=2;
    if(P2x<440 && P2x>373 && P2y<577 && P2y>545 && push2!=3)push2=1;
    if(P2x<440 && P2x>373 && P2y<577 && P2y>545 && push2!=3)push2=2;
  }
}
void coll_putter3(){//拉桿碰撞
  if(angle3==0.9)push2=3;
  if(push3!=3){
    if(P1x<848 && P1x>774 && P1y<404 && P1y>350 && push3!=3)push3=1;
    if(P1x<848 && P1x>774 && P1y<404 && P1y>350 && push3!=3)push3=2;
    if(P2x<848 && P2x>774 && P2y<404 && P2y>350 && push3!=3)push3=1;
    if(P2x<848 && P2x>774 && P2y<404 && P2y>350 && push3!=3)push3=2;
  }
}
void coll_putter4(){//拉桿碰撞
  if(angle4==-0.9)push4=3;
  if(push4!=3){
    if(P1x<441 && P1x>368 && P1y<262 && P1y>220 && push4!=3)push4=1;
    if(P1x<441 && P1x>368 && P1y<262 && P1y>220 && push4!=3)push4=2;
    if(P2x<441 && P2x>368 && P2y<262 && P2y>220 && push4!=3){push4=1;}
    if(P2x<441 && P2x>368 && P2y<262 && P2y>220 && push4!=3)push4=2;
  }
}
int onboard3u=0;
void coll_board3(){
  if(boardPos3.y-5<P1y+35 && boardPos3.y>P1y+35 && boardPos3.x<P1x+30 && P1x+30<boardPos3.x+110&&onboard3u==0){
    P1vyU=0;P1vyD=0;
    println("P1jump:"+P1jump);
    onboard3u=1;
    P1jump=0;
    println("onboard3uC:"+onboard3u);
    println("P1jump:"+P1jump);
  }
  if(boardPos3.y-13<P1y+35 && boardPos3.y-10>P1y+35 && boardPos3.x<P1x+30 && P1x+30<boardPos3.x+110){
    onboard3u=0;
    println("onboard3uC2:"+onboard3u);
  }
  if(boardPos3.y+25<P1y && boardPos3.y+30>P1y && boardPos3.x<P1x+30 && P1x+30<boardPos3.x+110){P1vyU=0;P1vyD=4;}
  if(boardPos3.y+25<P1y+38 && boardPos3.y>P1y && boardPos3.x<P1x+30 && P1x<boardPos3.x-2){P1vxR=0;}
  //if(boardPos3.y<P1y+38 && boardPos3.y+25>P1y+38 && boardPos3.x+55<P1x+30 && P1x<boardPos3.x+110){P1vxL=0;}
  //P2
  if(boardPos3.y-5<P2y+30 && boardPos3.y>P2y+30 && boardPos3.x<P2x && P2x<boardPos3.x+110&&onboard3u==0){
    P2vyU=0;P2vyD=0;
    println("P2jump:"+P2jump);
    onboard3u=1;
    P2jump=0;
    println("onboard3uC:"+onboard3u);
    println("P2jump:"+P2jump);
  }
  if(boardPos3.y-13<P2y+35 && boardPos3.y-10>P2y+35 && boardPos3.x<P2x+30 && P2x+30<boardPos3.x+110){
    onboard3u=0;
    println("onboard3uC2:"+onboard3u);
  }
  if(boardPos3.y<P2y && boardPos3.y+25>P2y && boardPos3.x<P2x && P2x+20<boardPos3.x+110){P2vyU=0;P2vyD=4;}
  //if(boardPos3.y<P2y+30 && boardPos3.y+25>P2y && boardPos3.x<P2x+20 && P2x<boardPos3.x+55){P2vxR=0;}
  if(boardPos3.y<P2y+30 && boardPos3.y+25>P2y && boardPos3.x+55<P2x+20 && P2x<boardPos3.x+110){P2vxL=0;}

}
void coll_board4(){
  if(boardPos4.y-5<P1y+38 && boardPos4.y>P1y+38 && boardPos4.x<P1x && P1x+30<boardPos4.x+110&&onboard3u==0){
    P1vyU=0;P1vyD=0;
    println("P1jump:"+P1jump);
    onboard3u=1;
    P1jump=0;
    println("onboard3uC:"+onboard3u);
    println("P1jump:"+P1jump);
  }
  if(boardPos4.y-13<P1y+38 && boardPos4.y-10>P1y+38 && boardPos4.x<P1x && P1x+30<boardPos4.x+110){
    onboard3u=0;
  }
  if(boardPos4.y+10<P1y+38 && boardPos4.y+25>P1y && boardPos4.x<P1x+30 && P1x<boardPos4.x+110){P1vyU=0;P1vyD=4;}
  if(boardPos4.y<P1y+38 && boardPos4.y+25>P1y && boardPos4.x<P1x+30 && P1x<boardPos4.x+55){P1vxR=0;}
  //if(boardPos4.y<P1y+38 && boardPos4.y+25>P1y && boardPos4.x+55<P1x+30 && P1x<boardPos4.x+110){P1vxL=0;}
  //P2
  if(boardPos4.y-5<P2y+30 && boardPos4.y>P2y+30 && boardPos4.x<P2x && P2x+20<boardPos4.x+110&&onboard3u==0){
    P2vyU=0;P2vyD=0;
    println("P2jump:"+P2jump);
    onboard3u=1;
    P2jump=0;
    println("onboard3uC:"+onboard3u);
    println("P2jump:"+P2jump);
  }
  if(boardPos4.y-13<P2y+30 && boardPos4.y-10>P2y+30 && boardPos4.x<P2x && P2x+20<boardPos4.x+110){
    onboard3u=0;
  }
  if(boardPos4.y+10<P2y+30 && boardPos4.y+25>P2y && boardPos4.x<P2x+20 && P2x<boardPos4.x+110){P2vyU=0;P2vyD=4;}
  //if(boardPos4.y<P2y+30 && boardPos4.y+25>P2y && boardPos4.x<P2x+20 && P2x<boardPos4.x+55){P2vxR=-3;}
  if(boardPos4.y<P2y+30 && boardPos4.y+25>P2y && boardPos4.x+55<P2x+20 && P2x<boardPos4.x+110){P2vxL=3;}
  
}
void coll_board5(){
  if(boardPos5.y-10<P1y+38 && boardPos5.y>P1y+38 && boardPos5.x<P1x && P1x+30<boardPos5.x+110&&onboard3u==0){
    P1vyU=0;P1vyD=0;
    println("P1jump:"+P1jump);
    onboard3u=1;
    P1jump=0;
    println("onboard3uC:"+onboard3u);
    println("P1jump:"+P1jump);
  }
  if(boardPos5.y-13<P1y+38 && boardPos5.y-10>P1y+38 && boardPos5.x<P1x && P1x+30<boardPos5.x+110){
    onboard3u=0;
  }
  if(boardPos5.y+10<P1y+38 && boardPos5.y+25>P1y && boardPos5.x<P1x+30 && P1x<boardPos5.x+110){P1vyU=0;P1vyD=4;}
  if(boardPos5.y<P1y+38 && boardPos5.y+25>P1y && boardPos5.x<P1x+30 && P1x<boardPos5.x+55){P1vxR=0;}
  //if(boardPos5.y<P1y+38 && boardPos5.y+25>P1y && boardPos5.x+55<P1x+30 && P1x<boardPos5.x+110){P1vxL=0;}
  //P2
  if(boardPos5.y-5<P2y+30 && boardPos5.y>P2y+30 && boardPos5.x<P2x && P2x+20<boardPos5.x+110&&onboard3u==0){
    P2vyU=0;P2vyD=0;
    println("P2jump:"+P2jump);
    onboard3u=1;
    P2jump=0;
    println("onboard3uC:"+onboard3u);
    println("P2jump:"+P2jump);
  }
  if(boardPos5.y-13<P2y+30 && boardPos5.y-10>P2y+30 && boardPos5.x<P2x && P2x+20<boardPos5.x+110){
    onboard3u=0;
  }
  if(boardPos5.y+10<P2y+30 && boardPos5.y+25>P2y && boardPos5.x<P2x+20 && P2x<boardPos5.x+110){P2vyU=0;P2vyD=4;}
  //if(boardPos5.y<P2y+30 && boardPos5.y+25>P2y && boardPos5.x<P2x+20 && P2x<boardPos5.x+55){P2vxR=-3;}
  if(boardPos5.y<P2y+30 && boardPos5.y+25>P2y && boardPos5.x+55<P2x+20 && P2x<boardPos5.x+110){P2vxL=3;}
  
}

void coll_door2(){
  dF2=0;
  dW2=0;
  if(doorfPos2.y<P1y && doorfPos2.y+90>P1y && doorfPos2.x<P1x && P1x<doorfPos2.x+60)dF2=1;
  if(doorwPos2.y<P2y && doorwPos2.y+90>P2y && doorwPos2.x<P2x && P2x<doorwPos2.x+60)dW2=1;
}
