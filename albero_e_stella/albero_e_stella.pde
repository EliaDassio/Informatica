Tree[] tr;

public static final int MAX = 8;

Star s1, s2;
Streak st;

public void setup(){
  size(900, 600);
  tr = new Tree[MAX];
  for(int i = 1; i < MAX; i++){
    tr[i] = new Tree(i*width/8, height, width/3.5, height);
  }
  //t1 = new Tree(width/4, height, width/3.5, height);
  //t2 = new Tree(3*width/4, height, width/3.5, height);
  s1 = new Star(height - 50, height);
  s2 = new Star(height - 50, height);
  st = new Streak(height - 50, height);
}

public void draw(){
  background(111, 11, 0);
  //t1.draw();
  //t2.draw();
  for(int j = 1; j < tr.length; j++){
    tr[j].draw();
  }
  st.draw();
  s2.draw(1);
  s1.draw(0);
}
