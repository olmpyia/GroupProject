// Mads McDougal, Sarah Zhang, Aayush Silwal, and Jenna Tran
// Friday, February 23rd, 2024 | PEMDASH Group Project

PImage startScreen;
PImage mainScreen;

//Jenna Tran and Sarah Zhang
Ball b1;
ArrayList<Spike> spikes = new ArrayList<Spike>();
//ArrayList<Laser> lasers = new ArrayList<Laser>();
ArrayList<Block> blocks = new ArrayList<Block>();
//ArrayList<PowUp> powups = new ArrayList<PowUp>();
int x, y; // Global Variable
int score;
int level;
boolean play;
Timer spikeTimer, puTimer;

//Sarah Zhang
void setup() {
  size (600, 300);
  score = 0;
  play = false;
  b1 = new Ball(50, height - 50);
  puTimer = new Timer(1500);
  puTimer.start();
  //Mads McDougal
  startScreen = loadImage("(MM)startscreen.png");
  mainScreen = loadImage("(MM)backgroundGrass.png");
}

//Sarah Zhang
void draw() {
  if (!play) {
    startScreen();
  } else {
    //Mads McDougal
    //image(mainScreen, 0, 0);
    //Jenna Tran
    background (186, 203, 226);
    fill(255);
    rect(0, 270, 600, 100);
    rect(0, 0, 600, 100);
    fill(93, 102, 113);
    rect(0, 0, 600, 50);
    noCursor();
    textSize(20);
    fill(0);
    text("Score: " + score, 46, 30);
    text("Time: " + level, width/2, 30); // change to time later
    text("Health: " + b1.health, width - 60, 30);

    //Jenna Tran
    // Distrubuting Spikes
    spikes.add(new Spike(600, 50));

    //if (spikeTimer.isFinished()) {
    //  spikes.add(new Spike(300, 50));
    //  spikeTimer.start();
    //}

    // Rendering Spikes
    //for (int i = 0; i < spikes.size(); i++) {
    //  Spike s = spikes.get(i);
    //  if (b1.intersect(s)) {
    //    b1.health -= s.diam/10;
    //    spikes.remove(s);
    //  }
    //  if (s.reachedLeft()) {
    //    spikes.remove(s);
    //    score -= s.diam;
    //  } else {
    //    s.display();
    //    s.move();
    //  }
    //}

    //Sarah Zhang
    //Adding Power Ups
    //if (puTimer.isFinished()) {
    //  powups.add(new PowUp(int(random(width)), - 100));
    //  puTimer.start();
    //}

    //Display Power Ups
    //for (int i = 0; i < powups.size(); i++) {
    //  PowUp pu = powups.get(i);
    //}

    //Jenna Tran and Sarah Zhang
    //Rendering Ball
    b1.display();
    //b1.move(100, 250);

    //Allowing a Jump Feature for the Ball
    b1.applyGravity();
    //b1.draw();
  }

  //Render Scoreboard
  //infoPanel();

  if (b1.health < 1) {
    gameOver();
  }
}

//Jenna Tran, Sarah Zhang, and Mads McDougal
void startScreen() {
  image(startScreen, 0, 0);
  //background(#9BDDFF);
  //fill(255);
  ////size(500, 100);
  //fill(0, 100, 0);
  //rect(0, 240, 600, 60);
  //fill(#878B8E);
  //rect(width/2 - 65, height/2 + 50, 130, 20);
  //triangle(80, 240, 120, 240, 100, 205);
  //triangle(140, 240, 180, 240, 160, 205);
  //triangle(420, 240, 460, 240, 440, 205);
  //triangle(480, 240, 520, 240, 500, 205);
  //fill(#2079A7);
  //circle(330, 185, 30);
  //fill(255);
  //textAlign(CENTER);
  //textSize(60);
  //text("PEM-DASH", width/2, 80);
  //textSize(28);
  //text("Start Game", width/2, 120);
  //textSize(20);
  //text("Click or Press Key to Begin...", width/2, 160);
  if (keyPressed || mousePressed) {
    play = true;
  }
}

//Sarah Zhang
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

//Sarah Zhang
void gameOver() {
  background(0);
  fill(255);
  textAlign(CENTER);
  textSize(40);
  text("Game Over", width/2, 75);
  text("Score: " + score, width/2, 125);
  text("Time: " + level, width/2, 175);
  noLoop();
}

//Sarah Zhang
void mousePressed() {
}

//Sarah Zhang
void keyPressed() {
  println("key:" + key);
  println("keyCode" + keyCode);
  if (keyPressed && key == ' ') {
    b1.jump();
    //b1.jumpTimer.start();
  }
}
