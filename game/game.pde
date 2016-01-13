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
  background(255);
  chip.displaychip();
  chip.update();
  chip.fall();
  if(chip.isInContactWithPlate()){
    chip.jump();
    
  }
}
void keyPressed() {
  chip.key();
}