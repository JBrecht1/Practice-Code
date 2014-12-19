/////////////////////////////////
////////FIREWORK CLASS//////////
///////////////////////////////
class Fireworks{
  ArrayList <Particle> particle= new ArrayList <Particle>();
  PVector origin;
  
  Fireworks(PVector location){
    origin=location.copy();
    particle= new ArrayList<Particle>();
  }
  
  void addParticle(){
    particle.add(new Particle(origin));
  }
  void run(){
    for(int i=particle.size()-1;i>=0;i--){
      Particle p=particles.get(i);
      p.run();
      if(p.byebye()){
        particle.remove(i);
      }
    }
  }
}

/////////////////////////////////
////////FIREWORK CODE///////////
///////////////////////////////
ArrayList <Particle> particle= new ArrayList <Particle>();

void setup() {
  size(800, 600);
}

void draw() {
  background(0);
  particle.add(new Particle());
  for (int i=particle.size ()-1; i>=0; i--) {
    Particle p= particle.get(i);
    p.display();
    p.move();
    p.dying();
    if (p.byebye()) {
      particle.remove(i);
    }
  }
}


void mousePressed() {
}

////////////////////////////////
////////PARTICLE CLASS//////////
////////////////////////////////
class Particle {
  PVector loc, vel, acc;
  float sz;
  float life;
  float decay;
  float fading;

  Particle() {
    loc= new PVector(mouseX, mouseY);
    vel= new PVector(random(-3, 3), random(-3, 3));
    acc= new PVector(0, .01);
    sz= random(1, 5);
    life=240;
    decay=2;
  }

  void display() {
    noStroke();
    fill(random(255), random(255), random(255), life);
    ellipse(loc.x, loc.y, sz, sz);
  }

  void move() {
    loc.add(vel);
    vel.add(acc);
  }

  void dying() {
    life-=decay;
  }

  boolean byebye() {
    if (life<0) {
      return true;
    } else {
      return false;
    }
  }
}

