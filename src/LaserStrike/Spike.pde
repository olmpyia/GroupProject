class Spike {
  int x, y, diam, health, speed;
  //PImage spike;
  
  Spike(int x, int y) {
    this.x = x;
    this.y = y;
    diam = int(random(40));
    speed = int(random(1,7));
  }
  
  void display() {
    fill(255);
    size(400, 400);
    triangle(120, 300, 232, 80, 344, 300);
  }
  
  void move() {
    y += speed;
  }
  
  boolean reachedLeft() {
    if (x > width + 50) {
      return true;
    } else {
      return false;
    }
  }
}
