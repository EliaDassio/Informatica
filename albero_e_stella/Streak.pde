class Streak{
  private float x;
  private float y;
  private float h;
  private int z;
  private int vel;
  private int w;
  
  Streak(float y, float h){
    this.x = 0;
    this.y = y;
    this.h = h;
    this.z = 0;
    this.vel = 4;
    this.w = 900;
  }
    
  public void draw(){
      fill(242, 239, 24);
      triangle(x - 200, y - 450, z - 200, y - 520, x + 35, y - 490);
      
      x = x + vel;
      z = z + vel;
    
    if (x == w){
      x = 0;
      z = 0;
    }
  }
}
