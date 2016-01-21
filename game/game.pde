boolean play = false;
Chip chip;
ArrayList<Plate> platform = new ArrayList<Plate>();
boolean down = false;
Plate t;
void setup() {
  size(500, 800);

  //Original Plate
  for ( int i=0; i<1; i++) {
    platform.add(new Plate());
  }
  //Chip stuff
  chip = new Chip(platform.get(0));
}
void draw() {
  background(255);
  chip.update();    //Updates Chip
  chip.fall();    //Makes chip fall
  if(chip.isFalling()){
    chip.displaychip();
  }//shows Chip
  else{
    chip.displaychipjump(); //shows pic of chip jumping
  }
  if(down&&t.loc.y<height-height/8){
    for(int j = 0; j<platform.size();j++){
        Plate k = platform.get(j);
        k.update();
      }
  }
  for (int i = platform.size()-1; i>=0; i--) {

    Plate o= platform.get(i);

    if (o.isInContactWithChip(chip.loc)) {
      down = true;   
      t = o;
      
      chip.jump();
      
    }
    
  }

  for (int i = platform.size()-1; i>=0; i--) {
    Plate o=platform.get(i);
    if (platform.size()<=10) {    //Limits the amount 
      platform.add(new Plate(o));
    }
    o.create();

    /*if (o.allAboutThatBase()) {
     o.update();
     } */
    
    if (o.offScreen()) {
      platform.remove(i);
      platform.add(new Plate(o));
    }
    if (keyPressed && keyCode==UP) {
      platform.add(new Plate(o));
    }
  }
}

void keyPressed() {
  chip.key();
}