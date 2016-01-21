PFont font;
PFont font2;
PFont font3;

PImage tile;
PImage chip;

float scaleFactor1, scaleFactor2, scaleFactor3, scaleFactor4;
float w1a, w2a, h1a, h2a;
float w1b, w2b, h1b, h2b;

void setup() {
  
  //SCREEN SIZE
  size(500, 800);
  
  //PLAY BUTTON VARIABLES
  w1a = 150;
  w2a = 350;
  h1a = 200;
  h2a = 300;
  
  //HOW TO PLAY BUTTON VARIABLES
  w1b = 100;
  w2b = 400;
  h1b = 360;
  h2b = 460;
  
  //DEFINE FONTS AND SIZES
  font = createFont("Bookman Old Style", 50, true);
  font2 = createFont("Bookman Old Style", 60, true);
  font3 = createFont("Bookman Old Style", 40, true);
  
  //LOAD BACKGROUND IMAGE
  tile = loadImage("tile.jpg");
  scaleFactor1 = 1.2;
  scaleFactor2 = 1.5;
  
  //LOAD CHIP IMAGE
  chip = loadImage("chip.png");
  scaleFactor3 = .45;
  scaleFactor4 = .3;
}

void draw() {
  
  //LOAD BACKGROUND IMAGE AND CHIP IMAGE
  image(tile, 0, 0, width * scaleFactor2, height * scaleFactor1);
  image(chip, 140, 520, width *scaleFactor3, height *scaleFactor4);
  
  //GAME TITLE
  textAlign(CENTER);
  textFont(font);
  fill(0);
  text("Chip's Great Escape", 250, 125);
  
  //PLAY BUTTON
  noStroke();
  fill(0);
  rect(150, 200, 200, 100);
  
  //PLAY TEXT
  textAlign(CENTER);
  textFont(font2);
  fill(255);
  text("PLAY", 250, 270);
  
  //HOW TO PLAY BUTTON
  noStroke();
  fill(0);
  rect(100, 360, 300, 100);
  
  //HOW TO PLAY TEXT
  textAlign(CENTER);
  textFont(font3);
  fill(255);
  text("HOW TO PLAY", 250, 420);
}

void mousePressed(){
  //PLAY
  if(mouseX > w1a && mouseX < w2a && mouseY > h1a && mouseY < h2a){
    background(0);
  }
  
  //HOW TO PLAY
  if(mouseX > w1b && mouseX < w2b && mouseY > h1b && mouseY < h2b){
    background(0);
  }
}