
class Background {
  PImage bg1;
  PImage start1, start2;
  PImage end1, end2;
  //int playingBg1x=0;
  Background() {
    this.bg1 = loadImage("img/background.png");

    this.start1 = loadImage("img/start1.png");
    this.start2 = loadImage("img/start2.png");

    this.end1 = loadImage("img/end1.png");
    this.end2 = loadImage("img/end2.png");
    
  }
  void draw() {
    if (state == GameState.START) {
      if (second() % 2 == 1 ) {
        image(start1, 0, 0);
      } else {
        image(start2, 0, 0);
      }
    } else if (state == GameState.PLAYING) {
      if (backgroundMovie.available()==true){
      backgroundMovie.read();
      image(backgroundMovie,0,0);
      bgMusic.play();
      }
      //image(bg1, 0, 0);
    } else if (state == GameState.END) {
      if (second() % 2 == 1 ) {
        image(end1, 0, 0);
      } else {
        image(end2, 0, 0);
      }
    }
  }
}

//test