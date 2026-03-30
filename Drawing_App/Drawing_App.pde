// Grace
// Drawing app Project

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
  button(100, 100, red);
  button(100, 250, orange);
  button(100, 400, yellow);
  button(100, 550, lightGreen);
  button(100, 700, darkGreen);
  button(250, 100, cyan);
  button(250, 250, lightBlue);
  button(250, 400, darkBlue);
  button(250, 550, purple);
  button(250, 700, magenta);
  
}

void button (int x, int y, color Color) {
  fill(Color);
  ellipse(x, y, 100, 100); 
  
  if (dist(x, y, mouseX, mouseY) < 50) {
    if (mousePressed == true) {
    canvas = Color;
    }
  }

}

  
