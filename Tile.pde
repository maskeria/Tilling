class Tile {
  float size;
  float x;
  float y;
  float translatex;
  float translatey;
  int padding = 10;
  float hue = random(360);
  float hueNoise = random(10);
  int corner = int(random(4));
  
  public Tile(int x, int y, float size) {
    this.x = x;
    this.y = y;
    this.size = size;
    
    if(corner == 1) {
      translatex = 0;
      translatey = size;
    }else if(corner == 2) {
      translatex = size;
      translatey = size;
    }else if(corner == 3) {
      translatex = size;
      translatey = 0;
    } else {
      translatex = 0;
      translatey = 0;
    }
  }
  
  void show() {
    pushMatrix();
    translate(x, y);
    noStroke();
    colorMode(HSB, 360, 100, 100);
    for(int i = 0; i < size; i++) {
      float dx = random(size/padding, size-(size/padding));
      float dy = random(size/padding, size-(size/padding));
      hue = hue + noise(hueNoise)*0.7;
      fill(hue, 100, 100);
      ellipse(dx, dy, (size/50), (size/50));
      
      pushMatrix();
      translate(translatex, translatey);
      rotate(radians(3));
      ellipse(dx-translatex, dy-translatey, (size/50), (size/50));
      popMatrix();
      
      hueNoise+=0.3;
    }
    popMatrix();
  }
}
