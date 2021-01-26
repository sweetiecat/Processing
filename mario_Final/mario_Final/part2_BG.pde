PVector location2,location3,location4,location5,location6;
float x1=0,x2=100,x3=200,x4=500,x5=750,x6=800;
float y1=-100,y2=-300,y3=-200,y4=-400,y5=-500,y6=-600;
PImage[] fireball=new PImage[6];
PImage BG2;
void pos(){
  location2 = new PVector(x1,y1);
  location3 = new PVector(x2,y2);  
  location4 = new PVector(x3,y3); 
  location5 = new PVector(x4,y4);
  location6 = new PVector(x5,y5);
  BG2=loadImage("castle3.jpg");
}
void fireimg(){
  for(int i=0;i<6;i++){
    fireball[i]=loadImage("fire.png");
    a[i]=loadImage("arrow3.png");
  }
}
void fireball(){
    //if(n==0 || x==0)noLoop();
    location2.add(2.5,5);
    location3.add(2.5,5);
    location4.add(2.5,5);
    location5.add(2.5,5);
    location6.add(2.5,5);
    image(fireball[0],location2.x,location2.y,50,50);
    image(fireball[1],location3.x,location3.y,50,50);
    image(fireball[2],location4.x,location4.y,50,50);
    image(fireball[3],location5.x,location5.y,50,50);
    image(fireball[4],location6.x,location6.y,50,50);
    if(location2.y==800){
      x1=0;
      y1=-100; 
      location2.x=x1;
      location2.y=y1;
    }
    if(location3.y==800){
      x2=100;
      y2=-200;
      location3.x=x2;
      location3.y=y2;
    }
    if(location4.y==800){
      x3=200;
      y3=-300;
      location4.x=x3;
      location4.y=y3;
    }
    if(location5.y==800){
      x4=300;
      y4=-300;
      location5.x=x4;
      location5.y=y4;
    }
    if(location6.y==800){
      x5=300;
      y5=-300;
      location6.x=x5;
      location6.y=y5;
    }  
}
