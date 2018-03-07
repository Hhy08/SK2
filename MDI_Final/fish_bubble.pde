int mode = 0;
int loadP = 0;

float alpha;
PVector center;
int num = 500;
PVector mouse;//
int bubbleSpd = 30;//su du

ArrayList<Object> objects;
ArrayList<Bubble> Bubbles = new ArrayList<Bubble>();

import processing.sound.*;
PImage img, message, img2,img3;
color bubbleCol = color(#7CECFF);

SoundFile sample;
void setup() {
  fullScreen();
  smooth();
  img3 = loadImage("06.jpg");
  img3.resize(1440, 900);
  img2 = loadImage("01-01.jpg");
  img2.resize(1440, 900);
  img = loadImage("987.jpg");
  img.resize(1440, 900);
  sample = new SoundFile(this, "Dan Gibson - By the Grace of the Sea.mp3");
  center = new PVector(width/2, height/2);
  objects = new ArrayList<Object>();//!!!!!!!!!!!!music
  message = loadImage("909-08.jpg");
  message.resize(300, 90);
  for (int i = 0; i < num; i++) {//num = 500 
    objects.add(new Object(new PVector(random(width), random(height))));
  }//hou mian pao pao de kuo san fan wei
}

void draw() {

  switch (mode) {
  case 0:
    startScreen();
    break;
  case 1:
    maingame();
    break;
  case 2:
    endgame();
    break;
  }
}

void startScreen() {
  image(img2, 0, 0);

  //image()
}

void maingame() {
  background(img);
  boolean inzone = checkMousePosition(400, 400);
  if (inzone) { 

    //show message
    image(message, 570, 400);
    bubbleSpd = 10;
  } else {   
    bubbleSpd = 60;
  }
  mouse = new PVector(mouseX, mouseY);  
  for (Object o : objects) {
    o.update();
    o.display();
  }

  if (frameCount % bubbleSpd == 1) {
    for (int i=0; i<10; i++) {//pao pao shu liang 
      Bubble b = new Bubble(random(-10, 10), random(-10, 10), random(0, 30));//fen san fang xiang 
      Bubbles.add(b);
    }
  }

  for (int i=0; i<Bubbles.size(); i++) {// pao pao da xiao  xunhuan 
    Bubble b = Bubbles.get(i);
    if (b. isOut()) {
      Bubbles.remove(b);
    } else {
      b.display(bubbleCol);
    }
  }
  //debug();
}

void endgame() {
 image(img3, 0, 0);
}


//void debug() {
//text(mouseX + " : " + mouseY, mouseX, mouseY);

void mousePressed() {
  if (mode == 0) {
    mode = 1;
    sample.loop();
  }
}

void keyPressed() {
  if (mode == 1) {
    mode = 2;
    sample.stop();
  }
}