class Box {
  //PImage[] boxImgF=new PImage[2];
  PImage boxImg;
  float x = 0;
  float y = 0;
  int boxWidth; 
  int boxHeight;
  int life;

  Box(float x, float y, int life, int boxWidth, int boxHeight) {
    this.x = x;
    this.y = y;
    this.life = life;
    boxImg=loadImage("img/coin_1.png");
    //boxMovie=new Movie(this,"img/coin.gif");
    //for (int i=0; i<2; i++) {
    //  boxImgF[i]=loadImage("img/coin"+(i+1)+".png");
    //}
    this.life=life;
    this.boxWidth=boxWidth;
    this.boxHeight=boxHeight;
  }
  void draw() {
    image(boxImg, x, y);
    //image(boxImgF[n],x,y);
    //if(millis()%100==0){n++;n=n%2;}
  }
  boolean isCollideWithFighter() {
    if (isHit(this.x, this.y, this.boxWidth, this.boxHeight, fighter.x-25, fighter.y-25, 51, 51)==true) {
      return true;
    } else  return false;
  }
}
void addBox()
{
  for (int i =0; i<boxCount; ++i) {
    for (int j =0; j<boxCount; ++j) {
      
      boxs[i][j]=new Box(70*i+335, 70*j+55, 1, 35, 50);
    }
  }
}
void BoxRandom(){
  int[] randoms =new int [5];
  for (int i = 0; i < randoms.length; i ++ ) {
  randoms[i] = int(random(0,9)+1);
}
  
}