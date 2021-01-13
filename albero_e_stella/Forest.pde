class Forest{
  private Tree[] trees;
  
  Forest(int max){
    trees = new Tree[max];
    for(int i = 0; i < max; i++){
      trees[i] = new Tree(i*width/8, height, width/3.5, height);
    }
  }
  
  public void draw(){
    for(int i = 0; i < trees.length; i++){
      trees[i].draw();
    }
  }
}
