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
