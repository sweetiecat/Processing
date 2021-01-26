void tri(){
  for(int i=0;i<list.size()-2;i++){
    PVector P1=list.get(i);
    PVector P2=list.get(i+1);
    float d= dist(P1.x,P1.y,P2.x,P2.y);
    triangle(P1.x,P1.y,P2.x,P2.y,(P1.x+P2.x)/2+d,(P1.y+P2.y)/2+d);
    triangle(P1.x,P1.y,P2.x,P2.y,(P1.x+P2.x)/2-d,(P1.y+P2.y)/2-d);
    
  }
}
