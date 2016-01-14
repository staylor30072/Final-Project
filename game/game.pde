ArrayList<Plate> p = new ArrayList<Plate>();
void setup() { 
  size(800, 800);
  p.add(new Plate(random(width), random(height)));
  background(0);
}
void draw() {
  background(0);
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