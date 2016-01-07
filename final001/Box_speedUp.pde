class Box_speedUp extends Box{
  Box_speedUp(float x, float y, int life, int boxWidth, int boxHeight){
    super(x,y,1,50,50);
    super.boxImg=loadImage("img/3_speedUp.png");
  }
  void speedDown(){
  if (isHit(this.x, this.y, this.boxWidth, this.boxHeight, fighter.x-25, fighter.y-25, 51, 51)==true) {
      fighter.speedX+=4;
      fighter.speedY+=4;
    }
  }
  void MusicPlay(){speedUpMusic.trigger();}
}