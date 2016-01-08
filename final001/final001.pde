import ddf.minim.*;
import processing.video.*;

class GameState
{
  static final int START = 0;
  static final int PLAYING = 1;
  static final int PLAYING2 =2;
  static final int PLAYING3 =3;
  static final int END = 4;
  static final int END2 = 5;
  static final int END3 = 6;
  static final int END4 = 7; 
}

Minim minim;
AudioSample coinMusic;
AudioSample poisonMusic;
AudioSample speedDownMusic;
AudioSample speedUpMusic;
AudioPlayer bgMusic;
Movie backgroundMovie;
int state = GameState.START;
int boxCount =9;
int score;
Box[][] boxs=new Box[boxCount][boxCount];
Background bg;
Fighter fighter;
Hp hpDisplay;
PImage end;

//Blackhole hole = new Blackhole();
//Blackhole hole1 = new Blackhole();
//int a =int(random(9));
//int b =int(random(9));

void setup() {
  size(1280, 720, P2D);
  end =loadImage("img/end_0_hover.png");
  
  backgroundMovie =new Movie(this, "video/background2.mov");
  minim = new Minim(this);
  bgMusic = minim.loadFile("music/Think.wav");
  coinMusic = minim.loadSample("music/coin.wav", 128);
  poisonMusic = minim.loadSample("music/Dark hit, power down.wav");
  speedDownMusic =minim.loadSample("music/speedDown.wav");
  speedUpMusic =minim.loadSample("music/speedUp.wav");
  //coinMusic.setGain(0.1);
  backgroundMovie.loop();
  bg = new Background();
  fighter = new Fighter();
  addBox();
  addBox1();
  hpDisplay = new Hp();
  frameRate(60);
}

void draw() {
  if (state == GameState.START) {
    bg.draw();
  } else if (state == GameState.PLAYING) {
    
    bg.draw();
    fighter.draw();
    if (mousePressed==true && fighter.hp>=0) {
      fighter.Control(atan2(mouseY-fighter.y, mouseX-fighter.x));
      fighter.t=1;
      fighter.a=1;
      if (fighter.hp>=0) {
        fighter.hp--;
      }
    }
    
    hpDisplay.updateWithFighterHP(fighter.hp);
    for (int i =0; i<boxCount; ++i) {
      for (int j =0; j<boxCount; ++j) {
        if (boxs[i][j]!=null) {
          boxs[i][j].draw();
          if (boxs[i][j].isCollideWithFighter()) {
            boxs[i][j].Fuction();
            boxs[i][j].MusicPlay();
            boxs[i][j]=null;
          }
        }
      }
    }
    //hole.setup(a,b);
    //hole.draw();
  }
}

boolean isHit(float ax, float ay, float aw, float ah, float bx, float by, float bw, float bh)
{
  boolean collisionX = (ax + aw >= bx) && (bx + bw >= ax);
  boolean collisionY = (ay + ah >= by) && (by + bh >= ay);
  float distance = dist(ax, ay, bx, by);
  boolean New=distance<=50;
  return collisionX && collisionY && New;
}

void keyReleased() {
  if (key == ENTER) {
    switch(state) {
    case GameState.START:
    case GameState.END:
      state = GameState.PLAYING;
    default : 
      break ;
    }
  }
}