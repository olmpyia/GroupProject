// Mads McDougal, Sarah Zhang, Aayush Silwal, and Jenna Tran
// Friday, February 23rd, 2024 | Laser Strike Group Project

//PImage startScreen;

Ball b1;
ArrayList<Spike> spikes = new ArrayList<Spike>();
ArrayList<Laser> lasers = new ArrayList<Laser>();
ArrayList<Block> blocks = new ArrayList<Block>();
ArrayList<PowUp> powups = new ArrayList<PowUp>();
int score;
int level;
boolean play;
Timer puTimer;

void setup() {
  size (600, 300);
  score = 0;
  level = 1;
  play = false;
  b1 = new Ball(width/2, height/2);
  //puTimer = new Timer(1500);
  //puTimer.start();
}

void draw() {
  if (!play) {
    startScreen();
  } else {
    background (0);
    noCursor();

    //Adding Power Ups
    //if (puTimer.isFinished()) {
    //  powups.add(new PowUp(int(random(width)), - 100));
    //  puTimer.start();
    //}

    //Display Power Ups
    //for (int i = 0; i < powups.size(); i++) {
    //  PowUp pu = powups.get(i);
    //}

    b1.display();
    b1.move(mouseX, mouseY);

    //Render Scoreboard
    //infoPanel();

    if (b1.health < 0) {
      gameOver();
    }
  }
}

void infoPanel() {
  //fill(127, 127);
  //rectMode(CENTER);
  //rect(width/2, 30, width, 60);
  //fill(255);
  //textSize(20);
  //text("Score:" + score, 75, 40);
  //text("Level:" + level, width/4, 40);
  //text("Health:" + b1.health, width/2, 40);
  //println("lasers" + lasers.size());
  //println("spikes" + spikes.size());
  //println("blocks" + blocks.size());
}

void startScreen() {
  background(0);
  //startScreen = loadImage("startScreenIdea.png");
  fill(255);
  textAlign(CENTER);
  textSize(18);
  text("Welcome to 'Laser Strike'!", width/2, 75);
  text("By Mads McDougal, Sarah Zhang, Aayush Silwal, and Jenna Tran", width/2, 125);
  text("Click ANY Key to Move to The Next Screen", width/2, 175);
  if (keyPressed) {
    play = true;
  }
}

//void instructions() {
//  background(0);
//  fill(255);
//  textAlign(CENTER);
//  textSize(18);
//  text("Instructions!:", width/2, 75);
//  text("", width/2, 125);
//  text("", width/2, 125);
//  text("Click ANY Key to Officially Begin the Game", width/2, 175);
//  if (keyPressed) {
//    play = true;
//  }
//}

void gameOver() {
  background(0);
  fill(255);
  textAlign(CENTER);
  textSize(40);
  text("Game Over", width/2, 75);
  text("Score: " + score, width/2, 125);
  text("Level: " + level, width/2, 175);
  noLoop();
}

void mousePressed() {
}

//void keyPressed() {
//  println("key:" + key);
//  println("keyCode" + keyCode);
//  if (key == ' ') {
//  }
//}
