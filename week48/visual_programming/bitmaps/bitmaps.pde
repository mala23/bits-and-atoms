int gridWidth = 100;
int gridHeight = 100;
float pointDistX = 5;
float pointDistY = 5;
ArrayList<Integer> imageGreyScaleList = new ArrayList<Integer>();
PImage baseImage;

void setup() {
  size(700, 700);
  smooth();
  baseImage = loadImage("data/image.jpg");
  baseImage.loadPixels();
  int location;
  for (int i = 0; i < baseImage.width; i++) {
    for (int j = 0; j < baseImage.height; j++) {
        location = i + j * baseImage.width;
        println(baseImage.pixels[location]);
        color pixel = baseImage.pixels[location];
        int greyScale = floor(red(pixel) + green(pixel) + blue(pixel) / 3);
        imageGreyScaleList.add(greyScale);
    };
  };
};

void draw() {
  background(255);
  pushMatrix();
  translate((width - (pointDistX * gridWidth)) / 2, (height - (pointDistY * gridHeight)) / 2);
  int location;
  for (int i = 0; i < gridHeight; i++) {
    beginShape();
    for (int j = 0; j < gridWidth; j++) {
      location = i + j * baseImage.width;
      float posX = j * pointDistX;
      float posY = i * pointDistY + map(imageGreyScaleList.get(location), 0, 255, 0, 10);
      curveVertex(posX, posY);
    };
    endShape();
  };
  popMatrix();
};
