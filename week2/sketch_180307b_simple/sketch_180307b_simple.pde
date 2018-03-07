class Button {
  float x, y, w,h;
  int result = 0;
  color buttonColor = color(100);
  Button(float _x, float _y, float _w,  float _h) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
  }
 void run(){
    //float distance = dist(x, y, mouseX, mouseY);
    if (mouseX > x && mouseX < x+w &&
    mouseY >y && mouseY < y+h){ //mouse hover
      result = 1;
      if (mousePressed) {
        result = 2;
      }
    } else {
      result = 0;
    }
  

    switch(result) {
    case 0:
      buttonColor = color(100);
      break;
    case 1:
      buttonColor = color(255, 0, 0);
      break;
    case 2:
      buttonColor = color(random(255), random(255), random(255));
      break;
    }
  

    fill(buttonColor);
    rect(x, y, w, h);
  }
}

// declare
Button button1, button2;
void setup() {
  size(400, 400);
  noStroke();
  //init
  button1 = new Button(width/2,height/3,100,100);
  button2 = new Button(width/2,2*height/3,50,50);
}