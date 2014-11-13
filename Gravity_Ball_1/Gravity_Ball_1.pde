float x, y, gravity;
float velX, velY;
float accX, accY;
int sz=20;

void setup() {
  size(800, 600);
  x=width/4;
  y=height/4;
  gravity=0.75;
  velX=6;
  velY=0;
}

void draw() {
  background(0);
  fill(random(255),random(255),random(255));
  ellipse(x,y,sz,sz);
  velY+=gravity;
  x+=velX;
  y+=velY;
  if(x+sz/2>=width || x-sz/2<=0){
    velX*=-0.9;
  }
  if(y+sz/2>=height || y-sz/2<=0){
    y=height-sz/2;
    velY*=-0.9;
  }
  
}

