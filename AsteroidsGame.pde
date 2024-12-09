int health = 100;
Spaceship bob = new Spaceship();
Star [] galaxy = new Star[200];
ArrayList <Asteroid> rock = new ArrayList <Asteroid>();
public void setup() 
{
  background(0);
  size(500,500);
  
  for(int i = 0; i < 10; i++){
   Asteroid sue = new Asteroid();
   rock.add(sue);
  }
  
  for(int i = 0; i < galaxy.length; i++)
  {
  galaxy[i] = new Star();
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
  text(("Health:" + health), 10, 120);
  
  for(int i = 0; i < rock.size(); i++){
   rock.get(i).move();
   rock.get(i).show();
   float d = dist(bob.getCenterX(), bob.getCenterY(), 
   rock.get(i).getCenterX(), rock.get(i).getCenterY());
   if(d<30){
     rock.remove(i);
     i--;
     health -= 10;
   }
  }
}

public void keyPressed(){
  //turn right
 if(key == 'h'){
   bob.turn(15);
 }
 if(key == 'f'){
  bob.turn(-15); 
 }
 //accelerate
 if(key =='t'){
  bob.accelerate(.5); 
 }
 //de-accelerate
 if(key == 'g'){
  bob.accelerate(-0.5); 
 }
 //hyperspacec
  if(key =='v'){
   bob.setXspeed(0);
   bob.setYspeed(0);
   bob.setCenterX((int)(Math.random()*500));
   bob.setCenterY((int)(Math.random()*500));
   bob.setPointDirection((int)(Math.random()*360));
 }
}
