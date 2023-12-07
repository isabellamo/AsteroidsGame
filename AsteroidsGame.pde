Spaceship bob = new Spaceship();
Star[] one = new Star[150];
ArrayList <Asteroid> rockArr = new ArrayList <Asteroid> ();
Asteroid rocky[] = new Asteroid[25];

public void setup() {
  size(500, 500);
  
  for (int i = 0; i < rocky.length; i++){
    rocky[i] = new Asteroid();
    rockArr.add(rocky[i]);
  }

  for (int i = 0; i < one.length; i++) {
    one[i] = new Star();
  }
}

public void draw() {
  background(0);
  
  for (int i = 0; i < one.length; i++) {
    one[i].show();
  }

  bob.show();
  bob.move();
  
  for (int i = 0; i < rockArr.size(); i++){
    rockArr.get(i).move();
    rockArr.get(i).show();
    float d = dist((float) bob.getCenterX() + 125, (float) bob.getCenterY() + 125, (float) rockArr.get(i).getRockCenterX(), (float) rockArr.get(i).getRockCenterY());
 
    if (d < 50) {
      rockArr.remove(i);
    }
  }
}

public void keyPressed() {
  if (key == 'h') { // hyperspace
    bob.hyperspace();
  } else if (key == 'v') { // speed
    bob.setXspeed(2);
  } else if (key == 'r') { // turn right
    bob.turn(1);
    bob.setYspeed(1);
  } else if (key == 'l') { // turn left
    bob.turn(-1);
    bob.setYspeed(-1);
  } else if (key == 'a') { // accelerate
    bob.accelerate(1.5);
  }
}
