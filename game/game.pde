PFont bigfont, mediumfont, smallfont, boxfont, boxfont2;

void setup() {
  size(500, 800);
  background(0);
  bigfont = createFont("Bookman Old Style", 48, true);
  mediumfont = createFont("Bookman Old Style", 25, true);
  smallfont = createFont("Bookman Old Style", 17, true);
  boxfont = createFont("Bookman Old Style", 30, true);
  boxfont2 = createFont("Bookman Old Style", 17, true);
}


void draw() {
  textAlign(CENTER);
  fill(255);
  textFont(bigfont);
  text("Chip's Great Escape!", 250, 125 );
  textFont(smallfont);
  text("How to Play:", 250, 200 );
  text("Use arrow keys: Left and Right", 250, 250);
  text("to make sure Chip has a plate to land on!", 250, 300);
  text("Keep chip far away from the sink!", 250, 350);
  text("Reach out to one of his buddies for help!", 250, 400);
  text("These powerups will make Chip go higher!", 250, 450);
  text("If you land on a broken plate or an enemy, Chip will fall!", 250, 500);
  textFont(mediumfont);
  text("Good Luck!", 250, 575 );
  fill(255);
  rect(50, 625, 160, 90);
  rect(290, 625, 160, 90);
  textFont(boxfont);
  fill(0);
  text("Back", 125, 675);
    textFont(boxfont2);
  text("More", 375, 675);
  text("Instructions", 375, 700);
}