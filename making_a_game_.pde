float x1;  //tracks horisontal position of first cactus. 
float x2;
float x3;
float a1; // this tracks acceleration for the first cactus. 
float s1;

float dinoy;
float dinos;
float dinoa;
float gravity;

//this function runs once only
void setup() {
  size(800, 200);
  noStroke();
  // set the initial position of the cactus
  x1 = 900; // this will position the cactus off screen. 
  x2 = 1000;
  x3 = 1100;
  a1 = -.01; //innitial horizontal acceleration 
  s1 = -1;
  dinoy = 170;
  dinos = 0;
  dinoa = 0;
  gravity = 0.005;
  
  
}
//this function always runs 
void draw() {
  // background clears each time the program loops
  background(255, 132, 8);

text("dinoy is " +dinoy, 150, 25);
text("dinoy is " +dinoy, 150, 50);
text("dinoy is " +dinoy, 150, 75);

  //draw a cricle thats not moving at the bottom right
  fill(23, 8, 255);
  ellipse(x1, 175, 50, 50);

  fill(255, 8, 185);
  ellipse(x2, 175, 50, 50);

  fill(188, 17, 17);
  ellipse(x3, 175, 50, 50);
  
  //dino model 
  fill(0);
  ellipse(50, dinoy, 50, 50);

//moce the dino
dinoa = dinoa + gravity;
dinos = dinos + dinoa;
dinoy = dinoy + dinos;

// stop the dino from falling
if (dinoy > 170) {
  dinoa = 0;
  dinos = 0; 
  dinoy = 170;
}
  //creatre the appearance of moving by changing the x position
  x1 = x1 + s1;
  s1 = s1 +a1;

  // other cacti
  x2 = x2 -10;
  x3 = x3 -10;

  // put the cactus back on the right edge from the left edge 
  if (x1 < -25) {
    x1 = 900;
    s1 = -1;
  }

  if (x2 < -25) {
    x2 = 1000;
  }
  if (x3 < -25) {
    x3 = 1100;
  }
  //aesthetics

  //Cloud
  fill( 255, 255, 255);
  ellipse(500, 75, 100, 45);
  
  //cactus 
  
}

void keyPressed() {
  dinoa = -1;
}