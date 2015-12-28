class GameState
{
}

class DirectionControl
{
}

class BoxType
{
} //The box is boundary

//int state = GameState;
Background bg;
Fighter fighter;

void setup() {
  size(1280, 720);

  bg = new Background();
  fighter = new Fighter();
}
void draw() {

  bg.draw();
  fighter.draw();
  if (mousePressed==true) {
    fighter.Control(atan2(mouseY-fighter.y, mouseX-fighter.x));
    fighter.t=1;
    fighter.a=1;
    //fighter.A=atan2(mouseY-fighter.y, mouseX-fighter.x);
  }
}