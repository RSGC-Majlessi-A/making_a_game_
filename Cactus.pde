class Cactus {
  float x1;  //tracks horisontal position of first cactus. 
  float a1; // this tracks acceleration for the cactii  
  float s1;// this tracks the speed for cactii 

  Cactus (float x_, float a_, float s_) {
    x1 = x_;
    a1 = a_;
    s1 = s_;
  }

  void update() {
    //draw a cricle thats not moving at the bottom right
    fill(23, 8, 255);
    ellipse(x1, 175, 50, 50);


    if (x1 < -25) {
      x1 = 900;
      s1 = -10;
      score = score + 10;

    }
    
  }
  
}