Fire[] sp = new Fire[1000];

void setup(){
  size(600, 700);
  for (int i = 0; i < sp.length; i++){
    sp[i] = new Fire();
  }
}

void draw(){
  background(205, 0, 0);
  noStroke();
  fill(255);
  rect(0, 10, 600, 80);
  fill(0, 140, 0);
  triangle(width/2, 40, width/2 + 150, 640, width/2 - 150, 640);
  fill(102, 51, 0);
  rect(width/2 - 20, 640, 40, 80);
  for (int i = 0; i < sp.length; i++){
    sp[i].update();
    sp[i].show();
  }
}
