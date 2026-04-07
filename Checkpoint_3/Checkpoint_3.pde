// Checkpoint 3

float sliderY = 150;
float radius;
float background;

void setup () {
  size(300, 300);
  stroke(#79BDFF);
  fill(#79BDFF);
}

void draw () {
  background(background, 0, background);
  strokeWeight(5);
  line(150, 50, 150, 250);

  fill(255);
  strokeWeight(0);
  circle(150, sliderY, radius);

  radius = map(sliderY, 50, 250, 10, 60);
  background = map(sliderY, 50, 250, 0, 255);
}

void mouseDragged() {
  controlSlider();
}

void mousePressed() {
  controlSlider();
}

void controlSlider() {
  if (mouseX > 140 && mouseX < 160 && mouseY > 50 && mouseY < 250) {
    sliderY = mouseY;
  }
}
