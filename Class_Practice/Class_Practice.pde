int count=500;
Ball [] b= new Ball [1000];

void setup() {
  size(displayWidth,displayHeight);
  for (int i=0; i<count; i++) {
    b[i]= new Ball();
  }
}

void draw() {
  background(0);
  for (int i=0; i<count; i++) {
    b[i].move();
    b[i].bounce();
    b[i].display();
  }
}

























class Ball {
  PVector loc, vel, acc;
  float sz;

  Ball() {
    loc = new PVector(width/2, height/2);
    vel = PVector.random2D();
    acc = new PVector(0, 0);
    sz = 100;
  }
  void bounce() {
    if (loc.x + sz/2 > width || loc.x - sz/2 < 0) {
      vel.x *= -1;
    }
    if (loc.y + sz/2 > height || loc.y - sz/2 < 0) {
      vel.y *= -1;
    }
  }
  void move() {
    vel.add(acc);
    loc.add(vel);
  }
  void display() {
    fill(random(255), random(255), random(255),75);
    ellipse(loc.x, loc.y, sz, sz);
  }
}

