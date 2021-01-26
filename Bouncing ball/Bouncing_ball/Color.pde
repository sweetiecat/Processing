color ballcolor1;
color ballcolor2;
int cb=1;
int cbb=1;
void colorb(){
  if(cb==1){
    ballcolor1=#FC7A7A;
    ballcolor2=#ff0000;
  }
  if(cb==2){
    ballcolor1=#FFB374;
    ballcolor2=#FF8724;
  }
  if(cb==3){
    ballcolor1=#FFD424;
    ballcolor2=#ffff00;
  }
  if(cb==4){
    ballcolor1=#67DE7D;
    ballcolor2=#00ff00;
  }
  if(cb==5){
    ballcolor1=#6CBCFF;
    ballcolor2=#0000ff;
  }
  if(cb==6){
    ballcolor1=#D9A5FF;
    ballcolor2=#8007D8;
  }
}
void ballc(){
  loadPixels();
  if(pixels[now]==#FC7A7A) cbb=1;
  if(pixels[now]==#FFB374) cbb=2;
  if(pixels[now]==#FFD424) cbb=3;
  if(pixels[now]==#67DE7D) cbb=4;
  if(pixels[now]==#6CBCFF) cbb=5;
  if(pixels[now]==#D9A5FF) cbb=6;
  if(pixels[now]==#ff0005) sr=1;
  if(pixels[now]==#ff0001) sr=2;
  if(pixels[now]==#00B0F0) sr=1;
  cb=cbb;
  colorb();
  ball();
}
