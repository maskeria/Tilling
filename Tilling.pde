void setup() {
  size(1000, 1000);
  background(255);
  ArrayList<Tile> tiles = new ArrayList<Tile>();
  int dimension = 1;
  for (int i = 0; i < width; i+=(width/dimension)) {
    for (int j = 0; j < height; j+=(height/dimension)) {
      tiles.add(new Tile(i, j, width/dimension));
    }
  }
  for (int i = 0; i < tiles.size(); i++) {
    tiles.get(i).show();
  }
}

void draw() {}

void keyPressed() {
  if (keyCode == ENTER) {
    saveFrame("screen-####.jpg");
  }
}
