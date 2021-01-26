PImage start,paper,paperBG;
color nowcolor;
int antime=0;
void startset(){
  start=loadImage("start.png");
  paper=loadImage("paper3.png");
  paperBG=loadImage("paperBG.jpg");
}
void start_game(){
  image(start,250,30,300,400);
  if(mousePressed == true){
    loadPixels();///取得畫布
    int now = width*mouseY+mouseX;///奇怪的pixels公式
    nowcolor=pixels[now];
     if(nowcolor==#363636)p=1;
  }
}
void paper(){
  background(255);
  image(paperBG,0,0,800,400);
  image(paper,50,50);
  if(antime>=250){
    p=2;
  }
  antime+=1;
}
