/////////////////////////////////
/////PARTICLE A-LIST CLASS//////
///////////////////////////////

class ParticleSystem {
  //Initialize the array list of the class
  ArrayList <Particle> particles= new ArrayList <Particle>();
//Create constructor (Declare particles)
  ParticleSystem() {
    particles = new ArrayList<Particle>();
  }
//Add particles so long as there are less than 100 on-screen
  void addParticles() {
    for (int i=0; i<100; i++) {
      particles.add(new Particle());
    }
  }
//Run the class, display, move, and remove the particles
  void run() {
    for (int i=particles.size ()-1; i>=0; i--) {
      Particle p= particles.get(i);
      p.display();
      p.move();
      p.dying();
      if (p.byebye()) {
        particles.remove(i);
      }
    }
  }
}

