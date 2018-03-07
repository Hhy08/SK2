int button1Color;
int button2Color;

void setup() {
  size(500, 500);
}

void  draw() {
  fill(button1Color);
  rect(50, 50, 30, 30);
  fill(button2Color);
  rect(200, 200, 100, 100);

  if (mouseX > 50 && mouseX < 80 &&
    mouseY > 50 && mouseY < 80) { 
    button1Color = color(255, 0, 0);
    if (mousePressed) {
      button1Color = color(random(255), random(255), random(255));
    }
  } else {
    button1Color = color(100);
  }

  if (mouseX > 200 && mouseX < 300 &&
    mouseY >200 && mouseY < 300) {//hover
    println("hover");
    button2Color = color(255, 0, 0);
    if (mousePressed) {
      button2Color = color(random(255), random(255), random(255));
    }
  } else {
    button2Color = color(0);
    println("off");
  }
}