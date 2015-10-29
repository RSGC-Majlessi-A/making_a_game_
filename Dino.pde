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
    
    //keyPressed(){
    //  if (dinoy == 170){
    //    dinoa = -1;
    //  }

    // stop the dino from falling
    if (dinoy > 170) {
      dinoa = 0;
      dinos = 0; 
      dinoy = 170;
    }


    //move the dino
    dinoa = dinoa + gravity;
    dinos = dinos + dinoa;
    dinoy = dinoy + dinos;

    dinoy = 170;
    dinos = 0;
    dinoa = 0;
    
    textSize(12);
fill(0);
text("dinoY is " + dinoy, 150, 25);
text("dinoS is " + dinos, 150, 50);
text("dinoA is " + dinoa, 150, 75);
    
  }
}