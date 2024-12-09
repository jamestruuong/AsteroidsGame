class Star{
  private int myX, myY, myColor;
  public Star() {
   myX = (int)(Math.random()*500);
   myY = (int)(Math.random()*500);
   myColor = color(255,255,255);
  }
  public void show(){
   noStroke();
   fill(myColor);
   ellipse(myX, myY, 10, 10);
  }
}
