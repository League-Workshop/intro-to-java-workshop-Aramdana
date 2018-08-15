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
  if (ballx > width || ballx < 0){
    xSpeed = -xSpeed;
  }
  if (bally < 0){
    ySpeed = -ySpeed;
  }
  rect(mouseX,700,80,20);
  if (intersects(ballx,bally,mouseX,700,80)){
    xSpeed = -xSpeed;
    ySpeed = -ySpeed;
  }
}
  boolean intersects(int ballx, int bally, int paddleX, int paddleY,
int paddleLength) {
    if (bally > paddleY && ballx > paddleX && ballx < paddleX + paddleLength)
        return true;
    else
        return false;
}
  //boolean intersects(int ballx, int bally, int paddleX, int paddelY, int paddleLength) {
  //  if (bally > paddley && ballx > paddleX && ballx < paddlex +paddleLength){
  //  } 
  //  else {
  //  return false;
  //  }
  //}
  //int padle1x = mouseX - 40;
  //int padel1y = mouseY - 10;

  //int padel2x = mouseX + 40;
  //int padel2y = mouseY + 10;

  //int padel3x = mouseX + 40;
  //int padel3y = mouseY - 10;

  //int padel4x = mouseX - 40;
  //int padel4y = mouseY + 10;

  //int[] padel1 = {padel1x, padel1y};
  //int[] padel2 = {padel2x, padel2y};
  //int[] padel3 = {padel3x, padel3y};
  //int[] padel4 = {padel4x, padel4y};
  
  //int[][] padel = {padel1, padel2, padel3, padel4};
  //if (ballx == mouseX && bally == mouseY){
    //xSpeed = -xSpeed;
    //ySpeed = -ySpeed;