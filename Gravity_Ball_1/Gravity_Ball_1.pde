float x, y, gravity;
float velX, velY;
float accX, accY;
int sz=20;

void setup() {
  size(800, 600);
  x=width/2;
  y=height/2;
  gravity=1;
  velX=0;
  velY=0;
}

void draw() {
  background(0);
  fill(random(255),random(255),random(255));
  ellipse(x,y,sz,sz);
  velY+=gravity;
  x+=velX;
  y+=velY;
  if(y+sz/2>=height || y-sz/2<=0){
    velY*=-1;
  }
  
}

