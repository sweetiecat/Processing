import ddf.minim.*;
Minim minim;
AudioPlayer player1;
void musicset()
{
  minim = new Minim(this);
  player1 = minim.loadFile("music.mp3");
}
void music(){
  player1.play();
}
