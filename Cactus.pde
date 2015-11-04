class Cactus {
  float x1;  //tracks horisontal position of first cactus. 
  float a1; // this tracks acceleration for the cactii  
  float s1;// this tracks the speed for cactii 
  float y1; 
  float r1;
  float score;

  Cactus (float x_, float a_, float s_) {
    x1 = x_;
    a1 = a_;
    s1 = s_;
    y1 = 170;
  }

  void update(float gravity) {
    //draw a cricle thats not moving at the bottom right
    fill(23, 8, 255);
    ellipse(x1, 175, 50, 50);

    s1=s1+a1;
    x1=x1+s1;
    
      textSize(12);
   fill(0);
   text("Score is " + score, 7, 14);


    if (x1 < -25) {
      x1 = 900;
      s1 = -10;
      score = score + 10;
      
      
    }
  }
 

  // getX
  // Purpose: to return the x position of the cactus
  float getX() {

    return x1;
  }
  
  //getY
 
 float getY(){
 
 return y1;
 }
 
 float getR(){
   
   return r1;
 }
}