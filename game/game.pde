boolean play = false;
//PImage chip, chipjump;
PVector loc, vel;
Chip chip;
ArrayList<Plate> p = new ArrayList<Plate>();


void setup() {
  size(500, 800);
  loc = new PVector();
  loc.set(width/2-20, height-40);
  p.add(new Plate(random(width), random(height)));
  chip = new Chip();
  //  chip = loadImage();
  //  chipjump = loadImage();
}
void draw() {
  background(255);
  chip.displaychip();
  chip.update();
  chip.fall();
  if (chip.isInContactWithPlate()) {
    chip.jump();
  }

  if ( keyPressed && keyCode ==UP) {
    p.add(new Plate(random(width), random(0)));
  }
  for (int i = p.size()-1; i>=0; i--) {
    Plate o=p.get(i);
    o.create();
    if (o.allAboutThatBase()) {
      o.update();
    } 
    if (o.offScreen()) {
      p.remove(i);
      p.add(new Plate (random(width), random(0)));
    }
  }
}
void keyPressed() {
  chip.key();
}