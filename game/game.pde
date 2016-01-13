boolean play = false;
//PImage chip, chipjump;
PVector loc, vel;
Chip chip;
void setup(){
  size(500,800);
  loc = new PVector();
  loc.set(width/2-20,height-40);
  chip = new Chip();
//  chip = loadImage();
//  chipjump = loadImage();
}
void draw(){
  chip.displaychip(loc.x,loc.y);

  
}
void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      loc.x-=.1;
    } else if (keyCode == RIGHT) {
      loc.x+=.1;
    } 
  }
}