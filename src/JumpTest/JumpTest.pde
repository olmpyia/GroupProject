class Player {
  float x, y; // Player position
  float jumpSpeed = -10; // Initial jump speed
  float gravity = 0.5; // Gravity applied to player

  boolean isJumping = false; // Flag to check if player is jumping

  Player(float x, float y) {
    this.x = x;
    this.y = y;
  }

  void jump() {
    if (!isJumping) { // If player is not already jumping
      y += jumpSpeed; // Apply jump speed
      isJumping = true; // Set jumping flag to true
    }
  }

  void applyGravity() {
    if (isJumping) { // If player is jumping
      jumpSpeed += gravity; // Apply gravity
      y += jumpSpeed; // Update player position
      if (y >= height - 20) { // If player reaches ground level
        y = height - 20; // Set player back to ground level
        isJumping = false; // Reset jumping flag
      }
    }
  }

  void draw() {
    rect(x, y, 20, 20); // Draw player as a rectangle
  }
}

Player player;

void setup() {
  size(400, 400);
  player = new Player(50, height - 20); // Create player object
}

void draw() {
  background(255);

  player.applyGravity(); // Apply gravity to player

  player.draw(); // Draw player

  // If spacebar is pressed, trigger jump
  if (keyPressed && key == ' ') {
    player.jump();
  }
}
