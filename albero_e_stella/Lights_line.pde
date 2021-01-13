class Lights_line{
  
  public static final int N_LIGHTS = 100;
  public static final int DIST = 40;
  
  private Light[] lights_line;
  
  Lights_line(){
    float x = 0;
    float y = 40;
    float dim = 6;
    boolean state = true;
    
    lights_line = new Light[N_LIGHTS];
    
    for(int i = 0; i < N_LIGHTS; i++){
      lights_line[i] = new Light(x, y, dim, state);
      x = x + DIST;
    }
  }
  
  public void draw(){
    for(int i = 0; i < N_LIGHTS; i++){
      lights_line[i].draw();
    }
  }
  
  public void pressed(float x, float y){
    for(int i = 0; i < N_LIGHTS; i++){
      lights_line[i].pressed(x, y);
    }
  }
}
