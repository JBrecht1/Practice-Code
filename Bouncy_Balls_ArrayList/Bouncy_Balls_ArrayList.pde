ArrayList<BouncyBall> ball= new ArrayList<BouncyBall>();
int maxBalls=100;

void setup() {
  size(displayWidth, displayHeight);
  textSize(50);
  background(0);
  ball.add(new BouncyBall(30, 10));
}

void draw() {
  background(0);
  fill(255, 0, 0);
  text(ball.size(),20,50);
  for (int i=1; i<ball.size (); i++) {
    BouncyBall b=ball.get(i);
    b.display();
    b.move();
    b.wallBounce();
  }
  fill(255);
  if (ball.size()>maxBalls) {
    ball.remove(0);
  }
}


void mousePressed() {
  ball.add(new BouncyBall(30,10));
}

