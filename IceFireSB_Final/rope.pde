PImage rope,rope2;
PVector ropePos1,ropePos2,ropePos3,ropePos4,Vec,mass1,mass2,Limt,BrickPos,Bmass,bdown;
int downB=0;

void rope(){
  image(rope,ropePos1.x,ropePos1.y,95,800);
  image(rope,ropePos2.x,ropePos2.y,95,800);
  image(brick,BrickPos.x,BrickPos.y,40,40);//磚塊
  coll_1();
  coll_11();
  coll_2(); 
  coll_B();
  rise_drop();
  if(n1==1)move.y=ropePos1.y+780;
  if(n2==1)move.y=ropePos2.y+780;
  if(n4==1)move2.y=ropePos1.y+780;
  if(n5==1)move2.y=ropePos2.y+780;
  if(n3==1)BrickPos.y=ropePos2.y+780-40;
}
void rise_drop(){
  if(n1==0 && n2==0 && n4==0 && n5==0 && n3==0){
    if(ropePos2.y > -673 && ropePos1.y < -75){
      ropePos2.sub(Limt);
      ropePos1.add(Limt);
    }
  }
  else{
    if(n1==1 && ropePos2.y<=-270 && ropePos1.y>=-74){//P1
      mass1.add(Vec);
      ropePos2.sub(mass1);
      ropePos1.add(mass1);
    }
    if(n4==1 && ropePos2.y<-270 && ropePos1.y>=-74){//P2
      mass2.add(Vec);
      ropePos2.sub(mass2);
      ropePos1.add(mass2);
    }
    if(n2==1 && ropePos2.y<-270){//P1
      mass1.add(Vec);
      ropePos2.add(mass1);
      ropePos1.sub(mass1);
    }
    if(n5==1 && ropePos2.y<=-270){//P2
      mass2.add(Vec);
      ropePos2.add(mass2);
      ropePos1.sub(mass2);
    }
    if(n3==1 && ropePos2.y<=-270){ 
      if(P1on==1)Bmass.add(mass1);
      ropePos2.add(Bmass);
      ropePos1.sub(Bmass);
      if(n1==1)P1vyD+=-8;
    } 
  }
  if(BrickPos.x<858 && BrickPos.y<500)BrickPos.add(Vec);  
  if(BrickPos.y>354 && BrickPos.y<500 && BrickPos.x>814 && BrickPos.x<964)BrickPos.add(Vec);

}

//PART2
void rope2(){
  image(rope2,ropePos3.x,ropePos3.y,95,800);
  image(rope2,ropePos4.x,ropePos4.y,95,800);
  col2_1();
  col2_2();
  rise_drop2();
  
  if(n11==1){
    if(P1y<ropePos3.y)P1y+=4;
  }
  if(n33==1){
    if(P2y<ropePos3.y)P2y+=3;
  }
  if(n22==1){
    if(P1y<ropePos4.y)P1y+=4;
  }
  if(n44==1){
    if(P2y<ropePos4.y)P2y+=3;
  }

}
void rise_drop2(){
  
  //固定初始繩子
  if(n11==0 && n22==0 && n33==0 && n44==0 && ropePos4.y>=-615 && ropePos4.y<-35 && ropePos3.y>=-615 && ropePos3.y<-35){//控制保持不下墜 加速度
      ropePos3.add(Limt);
      ropePos4.sub(Limt);
  }
  else{
    //ropePos3
    if(n11==1 && ropePos3.y<-50){
      mass1.add(Vec);
      ropePos3.add(mass1);
      ropePos4.sub(mass1);
    }
    if(n33==1 && ropePos3.y<-50){
      mass2.add(Vec);
      ropePos3.add(mass2);
      ropePos4.sub(mass2);
    }
    //ropePos4
    if(n22==1 && ropePos4.y<-50){
      mass1.add(Vec);
      ropePos4.add(mass1);
      ropePos3.sub(mass1);
    }
    if(n44==1 && ropePos4.y<-50){
      mass2.add(Vec);
      ropePos4.add(mass2);
      ropePos3.sub(mass2);
    }
  }
}
