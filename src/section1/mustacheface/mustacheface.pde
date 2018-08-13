
PImage mustache;
  PImage friend;
void setup(){
  friend = loadImage("face.jpg");
    size(800,600);
    friend.resize(width,height);
    mustache = loadImage("mustache.png");
    image(mustache,400,300);
}

void draw(){
  background(friend);
  
  
}