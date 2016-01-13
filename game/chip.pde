class chip {
  float gravity =0.2;
  PVector loc, vel;
  Chip(PImage chip, PImage) {
    loc = new PVector();
    loc.set(width/2,height/2);
    vel = new PVector();
    vel.set(0,3);
    
  }

  void fall() {
    loc.add(vel);
    vel.y += gravity;
  }
  void display() {
    fill(255);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
    triangle(loc.x-diam/2, loc.y-3, loc.x+diam/2, loc.y-3, loc.x, loc.y-diam);
  }
  boolean isInContactWith(PVector direction) {
    if (loc.x>direction.x-bucket.wid/2&&loc.x<direction.x+bucket.wid/2&&loc.y+diam>height-50){
      return true;
    }
    return false;
  }
  void reset() {

    loc.set(random(0, width), 0);

    vel.set(random(-3, 3), random(0, 2));
  }
}