class Game_over_and_score{
  
  private int sc;
  private int h_sc;
  
  Game_over_and_score(int sc, int h_sc){
    this.sc = sc;
    this.h_sc = h_sc;
  }
    public boolean controll(boolean game_over){
      if (!game_over){
        fill(96, 235, 225);
        rect(fx*bs, fy*bs, bs, bs);
        sc = x.size();
        if (sc > h_sc){
          h_sc = sc;
        }
        textAlign(CENTER);
        textSize(20);
        fill(0);
        text("Score: "+ sc + "  High Score: "+ h_sc, 10, 10, width - 20, 50);
      }
      else{
      background(0);
      if (frameCount % (int)random(1, 1000) != 0 ){
        fill(191, 19, 19);
        textSize(35);
        textAlign(CENTER);
        text("GAME OVER\n YOUR SCORE: " + sc + "\n YOUR HIGH SCORE: " + h_sc + "\n PRESS ENTER TO PLAY AGAIN", width/2, height/3);
      }
    }
    return game_over;
  }
}
