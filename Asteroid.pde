class Asteroid extends Floater{
  private double rotSpeed;
  
  public Asteroid(){
    corners = 6; 
    myColor = 100;
    xCorners = new int[] {(int) myCenterX - 11, (int) myCenterX + 7, (int) myCenterX + 13, (int) myCenterX + 6, (int) myCenterX - 11, (int) myCenterX - 5};
    yCorners = new int[] {(int) myCenterY - 8, (int) myCenterY - 8, (int) myCenterY, (int) myCenterY + 10, (int) myCenterY + 8, (int) myCenterY}; 
    myCenterX = 50;
    myCenterY = 50; 
    myXspeed = (Math.random() * 2) - 1;
    myYspeed = (Math.random() * 2) - 1;  
    myPointDirection = 0; 
    rotSpeed = 0.5;
  }
  
  public double getRockCenterX(){
     return myCenterX;
   }
   
   public double getRockCenterY(){
     return myCenterY;
   }
  
  public void move(){
    turn(rotSpeed);
    super.move();
  }
}  
