boolean checkMousePosition(int w, int h) {
  boolean inZone;
  if (mouseX > width * .5 - w* .5 && mouseX < width * .5 + w * .5 &&
    mouseY > height * .5 - h* .5 && mouseY < height * .5 + h* .5 ) {
    inZone = true;
    //pushStyle();
    //fill(#6C3E54);
    //noStroke();
    //rect(width * .5 - w* .5, height * .5 - h* .5, w, h);
    //popStyle();
    bubbleCol = color(#06414B);
  } else {
    inZone = false;
    bubbleCol = color(#7CECFF);
  }

  return inZone;
}