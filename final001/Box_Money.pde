class Box_Money extends Box{
  Box_Money(float x, float y, int life, int boxWidth, int boxHeight){
    super(x,y,1,50,50);
    super.boxImg=loadImage("img/coin1.png");
  }
}