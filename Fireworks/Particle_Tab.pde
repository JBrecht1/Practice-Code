////////////////////////////////
////////PARTICLE CLASS//////////
////////////////////////////////
class Particle {
  //Initialize variables of class
  PVector loc, vel, acc;
  float sz;
  float life;
  float decay;
  float fading;
//Declare variables (give them parameters)
  Particle() {
    loc= new PVector(mouseX, mouseY);
    vel= new PVector(random(-3, 3), random(-3, 3));
    acc= new PVector(0, .1);
    sz= random(1, 5);
    //How long they will be displayed on the screen
    life=240;
    //Rate at which they disappear
    decay=2;
  }
//Complete the following when the class is displayed
  void display() {
    //Draw the individual ellipses with no outlines 
    noStroke();
    //Fill the ellipses randomly with a transparency of "life"
    fill(random(255), random(255), random(255), life);
    ellipse(loc.x, loc.y, sz, sz);
  }
//Complete the following when the class objects move
  void move() {
    //Add velocity to location to change the location
    loc.add(vel);
    //Add acceleration to velocity to change the speed
    vel.add(acc);
  }
//Complete the following to make the particles fade 
  void dying() {
    //Life decreasing by the rate of decay
    life-=decay;
  }
//A true or false statement regarding the objects time on-screen
  boolean byebye() {
    //If it has no more life, then it is dead (removed)
    if (life<0) {
      return true;
      //If it still has life left, then it is alive (displayed) 
    } else {
      return false;
    }
  }
}

