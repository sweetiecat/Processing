void sr0(){
  music();
  background(start);
  image(play,125,400,200,150);
  fill(255,150);
  ellipse(x[0],y[0],100,100);
  fill(#ff0000,150);
  ellipse(x[1],y[1],100,100);
  fill(#00ff00,150);
  ellipse(x[2],y[2],100,100);
  fill(#0000ff,150);
  ellipse(x[3],y[3],100,100);
  fill(#ff00ff,150);
  ellipse(x[4],y[4],100,100);
  ballp0();
  ballc();
}
void sr1(){
  w=90; h=450;
  for(int c=1;c<7;c++){
    cb=c;
    colorb();
    fill(ballcolor1);
    stroke(ballcolor2);
    if(c==4){w=90; h=550;}
    rect(w,h,75,50,60);
    w+=100;
  }
  image(arrow,300,650,50,50);
  ballc();
  balls();
  load();
}
void sr2(){
  board();
  pushMatrix();
    rotateX(radians(-65));
    translate(0,0,-50);
    score();
  popMatrix();
}
void sr3(){
  imageMode(CORNER);
  image(BG,0,0);
  pushMatrix();
    translate(10,350,0);
    score();
  popMatrix();
  image(again,175,450,100,100);
  ballc();
}
