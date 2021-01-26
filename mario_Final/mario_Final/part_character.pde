PVector []ap = new PVector[6];
PImage []a = new PImage[6];
PImage BO;
PVector location,velocity;
int x=20;
void part2set(){
  location = new PVector(100,100);
  velocity = new PVector(2.5,2);
  BO=loadImage("boss1.png");
  ap[0] = new PVector(100,240);
  ap[1] = new PVector(100,400);
}
void arrow(){//箭
  //if(n==0 || x==0)noLoop();
  ap[0].add(0,-5); 
  ap[1].add(0,-5);
  image(a[0],ap[0].x,ap[0].y,50,50);
  if(ap[1].y < 240){
    ap[1].x=move.x+15;
    //ap[1].y=p1.y;//跳躍用
    image(a[1],ap[1].x,ap[1].y,50,50); 
  }   
  if(ap[0].y == 0){
    ap[0].x=move.x+15;
    ap[0].y=240;
  }
  if(ap[1].y == 0){
    ap[1].x=move.x+15;
    ap[1].y=400;
  }
}
void boss(){
  location.add(velocity);
  image(BO,location.x,location.y,130,130);  
  if ((location.x > width) || (location.x < 0)) {
    velocity.x = velocity.x * -1;
  }
  if ((location.y > height/4) || (location.y < -150)) {
    velocity.y = velocity.y * -1;
  }
  if(location.x+65 > ap[0].x && ap[0].x > location.x-65 && location.y+65 > ap[0].y && ap[0].y > location.y-65){
    x--;
    ap[0].x=move.x+15;
    ap[0].y=240;
  }
  if(location.x+65 > ap[1].x && ap[1].x > location.x-65 && location.y+65 > ap[1].y && ap[1].y > location.y-65){
    x--;
    ap[1].x=move.x+15;
    ap[1].y=400;
  }
  if(location.x+65 > move.x && move.x > location.x-65 && location.y+65 > move.y && move.y > location.y-65){
    n=0;
    p=6;
  }
}
