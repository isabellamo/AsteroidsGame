class Star{
   private int starColor;
   private int xCoord;
   private int yCoord;

   Star() {
     starColor = 250;
     xCoord = (int)(Math.random() * width);
     yCoord = (int)(Math.random() * height);
   }

   // getters
   public int getStarColor(){
     return starColor;
   }

   public int getXCoord(){
      return xCoord;
   }

   public int getYCoord(){
      return yCoord;
   }

   // setters
   public void setStarColor(int num){
      starColor = num;
   }

   public void setXCoord(int num){
      xCoord = num;
   }

   public void setYCoord(int num){
      yCoord = num;
   }
   
   public void show(){
     fill(starColor);
     ellipse((float) xCoord, (float) yCoord, 3, 3);
   }
}
