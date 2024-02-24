class Ball {
  int x, y, w, health, lives;
  PImage ball;

  Ball(int x, int y) {
    this.x = x;
    this.y = y;
    w = 50;
    health = 3;
    ball = loadImage("Ball.png");
  }

  void display() {
    imageMode(CENTER);
    ball.resize(w, w);
    image(ball, x, y);
  }

  void move(int x, int y) {
    this.x = x;
    this.y = y;
  }
}

//boolean intersectPU(PowUp pu) {
//  float d = dist(x, y, pu.x, pu.y);
//  if (d < pu.diam/2) {
//    return true;
//  } else {
//    return false;
//  }
//}
