class Spaceship extends Floater {  
  public Spaceship(){
    corners = 4; 
    myColor = 250;  
    myCenterX = 125;
    myCenterY = 125; 
    xCorners = new int[] {(int) myCenterX - 8, (int) myCenterX + 16, (int) myCenterX - 8, (int) myCenterX - 2};
    yCorners = new int[] {(int) myCenterY - 8, (int) myCenterY, (int) myCenterY + 8, (int) myCenterY}; 
    myXspeed = 0; 
    myYspeed = 0;  
    myPointDirection = 0;
  }
   
   // getters
   public int getCorners(){
     return corners;
   }
   
   public int getColor(){
     return myColor;
   }
   
   public double getCenterX(){
     return myCenterX;
   }
   
   public double getCenterY(){
     return myCenterY;
   }
   
   public int[] getXcorners(){
     return xCorners;
   }
   
   public int[] getYcorners(){
     return yCorners;
   }
   
   public double getMyXSpeed(){
     return myXspeed;
   }
   
   public double getMyYSpeed(){
     return myYspeed;
   }
   
   public double getMyPointDirection(){
     return myPointDirection;
   }
   
   // setters
   public void setCorners(int num){
      corners = num;
   }
   
   public void setColor(int shade){
     myColor = shade;
   }
   
   public void setCenters(double x, double y){
     myCenterX = x;
     myCenterY = y;
   }
   
   public void setCornerArrays(int[] array1, int[] array2){
     for (int i = 0; i < array1.length; i++){
       xCorners[i] = array1[i];
       yCorners[i] = array2[i];
     }
   }
   
   public void setMySpeed(double x, double y){
     myXspeed = x;
     myYspeed = y;
   }
   
   public void setMyPointDirection(double direction){
     myPointDirection = direction;
   }
 
  // other methods
  public void hyperspace(){
    myCenterX = (int)(Math.random() * width / 2);
    myCenterY = (int)(Math.random() * height / 2);
    xCorners = new int[] {(int) myCenterX - 8, (int) myCenterX + 16, (int) myCenterX - 8, (int) myCenterX - 2};
    yCorners = new int[] {(int) myCenterY -8, (int) myCenterY, (int) myCenterY + 8, (int) myCenterY}; 
    myXspeed = 0; 
    myYspeed = 0;
    
  }
 
  public void setXspeed(double x){
    myXspeed = x;
  }
  
  public void setYspeed(double y){
    myYspeed = y;
  }
}
