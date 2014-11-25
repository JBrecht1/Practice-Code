int count=100;
PVector[] loc= new PVector[count];
PVector[] vel= new PVector[count];
PVector[] acc= new PVector[count];
float[] sz= new float [count];

void setup() {
  size(800, 600);
  for (int i=0; i<count; i++) {
    sz[i]=random(1, 5);
    loc[i]=new PVector (random(sz[i], width-sz[i]), random(sz[i], height-sz[i]));
    vel[i]= PVector.random2D();
    acc[i]=new PVector (0,0);
  }
}

void draw() {
  noStroke();
  fill(0, 20);
  rect(0, 0, width, height);
  fill(0, 0, 255);
  for (int i=0; i<count; i++) {
    vel[i].add(acc[i]);
    loc[i].add(vel[i]);
    for (int j=0; j<count; j++) {
      if (i!=j) {
        if (loc[i].dist(loc[j])<sz[i]/2+sz[j]/2) {
          print(" COLLISION ");
          vel[i]= PVector.sub(loc[i], loc[j]);
          vel[i].setMag(2);
        }
      }
      ellipse(loc[i].x, loc[i].y, sz[i], sz[i]);
      if (loc[i].x+sz[i]/2>width || loc[i].x-sz[i]/2<0) {
        vel[i].x*=-1;
      }
      if (loc[i].y+sz[i]/2>height || loc[i].y-sz[i]/2<0) {
        vel[i].y*=-1;
      }
    }
  }
}

void mouseReleased() {
  loc[0].set(mouseX, mouseY);
}

