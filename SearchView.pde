Circles c;
void setup(){
  size(320, 460);
  c = new Circles(4);
}

void draw(){
  background(0);
  
  c.show();
  c.update();
}
