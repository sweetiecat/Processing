int sr=0;
int w,h;
int now;
int score=0;
PImage BG,play,start,arrow,again;
PImage []num=new PImage[10];
void setup(){
  size(450,800,P3D);
  musicset();
  background(0);
  start=loadImage("Bball.png");
  BG=loadImage("track .png");
  arrow=loadImage("arrow.png");
  again=loadImage("again.png");
  play=loadImage("play.png");
  image(BG,0,0);
  load();
  for(int i=0;i<5;i++){
    x[i]=random(0,450);
    y[i]=random(0,800);
    vx[i]=random(1,5);
    vy[i]=random(1,5);
  }
}
void draw(){
  image(BG,0,0);
  if(sr==0) sr0();
  else if(sr==1) sr1();
  else if(sr==2) sr2();
  else if(sr==3) sr3();
}
void mousePressed(){
  loadPixels();
  now = width*mouseY+mouseX;
}
void score(){
  int score2;
  score2=score;
  for(int i=6; i>3; i--){
    int now=score2%10;
    image(num[now], i*40,30,40,60);
    score2/=10;
  }
}
void load(){
  for(int i=0;i<10;i++){
    board[i]=new PVector(random(0,380),-150*i);
    num[i]=loadImage(""+i+".png");    
  }
  score=0;
  st=0;
}
