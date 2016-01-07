class Box_body extends Box{
  Box_body(float x, float y, int life, int boxWidth, int boxHeight){
    super(x,y,1,50,50);
    super.boxImg=loadImage("img/hand.png");
  }
  void Fuction(){
  if (isHit(this.x, this.y, this.boxWidth, this.boxHeight, fighter.x-25, fighter.y-25, 51, 51)==true) {
      fighter.hp-=20;
    }
  }
  void MusicPlay(){poisonMusic.trigger();}
}