//Jenna Tran and Sarah Zhang
class Spike {
  int x, y, diam, health, speed;
  PImage spike;

  Spike(int x, int y) {
    this.x = x;
    this.y = y;
    diam = 80;
    speed = int(random(1, 7));
    spike = loadImage("(SZ)Spike.png");
  }

  void display() {
    imageMode(CENTER);
    spike.resize(diam, diam);
    image(spike, x, y);
  }

  void move() {
    x -= speed;
  }

  boolean reachedLeft() {
    if (x > width + 50) {
      return true;
    } else {
      return false;
    }
  }
}
