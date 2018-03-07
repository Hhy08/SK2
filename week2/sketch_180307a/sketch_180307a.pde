int checkStates(float bx, float by, float w, float h) {
  int result = 0 ;
  if (mouseX > bx && mouseX < bx+w &&
    mouseY >by && mouseY < by+h) {//hover
    //buttonColor = color(255, 0, 0);
    if (mousePressed) {//click
      //buttonColor = color(random(255), random(255), random(255));
      result = 2  ;
    }
  } else {
    //buttonColor = color(100);
    result = 0;
  }
  return result;
}
//function

color btnColor = color(100);
float bx, by, w, h;
void setup() {
  size(500, 500);
  //background(100);
  noStroke();
  //bx = width/2;
  //by = height/2;
  w = 80;
  h = 60;
}


void draw() {
  //button
  for (int by = 0; by < height; by += 2*h) {
    for (int bx = 0; bx < height; bx += 2*w) {

      int state = checkStates(bx, by, w, h);
      println(state);

      if (state == 0) btnColor = color(0);
      if (state == 1) btnColor = color(255, 0, 0);
      if (state == 2) btnColor = color(random(255), random(255), random(255));

      fill (btnColor);
      rect(bx, by, w, h);
    }
  }
}