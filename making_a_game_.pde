float x1;  //tracks horisontal position of first cactus. 
float x2;
float x3;
float distance; // distance between dino and hurdle 
float distance2; 
float distance3;

float a1; // this tracks acceleration for the cactii  
float s1;// this tracks the speed for cactii 

float dinoy; // this tracks the Y cordinate of the Dino 
float dinos;// This tracks the dino speed
float dinoa;// this the acceleration of the speed 
float gravity;// this tracks the gravity for the whole game.

float score;// this tracks the score for the player. 



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
  gravity = 0.06;
  
  
}
//this function always runs 
void draw() {
  // background clears each time the program loops
  background(255, 132, 8);

//text("dinoy is " +dinoy, 150, 25);
//text("dinos is " +dinos, 150, 50);
//text("dinoa is " +dinoa, 150, 75);
//text("distance is " + distance, 150, 100);
text("Score" + score, 600, 50);

//determine disance between objects
float a = dinoy - 175;
float b = 50 - x1;
distance = sqrt( pow(a, 2) + pow( b, 2)  );
//determine hits
if (distance < (30 + 25) ){
  textSize(25);
  text ("HIT", 100, 100);
}

float c = dinoy - 175;  
float d = 50 - x2;
distance2 = sqrt( pow(c, 2) + pow( d, 2)  );

//determine hits
if (distance2 < (30 + 25) ){
  textSize(25);
  text ("HIT", 100, 100);
}

float e = dinoy - 175;
float f = 50 - x3;
distance3 = sqrt( pow(e, 2) + pow( f, 2)  );

//determine hits
if (distance3 < (30 + 25) ){
  textSize(25);
  text ("HIT", 100, 100);
}



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
  score = score + 10;
}
  //creatre the appearance of moving by changing the x position
  x1 = x1 + s1;
  s1 = s1 +a1;

  // other cactii
  x2 = x2 -10;
  x3 = x3 -10;

  // put the cactus back on the right edge from the left edge 
  if (x1 < -25) {
    x1 = 900;
    s1 = -1;
    score = score + 10;
  }

  if (x2 < -25) {
    x2 = 1000;
  }
  if (x3 < -25) {
    x3 = 1100;
    score = score + 10;
  }
  //aesthetics

  //Cloud
  fill( 255, 255, 255);
  ellipse(500, 75, 100, 45); 
  
  //cactus 
  fill(13, 75, 4);
  rect(700, 100, 40, 100);
  rect(675, 150, 62, 20);
  rect(675, 152, 12, -54);
  ellipse(720, 114, 40, 85);
  
  
}

void keyPressed() {
  dinoa = -1;
  if (dinoy > 170); 
}