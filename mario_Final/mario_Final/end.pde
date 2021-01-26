PImage cat,princess,castle,bomb,bye,word;
int k=0,d=0,time=0;
void winset(){
  castle=loadImage("castle.png");
  princess=loadImage("princess.png");
  word=loadImage("talk2.png");
  bomb=loadImage("bomb2.png");
  bye=loadImage("Bye.png");
}
void win(){
  image(castle,350,-10,500,500);
  image(princess,400,180,200,200);
  walkimg=0;
  runimg();
  if(move2.x<200){
    move2.add(3,0);
  }
  else{
    k=1;
  } 
  if(k==1){
    image(playerwalk[walkimg],move2.x,move2.y,70,70);
    image(word,80,10,300,250);
  }
  else{
    image(playerwalk[walkimg],move2.x,move2.y,70,70);
  }
  time+=1;
  println(time);
  if(time>=250){
    background(255);
    bye();
  }
}
void mosdie(){
  background(#BDFCFC);
  image(bomb,220,30,350,350);
  image(BO,335,140,135,135);
  if(mousePressed == true)d=1;
}
void bye(){
  image(bye,270,50,300,300);
}
