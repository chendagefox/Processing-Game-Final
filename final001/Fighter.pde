class Fighter {
  PImage fighterImg;
  float x = 0;
  float y = 0;
  float speedX = 0;
  float speedY = 0;
  int t=0;
  int a=1;
  float A=0;
  int hp=200;
  Fighter() {
    this.fighterImg = loadImage("img/main.png");
    this.x = 60;
    this.y = height/2;
  }

  void draw() {
    pushMatrix();
    translate(this.x, this.y);
    rotate(A-PI/2);
    imageMode(CENTER);
    image(fighterImg, 0, 0);
    popMatrix();
    imageMode(CORNER);

    if (this.hp<=0) {
      if (t==0) {
        this.speedX=this.speedX*0.9;
        this.speedY=this.speedY*0.9;
      }
      if (t!=0) {
        t=t+a;
      }
      if (t==4) {
        a=-1;
      }
    }

    //if (this.y + speedY < height - this.fighterImg.height/2  && this.y +speedY>this.fighterImg.height/2) {
    //  this.y=this.y+this.speedY;
    //}

    //if (this.x + speedX < width - this.fighterImg.width/2 && this.x +speedX>this.fighterImg.width/2) {
    //  this.x=this.x+this.speedX;
    //}
    this.y=this.y+this.speedY;
    this.x=this.x+this.speedX;
    if (this.y>height || this.y <0) {
      this.y=abs(this.y-height)+this.speedY;
      this.speedY=this.speedY*0.5;
    }
    if (this.x>width || this.x <0) {
      this.x=abs(this.x-width)+this.speedX;
      this.speedX=this.speedX*0.5;
    }
    if (this.hp<=0) {
      fill(255, 255, 255);
      image(end,0,0);
      for(int i=0;i<9;i++){
      for(int j=0;j<9;j++){
      boxs[i][j]=null;
      }}
      //state++;
    }
  }

  void Control(float A) {
    this.speedX=this.speedX-cos(A)*t*0.3;
    this.speedY=this.speedY-sin(A)*t*0.3; 
    this.A=A;
  }
}