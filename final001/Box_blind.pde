class Box_blind extends Box{
  PImage blindImg;
  Box_blind(float x, float y, int life, int boxWidth, int boxHeight){
    super(x,y,1,50,50);
    super.boxImg=loadImage("img/11-02.png");
    //blindImg =loadImage("img/blind.png");
  }
  void Fuction(){
  if (isHit(this.x, this.y, this.boxWidth, this.boxHeight, fighter.x-25, fighter.y-25, 51, 51)==true) {
    //image(blindImg,fighter.x-1920/2,fighter.y-1080/2);
    fighter.x =random(70,1210);
    fighter.y =random(70,690);
    }
  }
  void MusicPlay(){poisonMusic.trigger();}
}