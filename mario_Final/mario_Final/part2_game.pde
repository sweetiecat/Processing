int w=120,j=20;
PFont point,value;
PImage love;
int n=5,r=0;
boolean collision=false; 
void changeScenes(){
  if(x!=0 && n!=0){
    game();
  }
  if(x<=0){
    background(255);
    mosdie();
  }
  if(n==0){
    move.x=100;
    background(255);
    again2();
  }
  if(d==1){
    background(255);
    win();
  }
}
void game(){
  blood();
  boss(); 
  fireball();
  lifeValue(); 
  player2();
}
void blood(){//怪物生命值
  point = createFont("Algerian-48", 32);
  textFont(point);
  text("boss", 530, 40,32);
  if(x==j && x>0){
    rect(610, 20, w, 20);
    fill(#FC0824);
    noStroke();
  }
  else if(x<=0){
    rect(610, 20, 0, 20);
    fill(#FC0824);
  }
  else if(x<j){
    rect(610, 20, w-=6, 20);
    fill(#FC0824);
    noStroke();
    j--;
    println(w,x);   
  }
}
void lifeValue(){//生命值
  love = loadImage("value.png");
  image(love,35,14,30,30); 
  value = createFont("Algerian-48", 32);
  textFont(point);
  text(n,70,40,32); 
   //火球與角色碰撞
  if(location2.x+25 > move.x &&   move.x > location2.x-25  &&  location2.y+25> move.y && move.y>location2.y-25 ){
    collision=true;
    x1=0;
    y1=-100; 
    location2.x=x1;
    location2.y=y1;
  }
  if(location3.x+25 > move.x &&   move.x > location3.x-25  &&  location3.y+25> move.y && move.y>location3.y-25 ){
    collision=true;
    x2=100;
    y2=-200;
    location3.x=x2;
    location3.y=y2;
  }
  if(location4.x+25 > move.x &&   move.x > location4.x-25  &&  location4.y+25> move.y && move.y>location4.y-25 ){
    collision=true;
    x3=200;
    y3=-300;
    location4.x=x3;
    location4.y=y3;
  }
  if(location5.x+25 > move.x &&   move.x > location5.x-25  &&  location5.y+25> move.y && move.y>location5.y-25 ){
    collision=true;
    x4=300;
    y4=-300;
    location5.x=x4;
    location5.y=y4;
  }
  if(location6.x+25 > move.x &&   move.x > location6.x-25  &&  location6.y+25> move.y && move.y>location6.y-25 ){
    collision=true;
    x5=300;
    y5=-300;
    location6.x=x5;
    location6.y=y5;
  }
  if(collision==true){
    n--;
    if(n==0)move2 = new PVector(0,260);
    collision=false;
  }
}
