color [] blackspace = new color[1200*783];
int a(int x,int y){
  return x+y*width;
}
void blackS(){
  //if(frameCount==1){
    loadPixels();
    for(int i=0; i<1200*783; i++){
      blackspace[i] = pixels[i];
      if(i==30) println(pixels[a(100,690)]);
    }
  //}
}
boolean P1touch(int P1x,int P1y){//判斷顏色
  if(scene==1){if(blackspace[a(P1x,P1y)] != #000000) return true;}
  if(scene==2){if(blackspace[a(P1x,P1y)] != #C1E9F2) return true;}//-16777216=黑色
  return false;
}
boolean P1FourC(int P1x,int P1y){//判斷P1的四個角
  if(P1touch(P1x,P1y)) return true;
  if(P1touch(P1x+20,P1y)) return true;
  if(P1touch(P1x,P1y+30)) return true;
  if(P1touch(P1x+20,P1y+30)) return true;
  return false;
}
boolean P2touch(int P2x,int P2y){//判斷顏色
  if(scene==1){if(blackspace[a(P2x,P2y)] != #000000) return true;}
  if(scene==2){if(blackspace[a(P2x,P2y)] != #C1E9F2) return true;}
  return false;
}
boolean P2FourC(int P2x,int P2y){//判斷P1的四個角
  if(P2touch(P2x,P2y)) return true;
  if(P2touch(P2x+20,P2y)) return true;
  if(P2touch(P2x,P2y+30)) return true;
  if(P2touch(P2x+30,P2y+30)) return true;
  return false;
}
