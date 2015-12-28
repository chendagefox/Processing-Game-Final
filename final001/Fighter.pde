class Fighter {
  PImage fighterImg;
  float x = 0;
  float y = 0;
  float speedX = 1;
  float speedY = 1;
  int t=0;
  int a=1;
  float A=0;
  Fighter() {
    this.fighterImg = loadImage("img/fighter.png");
    this.x = width/2;
    this.y = height/2;
  }

  void draw() {
    pushMatrix();
    translate(this.x, this.y);
    rotate(A);
    imageMode(CENTER);
    image(fighterImg, 0, 0);
    popMatrix();
    imageMode(CORNER);

    if (this.y + speedY < height - this.fighterImg.height/2  && this.y +speedY>this.fighterImg.height/2) {
      this.y=this.y+this.speedY;
    }

    if (this.x + speedX < width - this.fighterImg.width/2 && this.x +speedX>this.fighterImg.width/2) {
      this.x=this.x+this.speedX;
    }
  }

  void Control(float A) {
    this.speedX=this.speedX-cos(A)*t*0.3;
    this.speedY=this.speedY-sin(A)*t*0.3; 
    if (t==0) {
      this.speedX=this.speedX*0.5;
      this.speedY=this.speedY*0.5;
    }
    if (t!=0) {
      t=t+a;
    }
    if (t==4) {
      a=-1;
    } 
    this.A=A;
  }
}