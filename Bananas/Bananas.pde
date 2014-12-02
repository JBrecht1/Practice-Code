int count=1000;
PVector[] loc= new PVector[count];
PVector[] vel= new PVector[count];
PVector[] acc= new PVector[count];
float[] sz= new float [count];
PImage Bananas;
float[] theta= new float [count];


void setup() {
  Bananas= loadImage("Bananas.png");
  size(displayWidth, displayHeight);
  for (int i=0; i<count; i++) {
//    sz[i]=random(1, 2);
    loc[i]=new PVector (random(sz[i], width-sz[i]), random(sz[i], height-sz[i]));
    vel[i]= new PVector (0, random(2, 10));
    acc[i]=new PVector (random(-0.01, 0.01), 0);
    theta[i]=random(TWO_PI);
  }
  //colorMode(HSB, 360, 100, 100, 100);
}

void draw() {
  noStroke();
  fill(0);
  rect(0, 0, width, height);
  //fill(frameCount%360, 100, 100);
  fill(255);
  for (int i=0; i<count; i++) {
    vel[i].add(acc[i]);
    loc[i].add(vel[i]);
    pushMatrix();
    translate(loc[i].x,loc[i].y);
    rotate(theta[i]);
    theta[i]+=.01;
    image(Bananas,loc[i].x, loc[i].y,75,75);
    popMatrix();
    if (loc[i].x+sz[i]/2>width || loc[i].x-sz[i]/2<0) {
      vel[i].x*=-1;
    }
    if (loc[i].y+sz[i]/2>height) {
      loc[i].y=0-sz[i]/2;
    }
  }
}

void mouseReleased() {
  loc[0].set(mouseX, mouseY);
}

