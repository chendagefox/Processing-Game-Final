class Box_topper extends Box{
  Box_topper(float x, float y, int life, int boxWidth, int boxHeight){
    super(x,y,1,50,50);
    super.boxImg=loadImage("img/topper.png");
  }
  void Fuction(){
  if (isHit(this.x, this.y, this.boxWidth, this.boxHeight, fighter.x-25, fighter.y-25, 51, 51)==true) {
     end = loadImage("img/end_3.png");
   }
  }
 
  void MusicPlay(){poisonMusic.trigger();}
}