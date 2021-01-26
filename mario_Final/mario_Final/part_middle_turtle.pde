PVector loc3,loc4,vel3,acc3,vel4,acc4;
int s1=0;

class Turtle{
  Turtle(){
    loc3 = new PVector(width/2,188);
    loc4 = new PVector(width/2,188);
    acc3 = new PVector(0,0.01);
    vel3 = new PVector(0,0);
    acc4 = new PVector(0,0.01);
    vel4 = new PVector(0,0);
  }
  void update(){
    if(bgPos2.x<-523 && bgPos2.x>-733){
      s1=1;
     
      vel4.add(acc4);
      loc4.sub(vel4);
      image(turtle2,bgPos2.x+1220,loc4.y,32,32);
    }
    
    else if(bgPos2.x<-733 && bgPos2.x>-862){
      s1=2;
      
      vel3.add(acc3);
      loc3.sub(vel3);

      image(turtle1,bgPos2.x+880,loc3.y,32,32);
      }
  }

  void edges() {
    if (loc3.y < 10) {
      loc3.y = 210;
    }
    if (loc3.y >210) {
      loc3.y = 10;
    }
    if (loc4.y < 10) {
      loc4.y = 210;
    }
    if(loc4.y > 210) {
      loc4.y = 10;
    }
  }
  
}
