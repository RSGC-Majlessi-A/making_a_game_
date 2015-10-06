int x;  //tracks horisontal position of first cactus. 

//this function runs once only
void setup() {
  size(800, 200);
  // set the initial position of the cactus
  x = 900; // this will position the cactus off screen. 
}
//this function always runs 
void draw(){
// background clears each time the program loops
background(255);

//draw a cricle thats not moving at the bottom right
ellipse(x, 175, 50, 50);

//creatre the appearance of moving by changing the x position
x = x -1;
}