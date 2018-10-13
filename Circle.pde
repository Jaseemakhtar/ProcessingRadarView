class Circle{
  float x;
  float y;
  float r;
  float initial;
  float end;
  float speed = 1;
  int opacity = 255;
  int opacityDeduct;
  
  public Circle(float r, float initial, float end){
    this.r = r;
    this.initial = initial;
    this.end = end;
    this.opacityDeduct = round(255 / (end - initial));  
    this.x = width / 2;
    this.y = height / 2;
  }
  
  public void show(){
    noFill();
    stroke(255, 255, 255, opacity);
    ellipse(x, y, r * 2, r * 2); 
    opacity -= opacityDeduct;
  }
  
  public void update(float border){
    if(r >= border){
      r = initial;
      opacity = 255;
    }
    
    r += speed;
  }

}
