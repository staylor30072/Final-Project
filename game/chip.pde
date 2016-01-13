class Chip {
  float gravity =0.2;
  PVector loc, vel;
  //PImage chip, chipjump;
  float chipx, chipy;
  //  Chip(PImage chip, PImage chipjump) {

  //    this.chip = chip;
  //    this.chipjump = chipjump;
  Chip() {
    loc = new PVector();
    loc.set(width/2, height/2);
    vel = new PVector();
    vel.set(0, 3);
  }

  void fall() {
    loc.add(vel);
    vel.y += gravity;
  }
  void update() {

    if (loc.x+chipx >= width) {
      loc.x=0;
    } else if (loc.x<= 0) {
      loc.x=width;
    }
  }
  void displaychip(float x, float y) {
    //    image(chip,loc.x,loc.y);
    rect(x, y, 30, 40);
  }
  //  void displaychipjump(float x,float y) {
  //   image(chipjump, x,y);
  // }
  boolean isFalling(PVector direction) {
    //  if (){
    //   return true;
    //  }
    return false;
  }

  boolean isInContactWithPlate(PVector direction) {
    //   if (){
    //     return true;
    //   }
    return false;
  }
  void jump() {
    vel.y+=1;
  }
}