class Object {

  float hAmp;
  float vAmp;
  float angleH;
  float angleV;
  float hAngVelocity;
  float vAngVelocity;
  float velRange = 0.008;


  PVector anchor;
  PVector location;
  PVector velocity;
  PVector acceleration;
  float radius;

  Object(PVector loc) {
    location = loc.get();
    anchor = loc.get();
    angleH = PI/2;
    angleV = 0;
    hAmp = random(100, 200);
    vAmp = random(100, 200);//random(100);
    hAngVelocity = random(-velRange, velRange);//random(0.009, 0.01);
    vAngVelocity = random(-velRange, velRange);

    radius = random(20);
  }

  void update() {
    float x = hAmp * cos(angleH) + anchor.x;
    float y = vAmp * sin(angleV) + anchor.y;
    location = new PVector(x, y);

    float h = map(mouseX, 0, width, -2*velRange, 2*velRange);
    float v = map(mouseY, 0, height, -2*velRange, 2*velRange);

    angleH += hAngVelocity + h;
    angleV += vAngVelocity + v;
  }

  void display() {
    noStroke();
    float dmouse = mouse.dist(center);
    float dobject = location.dist(center);
    int spread = 100;
    if (abs(dmouse - dobject) < spread) {

      float d = dmouse - dobject;
      alpha = map(d, -spread, spread, -255, 255);
      alpha = 255 - abs(alpha);
    } else {
      alpha = 0;
    }
    //rotate(0.01*mouseX*sin(mouseY));
    fill(#B58BFF,alpha);//tian chong de yan se   tou ming du
    ellipse(location.x, location.y, radius*mouseX*0.002, radius*mouseX*0.002);//weizhi he daxiao
  }
}//yi shang can kao 