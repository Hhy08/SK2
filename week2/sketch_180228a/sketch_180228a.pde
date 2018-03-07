int buttonColor;

void setup(){
size(1000,1000);
}

void  draw(){
  fill(buttonColor);
rect(200, 200, 100, 100);
if (mouseX > 200 && mouseX < 300 &&
    mouseY > 200 && mouseY < 300) {
    buttonColor = color(255, 0, 0);
  } else {
    buttonColor = color(100);
  }

if (mouseX > 200 && mouseX < 300 &&
    mouseY >200 && mouseY < 300) {//hover
    buttonColor = color(255, 0, 0);
    if(mousePressed){//click
         buttonColor = color(random(255), random(255), random(255));
    }
  } else {
    buttonColor = color(100);
  }
}