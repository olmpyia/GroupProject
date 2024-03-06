//Sarah Zhang
class PowUp {
  int x, y, diam, val;
  PImage powup;
  char type;
  
  PowUp (int x, int y) {
    this.x = x;
    this.y = y;
    diam = int(100);
    // Randomize Power Ups Here:
    int rand = int(random(2));
    if (rand == 0) {
      //Aayush Silwal
      powup = loadImage("(AS)TimePowerup.png");
      type = 't';
      val = 10;
    } else {
      powup = loadImage("(AS)Skippowerup.png");
      type = 's';
      val = 1;
    }
  }
  
  //Sarah Zhang
  void display() {
    imageMode(CENTER);
    powup.resize(diam, diam);
    image(powup, x, y);
  }
  //Sarah Zhang
  boolean reachedLeft() {
    if (x > width + 140) {
      return true;
    } else {
      return false;
    }
  }
}
