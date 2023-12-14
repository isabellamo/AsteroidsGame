class Spaceship extends Floater {  
  public Spaceship(){
    corners = 4; 
    myColor = 250;
    xCorners = new int[] {(int) myCenterX - 8, (int) myCenterX + 16, (int) myCenterX - 8, (int) myCenterX - 2};
    yCorners = new int[] {(int) myCenterY - 8, (int) myCenterY, (int) myCenterY + 8, (int) myCenterY}; 
    myCenterX = 250;
    myCenterY = 250;
    myXspeed = 0; 
    myYspeed = 0;  
    myPointDirection = 0;
  }
   
   // getters
   public double getCenterX(){
     return myCenterX;
   }
   
   public double getCenterY(){
     return myCenterY;
   }
   
   public double getMyPointDirection(){
     return myPointDirection;  
   }
     
   // setters
   public void setXspeed(double x){
     myXspeed = x;
   }
  
   public void setYspeed(double y){
     myYspeed = y;
   }
 
   // other methods
   public void hyperspace(){
     myCenterX = (int)(Math.random() * width / 2);
     myCenterY = (int)(Math.random() * height / 2);
     //xCorners = new int[] {(int) myCenterX - 8, (int) myCenterX + 16, (int) myCenterX - 8, (int) myCenterX - 2};
     //yCorners = new int[] {(int) myCenterY - 8, (int) myCenterY, (int) myCenterY + 8, (int) myCenterY}; 
     myXspeed = 0; 
     myYspeed = 0;
  }
}
