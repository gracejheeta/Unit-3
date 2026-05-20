void intro() {
  background(white);
  
  // Start button
  strokeWeight(5);
  fill(white);
  tactileRect(300, 450, 200, 100, black, yellow);
  fill(black);
  text("START", 400, 500);
}

void introClicks() {
  // if mouse is inside start button
  if (mouseX > 300 && mouseX < 500 && mouseY > 450 && mouseY < 500) {
    mode = GAME;
  }
}
