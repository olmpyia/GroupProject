// Mads McDougal, Sarah Zhang, Aayush Silwal, and Jenna Tran
// Friday, February 23rd, 2024 | Laser Strike Group Project

//PImage startScreen;

Ball b1;
ArrayList<Spike> spikes = new ArrayList<Spike>();
//ArrayList<Laser> lasers = new ArrayList<Laser>();
ArrayList<Block> blocks = new ArrayList<Block>();
//ArrayList<PowUp> powups = new ArrayList<PowUp>();
int x, y; // Global Variable
int score;
int level;
boolean play, up;
Timer spikeTimer, puTimer;

void setup() {
  size (600, 300);
  score = 0;
  play = false;
  b1 = new Ball(width/2, height/2);
  puTimer = new Timer(1500);
  puTimer.start();
}

void draw() {
  if (!play) {
    startScreen();
  } else {
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

      //Adding Power Ups
      //if (puTimer.isFinished()) {
      //  powups.add(new PowUp(int(random(width)), - 100));
      //  puTimer.start();
      //}

      //Display Power Ups
      //for (int i = 0; i < powups.size(); i++) {
      //  PowUp pu = powups.get(i);
      //}

      // Rendering Ball
      b1.display();
      b1.move(100, 250);

      //Render Scoreboard
      //infoPanel();

      if (b1.health < 1) {
        gameOver();
      }
    }
  }

void startScreen() {
  background(0);
  //startScreen = loadImage("startScreenIdea.png");
  fill(255);
  textAlign(CENTER);
  textSize(40);
  text("Welcome to 'PEMDASH'!", width/2, 115);
  textSize(18);
  text("By Mads McDougal, Sarah Zhang, Aayush Silwal, and Jenna Tran", width/2, 150);
  textSize(20);
  text("Click or Press Key to Begin...", width/2, 215);
  if (keyPressed || mousePressed) {
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
  text("Time: " + level, width/2, 175);
  noLoop();
}

void mousePressed() {
  println("key:" + key);
  println("keyCode" + keyCode);
  if (keyPressed && key == 32 | key == 38 | key == 87) {
    b1.jump();
    b1.jumpTimer.start();
  }
}

void keyPressed() {
  println("key:" + key);
  println("keyCode" + keyCode);
  if (keyPressed && key == 32 | key == 38 | key == 87) {
    b1.jump();
    b1.jumpTimer.start();
  }
}
