class Star{
   public int starColor;
   public int xCoord;
   public int yCoord;
   
   Star() {
     starColor = 250;
     xCoord = (int)(Math.random() * width);
     yCoord = (int)(Math.random() * height);
   }
   
   public void show(){
     fill(starColor);
     ellipse((float) xCoord, (float) yCoord, 3, 3);
   }
}
