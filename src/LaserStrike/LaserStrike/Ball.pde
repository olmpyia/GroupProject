class Ball {
  int x, y, w, health, lives;
  PImage ball;

  Ball(int x, int y) {
    this.x = x;
    this.y = y;
    w = 3 ;
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
