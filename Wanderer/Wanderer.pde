float locx, locy;
float velx, vely;
float accx, accy;
int sz=25;

void setup() {
  background(0);
  noStroke();
  size(800, 600);
  locx=width/2;
  locy=height/2;
  velx=random(-1, 1);
  vely=random(-1, 1);
  colorMode(HSB, 360, 100, 100, 100);
}

void draw() {
  accx=random(-0.05, 0.05);
  accy=random(-0.05, 0.05);
  fill(frameCount%360, 100, 100);
  velx+=accx;
  vely+=accy;
  locx+=velx;
  locy+=vely;
  ellipse(locx, locy, sz, sz);
  if (locx-sz/2>width) {
    locx=-sz/2;
  }
  if (locx+sz/2<0) {
    locx=width+sz/2;
  }
  if (locy-sz/2>height) {
    locy=-sz/2;
  }
  if (locy+sz/2<0) {
    locy=height+sz/2;
  }
}

