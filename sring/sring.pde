ArrayList<PVector>list;
void setup(){
  size(500,500);
  list=new ArrayList<PVector>();
}
void draw(){
  background(255);
  for(PVector now:list){
    //ellipse(now.x,now.y,10,10);
  }
  tri();
}
void mousePressed(){
  PVector now= new PVector(mouseX,mouseY);
  list.add(now);
}
void mouseDragged(){
  PVector last=list.get(list.size()-1);
  if(dist(mouseX,mouseY,last.x,last.y)>20){
    PVector now= new PVector(mouseX,mouseY);
    list.add(now);
  }
}
