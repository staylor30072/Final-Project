PFont font;
PFont font2;
PFont font3;

PImage tile;

float scaleFactor1, scaleFactor2;

void setup() {
  font = createFont("Bookman Old Style", 50, true);
  font2 = createFont("Bookman Old Style", 60, true);
  font3 = createFont("Bookman Old Style", 40, true);
  size(500, 800);

  tile = loadImage("tile.jpg");
  scaleFactor1 = 1.2;
  scaleFactor2 = 1.5;
}

void draw() {
  background(0);

  image(tile, 0, 0, width * scaleFactor2, height * scaleFactor1);

  textAlign(CENTER);
  textFont(font);
  fill(0,100,255);
  text("Chip's Great Escape", 250, 125);

  noStroke();
  fill(255);
  rect(100, 200, 300, 100);

  textAlign(CENTER);
  textFont(font2);
  fill(0);
  text("PLAY", 250, 270);

  noStroke();
  fill(255);
  rect(100, 400, 300, 100);

  textAlign(CENTER);
  textFont(font3);
  fill(0);
  text("HOW TO PLAY", 250, 460);
}