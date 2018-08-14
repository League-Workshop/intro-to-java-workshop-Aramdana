
int ballx = 250;
int xSpeed = 5;
int bally = 750/2;
int ySpeed = 5;

void setup(){
  size(500,750);
  background(0,0,0);
}

void draw(){
  background(0,0,0);
  ellipse(ballx,bally,20,20);
  fill(255,255,255);
  stroke(0,0,0);
  ballx += xSpeed;
  bally += ySpeed;
  if (ballx > width){
    xSpeed = -xSpeed;
  }
  if (bally > height){
    ySpeed = -ySpeed;
  }
  rect(mouseX,700,80,20);
  if (ballx = mouseX && bally = mouseY
}