class Fire{
  float x;
  float y;
  float z;
  
  Fire() {
    x = random(0, width);
    y = random(0, height);
    z = random(0, width);
    
  }
  
  void update(){
    z = z - 1;
    if (z < 1) {
      z = random(300, 0);
    }
  }
  
  void show(){
    fill(255);
    noStroke();
    float sx = map(x/z, 0, 1, 0, width);
    float sy = map(y/z, 0, 1, 0, height);
    float dim = map(z, 0, width, 8, 0);
    ellipse(sx, sy, dim, dim);
  }
  
}
