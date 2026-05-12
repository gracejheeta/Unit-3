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
color pink = #FFC4DE;
color white = #FFFFFF;
color black = #000000;

color lineColor;
color sliderColor = black;

// Slider variables
float sliderX = 525;
float sliderSize;
float stampSliderSize;

// Stamp images
PImage kingJulien;
boolean kingJulienOn = false;

PImage clover;
boolean cloverOn = false;

void setup() {
  size(1100, 900);
  background(cream);
  kingJulien = loadImage("kingjulien.png");
  clover = loadImage("clover.png");

  // Canvas
  fill(255);
  strokeWeight(5);
  square(350, 150, 700);
} // End setup ============================================================

void draw() {
  // Background behind buttons
  fill(cream);
  stroke(cream);
  rect(0, 0, 320, height);

  // buttons
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
  button(170, 840, black, 0);

  // Rect under slider
  fill(cream);
  stroke(cream);

  // Rects to cover up edges
  // top
  rect(340, 50, 1050, 95);
  //left
  rect(300, 0, 45, 900);
  //bottom
  rect(350, 855, 700, 50);
  // right
  rect(1055, 150, 50, 750);

  // Borders around canvas
  noFill();
  strokeWeight(5);
  stroke(black);
  square(350, 150, 700);

  // Slider
  stroke(black);
  line(350, 75, 700, 75);
  fill(sliderColor);
  rectTactile(350, 50, 400, 50, black, yellow);
  circle(sliderX, 75, sliderSize);
  sliderSize = map(sliderX, 350, 700, 10, 50);

  // King Julien Stamp
  rectTactile(850, 30, 75, 75, black, yellow);
  fill(255);
  rect(850, 30, 75, 75);
  image(kingJulien, 850, 35, 75, 75);

  // Clover Stamp
  rectTactile(765, 20, 75, 110, black, yellow);
  rect(765, 20, 75, 110);
  image(clover, 765, 25, 75, 105);

  // New button
  fill(255);
  rectTactile(950, 10, 130, 30, black, yellow);
  rect(950, 10, 130, 30);
  fill(black);
  text("NEW", 1005, 30);

  // Save button
  fill(255);
  rectTactile(950, 50, 130, 30, black, yellow);
  rect(950, 50, 130, 30);
  fill(black);
  text("SAVE", 1005, 70);

  // Load buton
  fill(255);
  rectTactile(950, 90, 130, 30, black, yellow);
  rect(950, 90, 130, 30);
  fill(black);
  text("LOAD", 1005, 110);

  // Indicator
  fill(pink);
  stroke(black);
  rect(650, 860, 100, 30);
  fill(black);

  if (kingJulienOn) {
    text("JULIEN", 680, 880, 25);
  } else if (cloverOn) {
    text("CLOVER", 680, 880, 25);
  } else {
    text("COLORS", 680, 880, 25);
  }
} // End draw ===============================================================

void button (int x, int y, color Color, color Stroke) {
  if (dist(x, y, mouseX, mouseY) < 50) {

    Stroke = white;

    if (mousePressed == true) {
      lineColor = Color;
      sliderColor = Color;
    }
  }

  strokeWeight(5);
  stroke(Stroke);
  fill(Color);
  ellipse(x, y, 100, 100);
} // End button ========================================================

void circleTactile (int x, int y, int r, color stroke) {
  if ( dist(x, y, mouseX, mouseY) < r ) {
    stroke(stroke);
  }
} // end circleTactile ========================================================


void rectTactile(int x, int y, int w, int h, color stroke, color newStroke) {
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    stroke(newStroke);
  } else {
    stroke(stroke);
  }
} // end rectTactile ================================================================

void mouseDragged() {

  controlDrawing();

  // Slider
  controlSlider();
}

void mousePressed() {
  controlSlider();

  // toggle stamps
  if (mouseX > 800 && mouseX < 930 && mouseY > 5 && mouseY < 135) {
    kingJulienOn = !kingJulienOn;
    cloverOn = false;
  }

  if (mouseX > 765 && mouseX < 840 && mouseY > 20 && mouseY < 130) {
    cloverOn = !cloverOn;
    kingJulienOn = false;
  } // end toggle stamps ===================================================


  controlDrawing();
}


void mouseReleased() {
  // New button
  if (mouseX > 950 && mouseX < 1080 && mouseY > 10 && mouseY < 40) {
    stroke(black);
    strokeWeight(5);
    fill(white);
    square(350, 150, 700);
  }

  // Save button
  if (mouseX > 950 && mouseX < 1080 && mouseY > 50 && mouseY < 80) {
    selectOutput("Choose a name for your new image file!", "saveImage");
  }

  // Load button
  if (mouseX > 950 && mouseX < 1080 && mouseY > 90 && mouseY < 120) {
    selectInput("Pick an image to load!", "openImage");
  }
}

void saveImage(File f) {
  if (f != null) {
    PImage canvas = get(350, 150, 700, 700);
    canvas.save(f.getAbsolutePath());
  }
}

void openImage(File f) {
  if (f != null) {
    int n = 0;
    while (n < 100) {
      PImage pic = loadImage(f.getPath()) ;
      image(pic, 350, 150);
      n = n + 1;
    }
  }
}

void controlSlider() {
  if (mouseX > 350 && mouseX < 700 && mouseY < 125 && mouseY > 75) {
    sliderX = mouseX;
  }
}

void controlLines() {
  strokeWeight(sliderSize);
  stroke(lineColor);
  if (mouseX > 350 + sliderSize/2 && mouseX < 1050 - sliderSize/2 && mouseY > 150 + sliderSize/2 && mouseY < 850 - sliderSize/2) {
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
}

void controlDrawing() {
  if (kingJulienOn) {
    stampSliderSize = map(sliderX, 350, 700, 50, 150);

    if (mouseX > 350 && mouseX < 1050 && mouseY > 150 && mouseY < 850) {
      // stamp
      image(kingJulien, mouseX - stampSliderSize/2, mouseY - stampSliderSize/2, stampSliderSize, stampSliderSize);
    }
  } else if (cloverOn) {
    stampSliderSize = map(sliderX, 350, 700, 50, 150);

    if (mouseX > 350 && mouseX < 1050 && mouseY > 150 && mouseY < 850) {
      // stamp
      image(clover, mouseX - stampSliderSize/2, mouseY - stampSliderSize/2, stampSliderSize, stampSliderSize);
    }
  } else {
    controlLines();
  }
}
