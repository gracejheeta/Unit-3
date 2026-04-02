// Checkpoint 2

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
  size(1200, 800);
  background(cream);
} // end setup

void draw () {
  //canvas
  strokeWeight(3);
  fill(canvas);
  rect(450, 50, 700, 700);
  
  //buttons
  rectButton(50, 50, red, 0);
  rectButton(50, 200, orange, 0);
  rectButton(50, 350, yellow, 0);
  rectButton(50, 500, lightGreen, 0);
  rectButton(50, 650, darkGreen, 0);
  rectButton(250, 50, cyan, 0);
  rectButton(250, 200, lightBlue, 0);
  rectButton(250, 350, darkBlue, 0);
  rectButton(250, 500, purple, 0);
  rectButton(250, 650, magenta, 0);
} // end draw

void rectButton (int x, int y, color Color, color Stroke) {
  
  if ( mouseX > x && mouseX < x + 150 && mouseY > y && mouseY < y + 100 ) {
    
    Stroke = Color;
    
    if (mousePressed == true) {
      canvas = Color; 
    }
  }
  
  stroke(Stroke);
  fill(Color);
  rect(x, y, 150, 100);
  
} // end rectButton
