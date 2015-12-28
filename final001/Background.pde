class Background {
  PImage bg1;
  Background() {
    this.bg1 = loadImage("img/background.png");
  }

  void draw() {
    image(bg1, 0, 0);
  }
}

//test
