// Checkpoint 3

float sliderX = 150;

void setup () {
  size(300, 300);
  strokeWeight(5);
  stroke(#79BDFF);
  fill(#79BDFF);
}

void draw () {
  background(0);
  
  line(50, 150, 250, 150);
  circle(sliderX, 150, 20);
  
}

void mousePressed() {
  if ( dist(sliderX, 150, mouseX, mouseY) < 10 ) {
    
    sliderX = mouseX; 
  }
}
