float ballY=0;
float []x=new float[5];
float []y=new float[5];
float []vx=new float[5];
float []vy=new float[5];
void ball(){
  fill(ballcolor1,255);
  lights();
  pushMatrix();
    translate(mouseX,950,ballY);
    noStroke();
    sphere(20);
    if(board[0].y>880) st=1;
    if(board[0].y<880&&st==0){
      ballY=100;
    }
    else{
      ballY=100*sin(radians(frameCount*6));
    }
    if(ballY<0) ballY=-ballY;
  popMatrix();
}
void balls(){
  fill(ballcolor1,255);
  pushMatrix();
    translate(225,350,0);
    noStroke();
    sphere(20);
  popMatrix();
}
void ballp0(){
  for(int i=0;i<5;i++){
    x[i]+=vx[i];
    y[i]-=vy[i];
    if(x[i]>450 || x[i]<0) vx[i]=-vx[i];
    if(y[i]>800 || y[i]<0) vy[i]=-vy[i];
  }
}
