class Dino {
  float dinoy;
  float dinoa; 
  float dinos;
  
  Dino (float dinos_, float dinoy_, float dinoa_) {

    dinoy = dinoy_;
    dinoa = dinoa_;
    dinos = dinos_;
  }

  //this is for updating and drawing the dino on sceen.
  void update(float gravity) {

    //dino model 
    fill(0);
    ellipse(50, dinoy, 50, 50);

    // stop the dino from falling
    if (dinoy > 171 ) {
      println("resetting position");
     dinoa = 0;
     dinos = 0; 
     dinoy = 170;
    }

    //move the dino
    println(dinoa);
    dinoa = dinoa + gravity;
    dinos = dinos + dinoa;  //change speed based on acceleration
    dinoy = dinoy + dinos;  //change location based on speed

    //dinoy = 170;
    //dinos = 0;
    //dinoa = 0;

    textSize(12);
    fill(0);
    text("dinoY is " + dinoy, 150, 25);
    text("dinoS is " + dinos, 150, 50);
    text("dinoA is " + dinoa, 150, 75);
  }

  // getY
  //
  // Purpose: an accessor method; lets us find out where the dino is (vertically)
  float getY() {
    return dinoy;
  }

  // setA
  //
  // Purpose: a mutator method; lets the acceleration for the dinosaur be set
  //          from outside the class
  void setA(float newA_) {
    dinoa = newA_;
    println("just set new a");
  }
}