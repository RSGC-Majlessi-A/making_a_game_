float distance; // distance between dino and hurdle 
float distance2; 
float distance3;

Cactus c1;

float dinoy; // this tracks the Y cordinate of the Dino 
float dinos;// This tracks the dino speed
float dinoa;// this the acceleration of the speed 
float gravity;// this tracks the gravity for the whole game.

float score;// this tracks the score for the player. 



//this function runs once only
void setup() {

  size(800, 200);
  noStroke();

  c1 = new Cactus(900, -0.1, -10);

  dinoy = 170;
  dinos = 0;
  dinoa = 0;
  gravity = 0.06;
}

//this function always runs 
void draw() {

  // background clears each time the program loops
  background(255, 132, 8);

  c1.update();

  //text("dinoy is " +dinoy, 150, 25);
  //text("dinos is " +dinos, 150, 50);
  //text("dinoa is " +dinoa, 150, 75);
  //text("distance is " + distance, 150, 100);
  text("Score" + score, 100, 50);

  //determine disance between objects
  float a = dinoy - 175;
  float b = 50 - c1.getX();
  distance = sqrt( pow(a, 2) + pow( b, 2)  );
  //determine hits
  if (distance < (30 + 25) ) {
    textSize(25);
    text ("HIT LOLOLOLOL BAD", 100, 100);
  }

  //dino model 
  fill(0);
  ellipse(50, dinoy, 50, 50);

  //move the dino
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
  c1.x1 = c1.x1 + c1.s1;
  c1.s1 = c1.s1 +c1.a1;



  //aesthetics

  //sun
  fill(252, 214, 5);
  ellipse(779, 0, 151, 151);

  //Cloud
  fill( 255, 255, 255);
  ellipse(500, 75, 100, 45); 

  //cactus 
  fill(13, 75, 4);
  rect(700, 100, 40, 100);
  rect(675, 150, 62, 20);
  rect(675, 152, 12, -54);
  ellipse(720, 103, 40, 85);
  rect(758, 133, 12, -54);
  rect(737, 141, 33, -10);
}

void keyPressed() {
  dinoa = -1;
  if (dinoy > 170);
}