PVector loc1,loc2,vel,acc;
int s=0; 

class Mushroom{
  //PVector loc,vel,acc;
  
  Mushroom(){
    loc1 = new PVector(width/2,height/2);
    loc2 = new PVector(width/2,height/2);
    vel = new PVector(0,0);
    acc = new PVector(0,0.001);
  }
  
  void update(){
    vel.add(acc);
    loc1.add(vel);
    loc2.add(vel);
  }
  
  void edges(){
    if(loc1.y>height) loc1.y=0;
    if(loc1.y<0) loc1.y=height;
    if(loc2.y+180>height) loc2.y=0;
    if(loc2.y<0) loc2.y=height;
  }
  
  void display(){
    if(bgPos2.x<-1650){
      s=1;//show mushroom
    }
    if(-1945>bgPos2.x && bgPos2.x>-2005){
      s=2;
    }
    
    if(s==1){
      image(jw,bgPos2.x+2300,loc1.y,35,30);
      image(jw,bgPos2.x+2300,loc1.y+30,35,30);
      image(jw,bgPos2.x+2300,loc1.y+60,35,30);
      
      image(jw,bgPos2.x+2300,loc2.y+120,35,30);
      image(jw,bgPos2.x+2300,loc2.y+150,35,30);
      image(jw,bgPos2.x+2300,loc2.y+180,35,30);
    }
    
    if(s==2){
      p=3;
      s=0;
    }
  }
}
