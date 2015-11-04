float distance; // distance between dino and hurdle 
Cactus c1;
Dino d1;
float gravity;// this tracks the gravity for the whole game.
float score;// this tracks the score for the player. 



//this function runs once only
void setup() {

  size(800, 200);
  noStroke();

  c1 = new Cactus(900, -0.1, -10);
  gravity = 0.075;

  d1 = new Dino(0, 170, 0);
}

//this function always runs 
void draw() {

  // background clears each time the program loops
  background(255, 132, 8);

  c1.update(gravity);
  d1.update(gravity); 


  //aesthetics

  //sun
  fill(252, 214, 5);
  ellipse(779, 0, 151, 151); 

  //Cloud
  fill( 255, 255, 255);
  ellipse(500, 75, 100, 45); 

  //cactus that dosen't move
  fill(13, 75, 4);
  rect(700, 100, 40, 100);
  rect(675, 150, 62, 20);
  rect(675, 152, 12, -54);
  ellipse(720, 103, 40, 85);
  rect(758, 133, 12, -54);
  rect(737, 141, 33, -10);
}


void keyPressed() { 
  if (d1.getY() == 170)
  d1.setA(-1);
  }