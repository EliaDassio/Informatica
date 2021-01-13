class Tree{
  private float x;
  private float y;
  private float h;
  private float w;
  
  Tree(float x, float y, float w, float h){
    this.x = x;
    this.y = y;
    this.h = h;
    this.w = w;
    
  }
    
  public void draw(){
    fill(0, 150, 11);
    triangle(x - w/2, y - 50, x, y - h, x + w/2, y - 50);
    fill(138, 85, 6);
    rect(x - 30, y - 50, 60, 50);
  }
}
