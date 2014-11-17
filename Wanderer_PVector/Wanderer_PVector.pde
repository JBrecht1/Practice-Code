PVector loc;
PVector vel;
PVector acc;
int sz=50;

void setup() {
  noStroke();
  size(800, 600);
  loc=new PVector(width/2,height/2);
  vel=new PVector(0,0);
  colorMode(HSB, 360, 100, 100, 100);
}

void draw() {
  background(0);
  fill(frameCount%360, 100, 100);
  acc=new PVector(random(-.05,.05),random(-.05,.05));
  vel.add(acc);
  loc.add(vel);
  ellipse(loc.x, loc.y, sz, sz);
  ellipse(loc.y, loc.x, sz, sz);

  if (loc.x-sz/2>width) {
    loc.x=-sz/2;
  }
  if (loc.x+sz/2<0) {
    loc.x=width+sz/2;
  }
  if (loc.y-sz/2>height) {
    loc.y=-sz/2;
  }
  if (loc.y+sz/2<0) {
    loc.y=height+sz/2;
  }
}

