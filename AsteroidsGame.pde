Spaceship bob = new Spaceship();
Star[] one = new Star[150];
ArrayList<Asteroid> rockArr = new ArrayList<Asteroid>();

public void setup() {
  size(500, 500);

  for (int i = 0; i < 20; i++) {
    Asteroid asteroid = new Asteroid(); // Assuming Asteroid is the correct class
    rockArr.add(asteroid);
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

  for (int i = rockArr.size() - 1; i >= 0; i--) {
    Asteroid asteroid = rockArr.get(i);
    asteroid.move();
    asteroid.show();
    
    float d = dist((float) bob.getCenterX(), (float) bob.getCenterY(), (float) asteroid.getRockCenterX(), (float) asteroid.getRockCenterY());
    if (d < 20) {
      rockArr.remove(i);
    }
  }

  bob.show();
  bob.move();
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
