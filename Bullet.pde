class Bullet extends Floater{
  Bullet(Spaceship bob){
   myCenterX = bob.getCenterX();
   myCenterY = bob.getCenterY();
   myPointDirection = bob.getPointDirection();
   accelerate(6);
  }
  public void show(){
    fill(255,0,0);
    ellipse((float)myCenterX, (float)myCenterY, 5, 5);
  }
  public void setCenterX(int x) {
    myCenterX = x;
  }
  public int getCenterX(){
    return (int)myCenterX;
  }
  public void setCenterY(int y) {
    myCenterY = y;
  }
  public int getCenterY(){
    return (int)myCenterY;
  }
}
