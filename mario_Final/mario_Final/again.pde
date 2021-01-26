PVector move2;
PImage again;
int m=0;
void again(){
  background(#BDFCFC);
  image(again,250,0,300,300);
  walkimg=0;
  if(move2.x<350){
    runimg();
    move2.add(3,0);
  }
  else{
    runimg();
  }
  image(playerwalk[walkimg],move2.x,move2.y,70,70);
  if(mousePressed == true){
    loadPixels();///取得畫布
    int now = width*mouseY+mouseX;///奇怪的pixels公式
    nowcolor=pixels[now];
     if(nowcolor==#363636){
      println("1");
      move2.x=0;
      m=0;
   
    }
  }
}
void again2(){
  background(#BDFCFC);
  image(again,250,0,300,300);
  walkimg=0;
  if(move2.x<350){
    runimg();
    move2.add(3,0);
  }
  else{
    runimg();
  }
  image(playerwalk[walkimg],move2.x,move2.y,70,70);
  if(mousePressed == true){
    loadPixels();///取得畫布
    int now = width*mouseY+mouseX;///奇怪的pixels公式
    nowcolor=pixels[now];
    if(nowcolor==#363636){
    println("1");
      x=20;
      n=5;
      move2.x=0;
      p=3;
    }
  }
}
