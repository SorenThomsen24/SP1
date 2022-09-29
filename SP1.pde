void setup()
{
  fullScreen();
  frameRate(120);
  noCursor();
}

void draw()
{
  background(255);
  fill(127);
  rect(0,900,1550,100);
  drawMan();
  drawSnow();
  //Snow fall
  snowY=snowY+1;
}

void drawMan()
{
  fill(255);
  //Legs
  line(manX,manY,manX+25,manY+90);
  line(manX,manY,manX-25,manY+90);
  //Arms
  line(manX-50,manY-20,manX+50,manY-20);
  //Body
  ellipse(manX,manY,50,75);
  //Head
  ellipse(manX,manY-60,50,50);
  //Eyes
   ellipse(manX-10,manY-70,10,10);
  ellipse(manX+10,manY-70,10,10);
  //Mouth
  ellipse(manX,manY-55,25,5);
}

void keyPressed()
{
  //Right movement
  if (keyCode ==RIGHT)
  {
  manX = manX+25;
  }
  //Left movement
  else if (keyCode ==LEFT)
  {
  manX = manX-25;
  }
  //Jumping
  else if (keyCode ==UP)
  {
    manY = manY-150;
  } 
}

void keyReleased()
{
  //Gravity 
  if (keyCode == UP)
  manY = manY+150;
}

void drawSnow()
{
  //Tried making snow but it didn't work out
  ellipse(random(1,1000),snowY,20,20);
}

  float manX = width;
  float manY = 810;
  float snowY = 0;
