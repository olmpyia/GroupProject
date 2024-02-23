

Ball b1;
ArrayList<Spike> spikes = new ArrayList<Spike>();
ArrayList<Laser> lasers = new ArrayList<Laser>();
ArrayList<Block> blocks = new ArrayList<Block>();
ArrayList<PowUp> powups = new ArrayList<PowUp>();
int score;
int level;
boolean play;

void setup() {
  size (600, 300);
  score = 0;
  level = 1;
  play = false;
  b1 = new Ball(width/2, height/2);
}

void draw() {
  if (!play) {
    //startScreen();
  } else {
    background (25);
    noCursor();
  }
}
