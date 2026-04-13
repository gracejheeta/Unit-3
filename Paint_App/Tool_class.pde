public class Tool {
  // Rect button attributes
  private int x;
  private int y;
  private int Length;
  private int Height;
  private color Color;
  private String tool;
  private boolean show;

  public int getX() {
    return x;
  }

  public int getY() {
    return y;
  }

  public int getLength() {
    return Length;
  }

  public int getHeight() {
    return Height;
  }

  public boolean getShow() {
    return show;
  }

  public void setShow(boolean newShow) {
    show = newShow;
  }

  public void toggleShow() {
    show = !show;
  }

  public Tool (int initX, int initY, int initLength, int initHeight, color initColor, String initTool, boolean initShow) {
    x = initX;
    y = initY;
    Length = initLength;
    Height = initHeight;
    Color = initColor;
    tool = initTool;
    show = initShow;
  }

  public void drawTool() {

    if (show == true) {

      fill(Color);
      rect(x, y, Length, Height);
      fill(0);
      text(tool, x + Length/2, y + Height/2);
    }
  }

  public void click() {
    if (mouseX > getX() && mouseX < getX() + getLength() && mouseY > getY() && mouseY < getY() + getHeight()) {
      show = false;
    }
  }
}
