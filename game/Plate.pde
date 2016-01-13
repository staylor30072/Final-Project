class Plate {
  PVector loc;

  Plate(float p, float g) {
    loc= new PVector(p, g);
  }

  void create() {
    fill(255);
    ellipse(loc.x, loc.y, 100, 10);
  }

  boolean offScreen() {
    if (loc.y>=height) {      
      return true;
    } else {
      return false;
    }
  }

  void update() {
     loc.y+=4;
  }
  
  boolean allAboutThatBase(){
    if(loc.y<=height-height/8){
      return true;
    }else {
      return false;
    }
  }
}