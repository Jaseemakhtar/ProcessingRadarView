class Circles{
  Circle[] circles;
  Line line;
  
  int maxCircles;
  float maxRadius;
  float radii;
  float initialDraw = 20;
  float centerX = width / 2;
  float centerY = height / 2;
  
  public Circles(int maxCircles){
    this.maxCircles = maxCircles;
    circles = new Circle[4];
    maxRadius = width * 0.85 / 2;
    line = new Line(centerX, centerY, maxRadius, 90);
    radii = initialDraw;
    
    for(int i = 0; i < maxCircles; i++){
      circles[i] = new Circle(radii, initialDraw, maxRadius);
      radii += 10;
    }
  }
  
  public void show(){
    for(int i = 0; i < maxCircles; i++){
      ellipse(centerX, centerY, maxRadius * 2, maxRadius * 2);
      circles[i].show();
      line.show();
    }
  }
  
  public void update(){
    for(int i = 0; i < maxCircles; i++){
      circles[i].update(maxRadius);
      line.update();     
    }
  }
}
