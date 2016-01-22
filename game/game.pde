//declare variables

PFont bigfont, mediumfont, smallfont, boxfont, boxfont2, okfont;
PImage chipey, clock, duster, candles, mom;
float w1,w2,h1,h2;
int niall;
float scaleFactor11, scaleFactor21, scaleFactor3, scaleFactor31, scaleFactor32, scaleFactor4, scaleFactor5;
boolean play = false;
Chip chip;
ArrayList<Plate> platform = new ArrayList<Plate>();
boolean down = false;
Plate t;
boolean start;


void setup() {
  size(500, 800);
  bigfont = createFont("Bookman Old Style", 48, true);
  okfont = createFont("Bookman Old Style", 32, true);
  mediumfont = createFont("Bookman Old Style", 25, true);
  smallfont = createFont("Bookman Old Style", 17, true);
  boxfont = createFont("Bookman Old Style", 30, true);
  boxfont2 = createFont("Bookman Old Style", 16, true);
  niall = 2;
  mom = loadImage("mrspottslooksangry.gif");
  chipey = loadImage("prettychipblackbackground.jpg");
  clock = loadImage("clockdude.gif");
  duster = loadImage("sweepdusterstanding.gif");
  candles = loadImage("candlelookingcool.gif");
  scaleFactor11 = .45;
  scaleFactor21 = .3;
  scaleFactor3 = .2;
  scaleFactor31 = .180;
  scaleFactor32 = .150;
  scaleFactor4 = .250;
  scaleFactor5 = .160;
  //Original Plate made so they'll be evenly spaced
  platform.add(new Plate(random(0,width),200));
  
  platform.add(new Plate(random(0,width),300));
  platform.add(new Plate(random(0,width),400));
  platform.add(new Plate(random(0,width),600));
  //Chip stuff
  chip = new Chip(platform.get(0));
}
void draw() {
  background(255);
  starter();
  if(start){
    game();
  }
  
}

void keyPressed() {
  chip.key();
}

void game(){
  chip.update();    //Updates Chip
  chip.fall();    //Makes chip fall
  if(chip.isFalling()){
    chip.displaychip();
  }//shows Chip
  else{
    chip.displaychipjump(); //shows pic of chip jumping
  }
  if(down&&t.loc.y<height-height/8){ //if plate jumped on isn't on bottom 
    for(int j = 0; j<platform.size();j++){//all plates move down
        Plate k = platform.get(j);
        k.update();
      }
  }
  for (int i = platform.size()-1; i>=0; i--) {

    Plate o= platform.get(i); //gets each plate

    if (o.isInContactWithChip(chip.loc)&&chip.isFalling()) { //if chip touches plate while falling
      down = true;   //plates move down
      t = o;
      
      chip.jump();
      
    }
    
  }

  for (int i = platform.size()-1; i>=0; i--) {
    Plate o=platform.get(i);
    if (platform.size()<=4) {    //Limits the amount 
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

  }
}

void starter() {
  if (niall == 2){
  background(0);
  image(chipey,0,0, width*scaleFactor11, height*scaleFactor21 );
  textAlign(CENTER);
  fill(255);
  textFont(bigfont);
  text("Chip's", 300, 70);
  text("Great", 300, 125 );
  text("Escape!", 300, 180);
  textFont(smallfont);
  text("How to Play:", 250, 235 );
  text("Use arrow keys: Left and Right", 250, 265);
  text("to make sure Chip has a plate to land on!", 250, 315);
  text("Keep chip far away from the sink!", 250, 365);
  text("Reach out to one of his buddies for help!", 250, 415);
  text("These powerups will make Chip go higher!", 250, 465);
  text("If you land on a broken plate or an obstacle, Chip will fall!", 250, 515);
  textFont(mediumfont);
  text("Good Luck!", 250, 575 );
  fill(255);
  rect(50, 625, 160, 90);
  rect(290, 625, 160, 90);
  textFont(boxfont);
  fill(0);
  text("Back", 125, 675);
  textFont(boxfont2);
  text("More", 375, 660);
  text("Instructions", 375, 680);
  }

  if (niall == 2 && mousePressed && mouseX>290 && mouseX<450 && mouseY<715 && mouseY>625) {
    niall = 3;
  }
  if (niall == 3 && mousePressed && mouseX>5 && mouseX<130 && mouseY>5 && mouseY<55) {
    niall = 2;
  }
  if (niall==3){
    background(255);
    image(clock,400,110, width*scaleFactor3, height*scaleFactor3);
    image(candles,25,230, width*scaleFactor3, height*scaleFactor3);
    image(mom,325,415, width*scaleFactor4, height*scaleFactor5);
    image(duster, 30, 530, width*scaleFactor31, height*scaleFactor31);
    fill(0);
    textFont(okfont);
    text("Power-ups Include:", 250, 100);
    text("Obstacles Include:", 250, 400);
    textFont(mediumfont);
    text("Cogsworth:", 175, 175);
    text("Lumière:", 325, 275);
    text("Mrs.Potts:", 175, 475);
    text("Babette:", 325, 585);
    text("Shattered Plates:", 175, 700);
    textFont(smallfont);
    text("He will slow down the rising water", 175, 200);
    text("This gives Chip more time to get higher!", 175, 225); 
    text("Using the heat from his candles,", 325, 300);
    text("He will make Chip float higher!", 325, 325);
    text("She wants Chip to take a bath", 175, 500);
    text("So she will make Chip lose", 175, 525);
    text("She will dust Chip away!", 325, 610);
    text("And Chip will fall to the sink!", 325, 635);
    text("They are not a safe place to land,", 175, 725);
    text("Chip will fall right through them!", 175, 750);
    fill(255, 204, 102);
    stroke(255);
    rect(5,5,125,50);
    textFont(mediumfont);
    fill(0);
    text("Back", 65, 40);
  }
    if(mousePressed && mouseX>5 && mouseX<55 && mouseY<130 && mouseY>5) {
      niall = 2;
    }
}