
public static final int MAX = 9;

Lights_line lg;
Forest forest;
Star s1, s2;
Streak st;

public void setup(){
  size(900, 600);
  lg = new Lights_line();
  forest = new Forest(MAX);
  s1 = new Star(height - 50, height);
  s2 = new Star(height - 50, height);
  st = new Streak(height - 50, height);
}

public void draw(){
  background(111, 11, 0);
  forest.draw();
  lg.draw();
  st.draw();
  s2.draw(1);
  s1.draw(0);
}

public void mousePressed(){
  lg.pressed(mouseX, mouseY);
}
