class Light{
  
  public static final color LIGHT_ON  = #FFFF00;
  public static final color LIGHT_OFF  = #c0c0c0;
  
  private boolean on;
  private float x;
  private float y;
  private float r;
  
  Light(float x,float y,float r,boolean on){
    this.x = x;
    this.y = y;
    this.r = r;
    this.on = on;
  }
  
  void draw(){
    if(on){
      fill(LIGHT_ON);
    }
    else{
      
      fill(LIGHT_OFF);     
    }
    
    circle(x,y,r*2);
    
  }
  
  boolean pressed(float mx, float my){
    
    float dx = mx-x;
    float dy = my-y;
    boolean ris = false;
    
    if(dx*dx+dy*dy<r*r){
      on = !on;
      ris = true;
    }
    
    return ris;
  }
  
 
}
