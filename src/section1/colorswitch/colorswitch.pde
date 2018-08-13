int xcolor = #12AF25;

int currentcolor = 0;

int acolor = #FF0B03;
int bcolor = #F5A63E;
int ccolor = #FFEB03;
int dcolor = #5AFF03;
int ecolor = #46CEE8;
int fcolor = #A746E8;
int gcolor = #E846B0;

int[] colors = { acolor, bcolor, ccolor, dcolor, ecolor, fcolor, gcolor };

void setup(){
  size(800,800);
}

void draw(){
  //background(200,200,200);
  //fill(colors[currentcolor]);
}
void keyPressed(){
  if (key == CODED){
    if(keyCode == UP) {
    background(200,200,200);
    fill(colors[currentcolor]);
    currentcolor ++;
    if (currentcolor == 7){
      currentcolor = 0;
    }
    }
    fill(colors[currentcolor]);
  }
  ellipse(mouseX,mouseY,100,100);
}