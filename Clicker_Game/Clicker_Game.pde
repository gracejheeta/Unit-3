// Grace Jheeta
// Block 1-2
// Thursday May 14, 2026

// Color variables
color black = #000000;
color white = #FFFFFF;

color red = #FF0900;
color orange = #FF9900;
color yellow = #FFF300;
color lightGreen = #8BFF86;
color darkGreen = #08B200;
color cyan = #00FFF9;
color lightBlue = #4BBBFF;
color darkBlue = #0017FC;
color purple = #6900FF;
color magenta = #D400FF;
color pink = #FFC4DE;

// Mode variables
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

void setup() {
  size(800, 800);
  textAlign(CENTER, CENTER);
  mode = INTRO;
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
}
