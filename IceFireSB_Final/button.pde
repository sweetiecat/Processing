PVector boardPos,boardPos2,butPos,basePos,putterPos;
PVector boardPos3,boardPos4,boardPos5,basePos2,putterPos2,basePos3,putterPos3,basePos4,putterPos4;
int downBtn,push=0,push2=0,push3=0,push4=0;
float angle,angle2,angle3,angle4;
void board_btn(){
  image(board,boardPos.x,boardPos.y,25,120);
  image(board,boardPos2.x,boardPos2.y,25,120);
  image(button,butPos.x,butPos.y,30,25);
  image(base,basePos.x,basePos.y,80,20);
  if(basePos.y-5<move.y && basePos.y+20>move.y && basePos.x<move.x && move.x<basePos.x+20)vd=0;//coll_base
  coll_board1();
  coll_board2();
  push_button();
  open_board();
  open_board2();
  control();
  coll_putter();
  if(push==0)angle=0.9;
  if(push==1 && angle>-0.9)angle-=0.01;
  if(push==2 && angle>-0.9)angle-=0.01;
  
}

void push_button(){
  downBtn=0;
  if(butPos.y+5<P2y+30 && butPos.y+15>P2y && butPos.x<P2x+20 && P2x<butPos.x+30){downBtn=1;}
  if(butPos.y+15<P2y && butPos.y+25>P2y && butPos.x<P2x+20 && P2x<butPos.x+30){downBtn=1;println(downBtn);}
  if(butPos.y+8<P2y+30 && butPos.y+25>P2y && butPos.x-5<P2x+20 && P2x<butPos.x+10){downBtn=1;println(downBtn);}
  if(butPos.y+8<P2y+30 && butPos.y+25>P2y && butPos.x+10<P2x+20 && P2x<butPos.x+30){downBtn=1;println(downBtn);}
}

void open_board(){
  if(downBtn==1){
      if(boardPos.y<100)boardPos.add(0,3);
  }
  else{
    if(boardPos.y>40)boardPos.sub(0,3);
  } 
}
void open_board2(){
  if(push==1 || push==2){
    if(boardPos2.y<550)boardPos2.add(0,0.6);
  }
  else{
    if(boardPos2.y>450)boardPos2.sub(0,0.6);
  }
}

void control(){ 
  
  pushMatrix();
  translate(putterPos.x, putterPos.y);
  rotate(angle);
  image(putter,-15,-60,25,60);
  popMatrix();
  image(base,basePos.x,basePos.y,80,20);
    
}
//Part2
void board_btn2(){
  image(board3,boardPos3.x,boardPos3.y,110,25);
  image(board4,boardPos4.x,boardPos4.y,110,25);
  image(board5,boardPos5.x,boardPos5.y,110,25);

  control2();
  coll_putter2();
  coll_putter3();
  coll_putter4();
  move_board();
  coll_board3();
  coll_board4();
  coll_board5();
  
}

void control2(){ 
  //搖桿控制1
  pushMatrix();
  translate(putterPos2.x, putterPos2.y);
  rotate(angle2);
  image(putter2,-15,-60,25,60);
  popMatrix();
  image(base2,basePos2.x,basePos2.y,80,15);
  if(push2==0)angle2=0.9;
  if(push2==1 && angle2>-0.9)angle2-=0.015;
  if(push2==2 && angle2>-0.9)angle2-=0.015;
  //搖桿控制2
  pushMatrix();
  translate(putterPos3.x, putterPos3.y);
  rotate(angle3);
  image(putter2,-15,-60,25,60);
  popMatrix();
  image(base2,basePos3.x,basePos3.y,80,15);
  if(push3==0)angle3=-0.9;
  if(push3==1 && angle3<0.9)angle3+=0.015;
  if(push3==2 && angle3<0.9)angle3+=0.015;
  //搖桿控制3
  pushMatrix();
  translate(putterPos4.x, putterPos4.y);
  rotate(angle4);
  image(putter2,-15,-60,25,60);
  popMatrix();
  image(base2,basePos4.x,basePos4.y,80,15);
  if(push4==0)angle4=0.9;
  if(push4==1 && angle4>-0.9)angle4-=0.015;
  if(push4==2 && angle4>-0.9)angle4-=0.015;
}

void move_board(){
  if(push2==1 || push2==2){
    if(boardPos3.x<583)boardPos3.add(0.6,0);
  }
  if(push3==1 || push3==2){
    if(boardPos4.x>515)boardPos4.sub(0.6,0);
  }
  if(push4==1 || push4==2){
    if(boardPos5.x<583)boardPos5.add(0.6,0);
  }
  
}
