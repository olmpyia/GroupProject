class Ball {
  int x, y, w, health, lives;
  PImage ball;
  Timer jumpTimer;
  boolean up, jump;
  float jumpSpeed = -10;
  float gravity = 0.5;
  boolean isJumping = false;

  Ball(int x, int y) {
    this.x = x;
    this.y = y;
    w = 50;
    health = 3;
    ball = loadImage("Ball.png");
    jumpTimer = new Timer(100 );
    up = true;
    jump = false;
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

  void jump() {
    jump = true;
    while (up && jump) {
      if (y < 200) {
        y--;
        if (y == 200) {
          up = false;
        } else {
          if (y > 250) {
            y++;
            if (y == 250) {
              up = true;
            }
          }
        }
      }
      jump = false;
    }
  }

  //boolean intersectPU(PowUp pu) {
  //  float d = dist(x, y, pu.x, pu.y);
  //  if (d < pu.diam/2) {
  //    return true;
  //  } else {
  //    return false;
  //  }
}
