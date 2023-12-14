class Bullet extends Floater{
  float accel;
  
  public Bullet(Spaceship theShip){
    myCenterX = theShip.getCenterX();
    myCenterY = theShip.getCenterY();
    myXspeed = theShip.getMyXSpeed(); 
    myYspeed = theShip.getMyYSpeed();  
    myPointDirection = theShip.getMyPointDirection();
    accelerate(0.6);
  }
  
  public double getCenterX(){
     return myCenterX;
   }
   
   public double getCenterY(){
     return myCenterY;
   }
  
  public void show(){
    noStroke();
    fill(250, 0, 0);
    ellipse((float) myCenterX, (float) myCenterY, 10.0, 10.0);
  }
}
