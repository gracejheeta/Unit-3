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

color stroke = #030000;

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
  button(100, 100, red, stroke);
  button(100, 250, orange, stroke);
  button(100, 400, yellow, stroke);
  button(100, 550, lightGreen, stroke);
  button(100, 700, darkGreen, stroke);
  button(250, 100, cyan, stroke);
  button(250, 250, lightBlue, stroke);
  button(250, 400, darkBlue, stroke);
  button(250, 550, purple, stroke);
  button(250, 700, magenta, stroke);
  
}

void button (int x, int y, color Color, color Stroke) {
  
  if (dist(x, y, mouseX, mouseY) < 50) {
    
    stroke = Color;
    
    if (mousePressed == true) {
      canvas = Color;
    }
  }
  else {
    stroke = 0;
  }
  
  stroke(Stroke);
  fill(Color);
  ellipse(x, y, 100, 100); 

} // end button
  
