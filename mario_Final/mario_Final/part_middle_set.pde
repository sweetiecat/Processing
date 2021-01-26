Mushroom mr;
Turtle tu;
void midpart(){
  BG3 = loadImage("mario_bg.jpg");
  block1 = loadImage("block1.jpg");//67,31
  block2 = loadImage("block2.jpg");//57,32
  block3 = loadImage("Nrq0BWDBvm.png");//32,32
  turtle1 = loadImage("mario_PNG392.png");
  turtle2 = loadImage("mario_PNG39.png");
  jw = loadImage("mario_PNG50.png");//898,892
  qu = loadImage("dNpnLVbA39.png");
  mr =new Mushroom();
  tu=new Turtle();
  floor = new PVector(30,260);
  velocity1 = new PVector(3,0);
  jvelocity1 = new PVector(0,-10);
  av1 = new PVector(0,0.3);
  down = new PVector(0,2);
  down2 = new PVector(0,2);
  bgPos2 = new PVector(0,0);
}
void midgame(){
  background(#6FC3FA);
  Block();
  player3();
  mr.update();
  mr.edges();
  mr.display();
  tu.update();
  tu.edges();
  //test
  println(bgPos2.x);
}
void bgMove2(){
  image(BG3,bgPos2.x,bgPos2.y,2501,400);
  if(mousePressed == true){
    if(mouseX>100 && mouseX<170 && mouseY>320 && mouseY<390){
        if(bgPos2.x!=-92 && bgPos2.x!=-495 && bgPos2.x!=-862 && bgPos2.x!=-1635){
          if(bgPos2.x>-1689)bgPos2.x--;
        }
    }
    else if(mouseX>20 && mouseX<90 && mouseY>320 && mouseY<390){
      if(bgPos2.x != 0 && bgPos2.x!=-280 && bgPos2.x!=-605 && bgPos2.x!=-975){//改
        if(bgPos2.x>-1689)bgPos2.x++;
      }
    }
    else if(mouseX>710 && mouseX<790 && mouseY>320 && mouseY<390){
      if(jumpimg==0 && bgPos2.x!=-1689){
        bgPos2.x--;
      }
      if(jumpimg==1 && bgPos2.x!=-1689){
        bgPos2.x++;
      }
    }
  }
}
