ArrayList<PVector> list;
void setup(){
  size(500,500);
  list=new ArrayList<PVector>();
}
PVector tv1=null,tv2=null,tv3=null,tv4=null;
int n=0;
void drawWing(PVector p1,PVector p2){
  PVector v=PVector.sub(p2,p1);
  PVector v2=new PVector(v.y,-v.x);
  PVector v3=new PVector(-v.y,v.x);
  tv1=PVector.add(v2,p1);
  tv2=PVector.add(v3,p1);
  tv3=PVector.add(v2,p2);
  tv4=PVector.add(v3,p2);
  line(p1.x,p1.y,tv1.x,tv1.y);
  line(p1.x,p1.y,tv2.x,tv2.y);
  line(tv1.x,tv1.y,p2.x,p2.y);
  line(tv2.x,tv2.y,p2.x,p2.y);
  //line(p2.x+v2.x,p2.y+v2.y,p2.x+v3.x,p2.y+v3.y);
  //if(n!=0){
    
    drawSqu(tv1,tv2);
    n++;
    //line(tv1.x,tv1.y,tv3.x,tv3.y);
    //line(tv2.x,tv2.y,tv4.x,tv4.y);
  //}
  
}
PVector U1=new PVector(0,0),U2=new PVector(0,0),N1=null,N2=null;
void drawSqu(PVector v1,PVector v2){
  PVector N1=v1;
  PVector N2=v2;
  
  if(n!=0){
    line(U1.x,U1.y,N1.x,N1.y);
    line(U2.x,U2.y,N2.x,N2.y);
  }
  U1=N1;
  U2=N2;
}
void draw(){
  background(255);
  n=0;
  for(int i=0; i<list.size()-1;i++){
    PVector p1=list.get(i);
    PVector p2=list.get(i+1);
    
    line(p1.x,p1.y,p2.x,p2.y);
    drawWing(p1,p2);
  }
  for(PVector pt : list){
    //ellipse(pt.x,pt.y,10,10);
  }
}
PVector last=null;
void mousePressed(){
  last=new PVector(mouseX,mouseY);
  list.add(last);
}
void mouseDragged(){
  //if(dist(mouseX,mouseY,last.x,last.y)<20) return;
    PVector pt = new PVector(mouseX,mouseY);
    while(dist(mouseX,mouseY,last.x,last.y)>=20){
      PVector v=PVector.sub(pt,last);
      v.normalize();
      v.mult(20);
      v.add(last);
      list.add(v);
      last=v;
    }
}
