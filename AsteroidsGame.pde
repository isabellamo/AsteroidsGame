Spaceship bob = new Spaceship();
Star one[] = new Star[150];

public void setup(){
  size(500, 500);
 
  for (int i = 0; i < one.length; i++){
     one[i] = new Star();
  }
}

public void draw(){
  background(0);
  for (int i = 0; i < one.length; i++){
    one[i].show();
  }
    
  bob.show();
  bob.move(); 
}


public void keyPressed(){
  if (key =='h'){ // hyperspace
    bob.hyperspace();
  } else if (key == 'v'){ // speed
    bob.setXspeed(2);
  } else if (key == 'r'){ // turn right
    bob.turn(1);
    bob.setYspeed(1);
  } else if(key == 'l'){ // turn left
    bob.turn(-1);
    bob.setYspeed(-1);
  } else if (key == 'a'){ // accelerate
    bob.accelerate(1.5);
  }
}
