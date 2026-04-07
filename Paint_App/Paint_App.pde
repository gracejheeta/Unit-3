// Paint App

// Colors
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

float sliderX;

void setup() {
  size(1000, 800);
} // End setup

void draw() {
  
  if (keyPressed) {
    if (key == ' ') {
      rect(100, 100, 200, 50); 
    }
  }
  
} // End draw

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
} // End button

void mouseDragged() {
  controlSlider();
}

void mousePressed() {
  controlSlider();
}

void controlSlider() {
  
}
