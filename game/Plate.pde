class Plate {
  PVector loc;
  int xsize, ysize;

  //Constructor 1
  Plate() {
    loc= new PVector(width/2,height-height/10);
    xsize = 100;
    ysize = 10;
  }

  //Constructor 2
  Plate(Plate old) {
    loc= new PVector(random(old.loc.x-100,old.loc.x+100), random(old.loc.y-200, old.loc.y-10));
    xsize = 100;
    ysize = 10;
  }
  
  // Makes a new plate
  void create() {
    fill(255);
    ellipse(loc.x, loc.y, xsize, ysize);
  }
  
  //Checks to see if plate is still on screen
  boolean offScreen() {
    if (loc.y>=height) {      
      return true;
    } else {
      return false;
    }
  }
  
  //Checks to see if Chi is touching a plate
  boolean isInContactWithChip(PVector direction) {
    if (direction.y>height-height/8&&direction.y<loc.y-6&&loc.x-50<direction.x+27&&loc.x+50>direction.x) {
      return true;
    }
    return false;
  }
  
  //Makes plates move down
  void update() {
    loc.y+=4;
  }
  
  //Checks to see if plate is at that basepoint
  boolean allAboutThatBase() {
    if (loc.y<=height-height/8) {
      return true;
    } else {
      return false;
    }
  }


  boolean tooClose( PVector a, PVector b) {
    if ( dist(a.x, a.y, b.x, b.y)< 10) {
      return true;
    } else {
      return false;
    }
  }
}