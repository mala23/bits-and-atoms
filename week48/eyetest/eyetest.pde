PShape eye_background;

void setup() {
  fullScreen(1);
  setupScreen();
  smooth();
  eye_background = loadShape("data/svg/eye_background.svg");
};

void draw() {
  background(255);
  shape(eye_background, 0, 0);
};
