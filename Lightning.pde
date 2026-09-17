int startX = (int)(Math.random() * 300) + 50;
int startY = 0;
int endX = 10;
int endY = 10;
int COLOR = 0;
int thing = 255;

void setup() {

 size(400,400);
 strokeWeight(5);
 background(100,100,100);
 frameRate(10);
  
  noStroke();
  //The disappearing sun
  fill(200,255,0);
  ellipse(0,0,95,95);
  
  //The cow
  fill(255,255,255);
  // Body 
  ellipse(220, 300, 50, 30);
  fill(0,0,0);
  // Spots
  ellipse(210, 297, 10, 8);
  ellipse(230, 300, 8, 6);
  fill(255,255,255);
  // Head
  ellipse(220, 285, 30, 15);
  fill(0,0,0);
  // Eyes
  ellipse(215, 283, 4, 4);
  ellipse(225, 283, 4, 4);
  fill(150,0,0);
  // Nose
  ellipse(220, 287, 12, 8);
  // Ears
  ellipse(205, 283, 8, 12);
  ellipse(235, 283, 8, 12);
  fill(0,0,0);
  // Legs
  ellipse(205, 315, 6, 12);
  ellipse(235, 315, 6, 12);
  ellipse(215, 315, 6, 12);
  ellipse(225, 315, 6, 12);
  
}

void draw() {
  
  //clouds right
   noStroke();
  strokeWeight(0);
  fill(thing, thing, thing);
  ellipse(85,50,80,40);
  ellipse(145,50,80,40);
  ellipse(115,35,80,40);
  ellipse(60,55,60,30);
  
  //clouds central
  ellipse(270,5,100,20);
  ellipse(120,0,100,15);
  ellipse(400,0,40,20);
  
  //clouds left
  ellipse(320,70,80,40);
  ellipse(260,70,80,40);
  ellipse(300,52,80,40);
  
  //box for fading
  stroke(0,0,0);
  strokeWeight(3);
  fill(100,100,100,30);
  rect(0,0,399,399);
  
  //statements for lightning
while (endX < 400 && endY < 400) {
  
  COLOR = (int)(Math.random() * 56) + 200;
  stroke(COLOR, COLOR, 0);
  strokeWeight(5);
  endX = startX + (int)(Math.random() * 10) -4;
  endY = startY + (int)(Math.random() * 25) -5;
  line(startX, startY, endX, endY);
  startX = endX;
  startY = endY;
  
  //land
  noStroke();
  fill(0,255,0);
  ellipse(200,370,500,100);
  
  if (endX >= width || endY >= height || endY < 0 || endX < 0) {
    noLoop();
  }
}
}
//mouse is pressed thingy
void mousePressed() {

  startX = (int)(Math.random() * 300) + 50;
  startY = 0;
  thing -= 10;
  endX = startX;
  endY = startY;
  loop();
  
}
