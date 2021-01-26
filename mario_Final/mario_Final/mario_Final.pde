int p=0;
void setup(){
  //fullScreen();
  size(800,400);
  catwalkimg();
  startset();
  again=loadImage("again2.png");
  move2 = new PVector(0,260);
  part1();
  fireimg();
  part2set();
  pos();
  winset();
  midpart();
}
void draw(){
  background(#BDFCFC);
  if(p==0){
    start_game();
  }
  else if(p==1){
    paper();
  }
  else if(p==2){
    Loadgame();
    control();
  }
  else if(p==3){
    background(BG2);
    changeScenes(); 
    control();
  }
  else if(p==4){
    background(255);
    mosdie();
  }
  else if(p==5){
    background(255);
    win();
  }
  else if(p==6){
    midgame();
    control();
  }
  if(m==1){
    again();
    part1();
  }
  //if(n==0){
    //again2();
    //pos();
  //}
  println(bgPos2.x,move.x);
}
