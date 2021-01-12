Game_over_and_score go;
ArrayList<Integer> x = new ArrayList<Integer>(), y = new ArrayList<Integer>();

int wh = 30, hg = 30, bs = 20, dir = 1, fx = 4, fy = 15, sc = 0, h_sc = 0, conf = 0;
boolean game_over = false;
int []x_dir = {0, 0, 1, -1}, y_dir = {1, -1, 0, 0};

void setup(){
  size(600, 600);
  x.add(15);
  y.add(15);
  
  go = new Game_over_and_score(sc, h_sc);
  
  background(0);
  fill(133, 41, 166);
  textSize(35);
  textAlign(CENTER);
  text("REDY", width/2, height/3);
  delay(3000);
}

void draw(){
  
  background(90);
  noStroke();
  fill(176, 67, 167);
  for (int i = 0; i < x.size(); i++){
    rect(x.get(i) * bs, y.get(i) * bs, bs, bs);
  }
  if (!go.controll(game_over)){
    if (frameCount%8 == 0){
       x.add(0, x.get(0) + x_dir[dir]); 
       y.add(0, y.get(0) + y_dir[dir]);
       if (x.get(0) < 0 || y.get(0) < 0 || x.get(0) >= wh || y.get(0) >= hg){
         game_over = true;
       }
       for (int i = 1; i < x.size(); i++){
         if (x.get(0) == x.get(i) && y.get(0) == y.get(i)){
           game_over = true;
         }
       }
       if (x.get(0) == fx && y.get(0) == fy){
         fx = (int)random(0, wh);
         fy = (int)random(0, hg);
       }
       else {
         x.remove(x.size()-1);
         y.remove(y.size()-1);
       }
    }
    if (keyCode == ENTER){
      x.clear();
      y.clear();
      x.add(15);
      y.add(15);
      sc = 0;
      game_over = false;
    } 
  }
}

void keyPressed(){
  int newdir = keyCode == DOWN? 0:(keyCode == UP? 1:(keyCode == RIGHT? 2:(keyCode == LEFT? 3: -1 )));
  if (newdir != -1 && (dir - newdir != 1 || dir - newdir != -1 )){
    dir = newdir;
  }
}
