PVector []board=new PVector[10];
int []c={0,0,0,0,0,0,0,0,0,0};
int st=0;
void board(){
  background(BG);
  translate(0,175,-800);
  rotateX(radians(65));
  stroke(255);
  for(int i=0;i<10;i++){
    board[i].y+=5;
    if(board[i].y<0) continue;
    fill(ballcolor1,255-board[i].y/2000.0*255);
    if(board[i].y>880){
      if(board[i].x<mouseX&&mouseX<board[i].x+80&&ballY<10&&c[i]==0){
        fill(ballcolor2);
        score++;
        c[i]=1;
      }
      else if(c[i]==0&&ballY<10){
        sr=3;
      }
    } 
    rect(board[i].x,board[i].y,80,80,20);
    if(board[i].y>1350){
      boardagain(i);
    }
  }
  ball();
}
void boardagain(int i){
  board[i].y=-150;
  board[i].x=random(0,380);
  c[i]=0;
}
