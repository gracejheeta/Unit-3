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
color white = #FFFFFF;

float sliderX = 550;

// Objects
Pen pen = new Pen(0, 50);
Tool colors = new Tool(100, 100, 100, 50, white, "colors", true);

void setup() {
  size(1100, 900);
  background(cream);
  
  // Canvas
  fill(255);
  strokeWeight(5);
  square(350, 100, 700);

} // End setup

void draw() {
  
  colors.drawTool();
  
  // Buttons
  if (mousePressed && mouseX > colors.x && mouseX < colors.x + colors.Length && mouseY > colors.y && mouseY < colors.y + colors.Height) {
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
  
    colors.setShow(false);
  }
  
  // rect under slider
  noStroke();
  fill(cream);
  rect(340, 5, 750, 91);
  // line of slider
  strokeWeight(5);
  stroke(255);
  line(350, 35, 750, 35);
  // circle of slider
  noStroke();
  fill(pen.getPenColor());
  circle(sliderX, 35, pen.getSize());
  pen.setSize(map(sliderX, 350, 750, 5, 50));
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

void mouseReleased() {
  
}

void controlSlider() {
  if (mouseX > 350 && mouseX < 750 && mouseY > 5 && mouseY < 60) {
    sliderX = mouseX;
  }
}
