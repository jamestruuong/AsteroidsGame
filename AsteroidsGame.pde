Spaceship bob = new Spaceship();
Star [] galaxy = new Star[200];
ArrayList<Bullet> no = new ArrayList<Bullet>();
ArrayList<Asteroid> yes = new ArrayList<Asteroid>();
public void setup() 
{
  background(0);
  size(500,500);
  for(int i = 0; i < galaxy.length; i++)
  {
  galaxy[i] = new Star();
  }
  for(int i = 0; i<5; i++){
    Asteroid urmom = new Asteroid();
    yes.add(urmom);
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < galaxy.length; i++)
  {
    galaxy[i].show();
  }
  bob.move();
  bob.show();
  fill(255);
  textSize(20);
  text(("Direction:" + (int)bob.getPointDirection()),10,20);
  text(("X:" + bob.getCenterX()),10,40);
  text(("Y:" + bob.getCenterY()),10,60);
  text(("Xspeed:" + (int)bob.getXspeed()),10,80);
  text(("Yspeed:" + (int)bob.getYspeed()),10,100);
  
  for(int i = 0; i < yes.size(); i++){
   yes.get(i).move();
   yes.get(i).show();
   float d = dist(bob.getCenterX(), bob.getCenterY(), yes.get(i).getCenterX(), yes.get(i).getCenterY());
   if(d<=20){
     yes.remove(i);
     i--;
   }
  }
  
  for(int i = no.size()-1; i>=0; i--){
    no.get(i).show();
    no.get(i).move();
    for(int o = yes.size()-1; o>= 0; o--){
      if(dist((float)(no.get(i).myCenterX), (float)(no.get(i).myCenterY), (float)(yes.get(o).myCenterX), (float)(yes.get(o).myCenterY))<=20){
        no.remove(i);
        yes.remove(o);
        break;
      } 
    }
  }
}

public void keyPressed(){
 if(key == 'h'){
   bob.turn(15);
 }
 if(key == 'f'){
  bob.turn(-15); 
 }
 if(key =='t'){
  bob.accelerate(.5); 
 }
 if(key == 'g'){
  bob.accelerate(-0.5); 
 }
  if(key =='v'){
   bob.setXspeed(0);
   bob.setYspeed(0);
   bob.setCenterX((int)(Math.random()*500));
   bob.setCenterY((int)(Math.random()*500));
   bob.setPointDirection((int)(Math.random()*360));
 }
 
 if(key =='y'){
   no.add(new Bullet(bob));
 }
}
