public class Pen {
  private color penColor;
  private float size;

  public Pen(color initPenColor, float initSize) {
    penColor = initPenColor;
    size = initSize;
  }

  public color getPenColor() {
    return penColor;
  }

  public float getSize() {
    return size;
  }

  public void setPenColor(color newColor) {
    penColor = newColor;
  }

  public void setSize(float newSize) {
    size = newSize;
  }
}

public void drawStuff() {
  if (mouseX > 350 + pen.getSize()/2 && mouseX < 1050 - pen.getSize()/2 && mouseY > 51 + pen.getSize()/2 && mouseY < 800 - pen.getSize()/2) {
    noStroke();
    fill(pen.getPenColor());
    circle(mouseX, mouseY, pen.getSize());
  }
}
