int ballx = 250;
int xSpeed = 5;
int bally = 750/2;
int ySpeed = 5;
int paddlespawnpoint = 250;
int paddlespawnpointtwo = 250;

void setup(){
  size(500,750);
  background(0,0,0);
  frameRate(30);
}

void draw(){
  background(0,0,0);
  ellipse(ballx,bally,20,20);
  fill(255,255,255);
  stroke(0,0,0);
  ballx += xSpeed;
  bally += ySpeed;
  if (ballx > width || ballx < 0){
    xSpeed = -xSpeed;
  }
  if (bally < 0){
    ySpeed = -ySpeed;
  }
  rect(paddlespawnpoint,700,80,20);
  rect(paddlespawnpointtwo,50,80,20);
  if (intersects(ballx,bally,paddlespawnpoint,700,80)){
    xSpeed = -xSpeed;
    ySpeed = -ySpeed;
  }
  if (intersects(ballx,bally,paddlespawnpointtwo,700,80)){
    xSpeed = -xSpeed;
    ySpeed = -ySpeed;
  }
}
  boolean intersects(int ballx, int bally, int paddleX, int paddleY, int paddleLength) 
  {
    if (bally > paddleY && ballx > paddleX && ballx < paddleX + paddleLength)
        return true;
    else
        return false;
}
void keyPressed(){
  if(key == CODED) {
    if (keyCode == RIGHT && paddlespawnpoint < width - 80){
      paddlespawnpoint = paddlespawnpoint + 15;
    }
    if (keyCode == LEFT && paddlespawnpoint > 0){
      paddlespawnpoint = paddlespawnpoint - 15;
    }
  }
}