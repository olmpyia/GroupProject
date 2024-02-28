class PowUp {
  int x, y, diam, val;
  PImage powup;
  char type;

  PowUp (int x, int y) {
    this.x = x;
    this.y = y;
    diam = int(100);
    // Randomize Power Ups Here: 
  }

  void display() {
    imageMode(CENTER);
    powup.resize(diam, diam);
    image(powup, x, y);
  }

  boolean reachedBottom() {
    if (y > height + 140) {
      return true;
    } else {
      return false;
    }
  }
}
