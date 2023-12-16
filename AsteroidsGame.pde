ArrayList <Bullet> shots = new ArrayList <Bullet>();
Spaceship bob = new Spaceship();
Star[] one = new Star[150];
ArrayList <Asteroid> rockArr = new ArrayList <Asteroid> ();
Asteroid rocky[] = new Asteroid[15];

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
  
  for (int i = rockArr.size() - 1; i >= 0; i--) {
    Asteroid asteroid = rockArr.get(i);
    asteroid.move();
    asteroid.show();
    
    float d = dist((float) bob.getCenterX(), (float) bob.getCenterY(), (float) asteroid.getRockCenterX(), (float) asteroid.getRockCenterY());
    
    if (d < 50) {
      rockArr.remove(i);
    }
  }
  
  for (int i = shots.size() - 1; i >= 0; i--) {
    Bullet bullet = shots.get(i);
    bullet.move();
    bullet.show();
  }
  
  for (int i = rockArr.size() - 1; i >= 0; i--) {
    Asteroid asteroid = rockArr.get(i);
    for (int j = shots.size() - 1; j >= 0; j--) {
      Bullet bullet = shots.get(j);
      float astBullDist = dist((float) bullet.getCenterX(), (float) bullet.getCenterY(), (float) asteroid.getRockCenterX(), (float) asteroid.getRockCenterY());
        
      if (astBullDist < 20) {
        rockArr.remove(i);
        shots.remove(j);
        break;
      }
    }
  }
}


public void keyPressed() {
    if (key == 'h') { // hyperspace
    bob.hyperspace();
  } else if (key == 'r') { // turn right
    bob.turn(10);
  } else if (key == 'l') { // turn left
    bob.turn(-10);
  } else if (key == 'a') { // accelerate
    bob.getMyPointDirection();
    bob.accelerate(1);
  } else if (key == 'b'){
    shots.add(new Bullet(bob));
  }
}
