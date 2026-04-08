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

float sliderX;

Pen pen = new Pen(0, 50);

void setup() {
  size(1100, 800);
  // Canvas
  fill(255);
  strokeWeight(5);
  square(350, 50, 700);
} // End setup

void draw() {
  // Buttons
  button(95, 100, red, 0);
  button(95, 250, orange, 0);
  button(95, 400, yellow, 0);
  button(95, 550, lightGreen, 0);
  button(95, 700, darkGreen, 0);
  button(245, 100, cyan, 0);
  button(245, 250, lightBlue, 0);
  button(245, 400, darkBlue, 0);
  button(245, 550, purple, 0);
  button(245, 700, magenta, 0);
} // End draw

void button (int x, int y, color Color, color Stroke) {

  if (dist(x, y, mouseX, mouseY) < 50) {

    Stroke = Color;

    if (mousePressed == true) {
      pen.setPenColor(Color);
    }
  }

  strokeWeight(5);
  stroke(Stroke);
  fill(Color);
  ellipse(x, y, 100, 100);
} // End button

void mouseDragged() {
  controlSlider();
  drawStuff();
}

void mousePressed() {
  controlSlider();
  drawStuff();
}

void controlSlider() {
}

void drawStuff() {
  if (mouseX > 350 + pen.getSize()/2 && mouseX < 1050 - pen.getSize()/2 && mouseY > 50 + pen.getSize()/2 && mouseY < 750 - pen.getSize()/2) {
    noStroke();
    fill(pen.getPenColor());
    circle(mouseX, mouseY, pen.getSize());
  }
}
