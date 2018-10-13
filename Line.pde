class Line{
  float startX;
  float endX;
  float startY;
  float endY;
  float angle;
  float len;
  float speed = 0.5;
  
  public Line(float sX, float sY, float len, float a){
      startX = sX;
      startY = sY;
      this.len = len;
      angle = a;      
  }
  
  public void show(){
      float radian = radians(angle);
      endX = (cos(radian) * len) + startX;
      endY = (sin(radian) * len) + startY;
      line(startX, startY, endX, endY);
  }
  
  public void update(){
      angle = (angle + speed) % 360;
  }
}
