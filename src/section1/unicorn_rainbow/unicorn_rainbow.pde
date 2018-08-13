PImage rainbow;
  PImage unicorn;

void setup(){
  rainbow = loadImage("download.png");
  size(800,600);
  rainbow.resize(width,height);
  background(rainbow);
  unicorn = loadImage("unicorn.png");
  unicorn.resize(100,150);
}

void draw(){
  background(rainbow);
  image(unicorn,mouseX,mouseY);
  
}