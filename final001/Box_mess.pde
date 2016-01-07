class Box_mess extends Box{
  Box_mess(float x, float y, int life, int boxWidth, int boxHeight){
    super(x,y,1,50,50);
    super.boxImg=loadImage("img/4_mess.png");
  }
  void Fuction(){
  if (isHit(this.x, this.y, this.boxWidth, this.boxHeight, fighter.x-25, fighter.y-25, 51, 51)==true) {
      fighter.speedX=-fighter.speedX;
      fighter.speedY=-fighter.speedY;
    }
  }
  void MusicPlay(){speedDownMusic.trigger();}
  
}