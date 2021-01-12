class Star{
  private float x;
  private float y;
  private float h;
  private int z;
  private int vel;
  private int w;
  
  Star(float y, float h){
    this.x = 0;
    this.y = y;
    this.h = h;
    this.z = 0;
    this.vel = 4;
    this.w = 900;
    
  }
    
  public void draw(int dir){
    if (dir == 1){
      fill(242, 239, 24);
      triangle(x + 0, y - 475, z + 20, y + 85 - h, x + 40, y - 475);
    }
    else{
      fill(242, 239, 24);
      triangle(x + 0, y - 500, z + 20, y + 140 - h, x + 40, y - 500);
    }
    x = x + vel;
    z = z + vel;
    
    if (x == w){
      x = 0;
      z = 0;
    }
  }
}
