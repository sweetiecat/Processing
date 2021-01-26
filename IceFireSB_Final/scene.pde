void start1(){
  image(BG3,0,0,1300,800);
  if(mouseX>481&&mouseX<726&&mouseY>311&&mouseY<381){
    image(start,345,75,550,550);
  }else{
    image(start,370,100,500,500);
  }
  if(mousePressed==true){
    if(mouseX>481&&mouseX<726&&mouseY>311&&mouseY<381){
      scene=6;
    }
  }
}
void manualRead(){
  image(BG3,0,0,1300,800);
  image(manual,30,0);
  if(mouseX>925 && mouseX<1024 && mouseY>523 && mouseY<620){
    image(go,950,530,100,100);
  }else{
    image(go,930,530,100,100);
  }
  if(mousePressed==true){
    if(mouseX>925 && mouseX<1024 && mouseY>523 && mouseY<620)scene=1;
  } 
}
void card1(){
  background(0);
  image(BG3,0,0,1300,800);
  image(card1,80,0,1052,756);
  image(hand,320,200);
  P1x=400;P1y=720;
  P2x=820;P2y=720;
  if(mousePressed==true)scene=2; 
}
void scene1(){
  move = new PVector(P2x,P2y);
  move2= new PVector(P1x,P1y);
  loadPixels();
  blackS();
  rope();
  board_btn();
  win1();
  dead();
  P1();
  P2();
  //if(predict()==#000000|| predict()==#156F30 || predict()==#FF0000){
  //  move.x+=vx0;
  //  move.x+=vx1;
  //  move.y+=vd;
  //  move.y+=vu;
  //}
  //if(predict4()==#000000 || predict4()==#156F30 || predict4()==#FF0000){
  //  move2.x+=vx00;
  //  move2.x+=vx11;
  //  move2.y+=vd2;
  //  move2.y+=vu2;  
  //}
  //fill(#1F1BA7);
  //ellipse(move.x,move.y,10,10);
  //fill(#FA3F6B);
  //ellipse(move2.x,move2.y,10,10);
  tryagaingame();
}
void scene2(){
  P1move = new PVector(P2x,P2y);
  P2move = new PVector(P1x,P1y);
  loadPixels();
  blackS();
  board_btn2();
  rope2();
  win2();
  dead2();
  P1();
  P2();
  //if(blackspace[a(P1x,P1y)] ==#C1E9F2 || blackspace[a(P1x,P1y)] ==#D90000 || blackspace[a(P1x,P1y)] ==#3F48CC){
  //  P1x+=P1vxL+P1vxR;
  //  P1y+=P1vyU+P1vyD;
  //}
  //if(blackspace[a(P2x,P2y)] ==#C1E9F2 || blackspace[a(P2x,P2y)] ==#D90000 || blackspace[a(P2x,P2y)] ==#3F48CC){
  //  P2x+=P2vxL+P2vxR;
  //  P2y+=P2vyU+P2vyD;  
  //} 
  //image(putter2,P1move.x,P1move.y,50,50);
  //fill(#1F1BA7);
  //ellipse(P1move.x,P1move.y,10,10);
  //fill(#FA3F6B);
  //ellipse(P2move.x,P2move.y,10,10);
  tryagain2game();
}
