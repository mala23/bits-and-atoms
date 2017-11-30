PShape eye;
PShape eye_background;
PShape eye_iris;
PShape eye_lash_bottom;
PShape eye_lash_top;
int counter = 0;

void setup() {
  fullScreen(1);
  setupScreen();
  smooth();
  eye = loadShape("data/svg/eye.svg");
  eye_background = eye.getChild("eye_background");
  eye_iris = eye.getChild("eye_iris");
  eye_lash_bottom = eye.getChild("eye_lash_bottom");
  eye_lash_top = eye.getChild("eye_lash_top");
};

void draw() {
  background(255);
  shape(eye_background, 0, 0);
  shape(eye_iris, 0, 0);
  shape(eye_lash_bottom, 0, 0);
  shape(eye_lash_top, 0, 0);
};
