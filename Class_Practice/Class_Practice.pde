Ball b;

void setup() {
  size(800, 600);
  b= new Ball();
}

void draw() {
  background(0);
  b.move();
  b.bounce();
  b.display();
}

class Ball {
  PVector loc, vel, acc;
  float sz;

  Ball() {
    loc = new PVector(width/2, height/2);
    vel = PVector.random2D();
    acc = new PVector(0, 0);
    sz = random(100, 250);
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
    fill(random(255),random(255),random(255));
    ellipse(loc.x, loc.y, sz, sz);
  }
}

