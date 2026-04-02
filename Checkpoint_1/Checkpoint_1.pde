// Grace
// Checkpoint 1

//Colors
color cream = #F5EED2;
color red = #FF0000;
color orange = #FF9900;
color yellow = #FFF700;
color lightGreen = #8BFF86;
color darkGreen = #08B200;
color cyan = #00FFF9;
color lightBlue = #4BBBFF;
color darkBlue = #0017FC;
color purple = #6900FF;
color magenta = #D400FF;
color canvas = #FFFFFF;

void setup () {
  size(1100, 800);
  background(cream);
}

void draw () {
  //canvas
  strokeWeight(3);
  fill(canvas);
  square(350, 50, 700);

  //buttons
  button(100, 100, red, 0);
  button(100, 250, orange, 0);
  button(100, 400, yellow, 0);
  button(100, 550, lightGreen, 0);
  button(100, 700, darkGreen, 0);
  button(250, 100, cyan, 0);
  button(250, 250, lightBlue, 0);
  button(250, 400, darkBlue, 0);
  button(250, 550, purple, 0);
  button(250, 700, magenta, 0);
}

void button (int x, int y, color Color, color Stroke) {

  if (dist(x, y, mouseX, mouseY) < 50) {

    Stroke = Color;

    if (mousePressed == true) {
      canvas = Color;
    }
  }

  stroke(Stroke);
  fill(Color);
  ellipse(x, y, 100, 100);
} // end button
