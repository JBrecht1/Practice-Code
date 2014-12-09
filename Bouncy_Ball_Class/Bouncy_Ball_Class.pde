int count=100;
BouncyBall[] ball= new BouncyBall[count];
BlackHole bh;

void setup(){
  size(displayWidth,displayHeight);
  for(int i=0;i<ball.length;i++){
    //(size,speed)
    ball[i]= new BouncyBall(random(10,25),random(.5,10));
    bh= new BlackHole();
  }
}
void draw(){
  noStroke();
  fill(0,25);
  rect(0,0,width,height);
  //background(0);
  for(int i=0;i<ball.length;i++){
    ball[i].display();
    ball[i].move();
    ball[i].wallBounce();
    bh.display();
    bh.eat(ball[i]);
    for(int j=0;j<ball.length;j++){
      if (i!=j){
        ball[i].collideWith(ball[j]);
      }
    }
  }
}

    
    
