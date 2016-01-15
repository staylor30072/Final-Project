class Chip {
  float gravity =.2;
  PVector loc, vel;
  //PImage chip, chipjump;
  float chipx, chipy;
  //  Chip(PImage chip, PImage chipjump) {

  //    this.chip = chip;
  //    this.chipjump = chipjump;
  
  //Constructor
  Chip() {
    loc = new PVector();
    loc.set(width/2-15, height-height/5);
    vel = new PVector();
    vel.set(0, 12);
  }
  
  //Allows you to move Chip around
  void key() {
    if (key == CODED) {
      if (keyCode == LEFT) {
        loc.x-=10;
      } else if (keyCode == RIGHT) {
        loc.x+=10;
      }
    }
  }
  //Chip falls
    void fall() {
      loc.add(vel);
      vel.y += gravity;
    }
    
    //Annie what does this do?
    void update() {

      if (loc.x+chipx > width) {
        loc.x=0;
      } else if (loc.x< 0) {
        loc.x=width;
      }
    }
    
    //Shows the image of chip
    void displaychip() {
      //    image(chip,loc.x,loc.y);
      rect(loc.x, loc.y, 30, 40);
    }
    //  void displaychipjump(float x,float y) {
    //   image(chipjump, x,y);
    // }
    
    //Is Chip REALLY falling?
    boolean isFalling() {
      //  if (){
      //   return true;
      //  }
      return false;
    }

   //Make sure Chip's intitial velocity
    void jump() {
      vel.y = -abs(vel.y);
    }
  }