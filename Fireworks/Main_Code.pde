//Initialize variables
ParticleSystem ps;
PImage NYC;
PImage Ball;

void setup() {
  //Load images
  Ball= loadImage("Ball.png");
  NYC=loadImage("NYC.jpg");
  //Screen size
  size(1024, 681);
  //Declare Particle System ps
  ps= new ParticleSystem();
}

void draw() {
  //Make NYC the background image
  background(NYC);
  //Add text at the top of the screen
  fill(random(255), random(255), random(255));
  textSize(50);
  text("Click for a Happy New Year 2015!", 100, 50);
  //When the mouse is clicked, add particles and display the ball
  if (mousePressed) {
    ps.addParticles();
    //Ball image appears at center of mouse and follows it around
    imageMode(CENTER);
    image(Ball, mouseX, mouseY, 100, 100);
  }
  //Run the particle system even if the mouse is not pressed
  ps.run();
}

