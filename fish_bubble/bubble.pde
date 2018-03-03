class Bubble {
  float x;
  float y;
  float dx;
  float dy;
  float s;// 
  //color bcol = color(#7CECFF);
  Bubble(float _dx, float _dy, float _s) {
    x = 741;
    y = 404;//pao pao zhong xin wei zhi
    dx = _dx;
    dy = _dy;
    s = _s;
  }

  void display(color bcol) {

    fill(bcol);// yan se bian hua 
    ellipse(x, y, s, s);

    x = x+dx;
    y = y+dy;//shi fang su du
  }

  boolean isOut() {
    if (x<0 || x>width || y<0 || y>height) {//kongzhi pao pao sanfa fanwei heng zhong fangxiang 
      return true;
    } else {
      return false;
    }
  }
}