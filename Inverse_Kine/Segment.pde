public class Segment {


  PVector a;

  float len;
  float angle = 0;
  PVector b = new PVector();
  Segment parent = null;
  //Segment child = null;
  float sw = 0;
  Segment(float x, float y, float len_, float i) {
    a = new PVector(x, y);
    sw = map(i, 0, 20, 1, 10);
    len = len_;
    calculateB();
  }

  Segment(Segment parent, float len_, float i ) {
   this.parent = parent;
    sw = map(i, 0, 20, 1, 10);
    a = parent.b.copy();
    len = len_;
    follow(parent.a);
    calculateB();
  }
  void follow(Segment child) {
    float targetX = child.a.x;
    float targetY = child.a.y;
    PVector target = new PVector(child.a.x,child.a.y);
    follow(target);
  }
  void follow(PVector aim) {
    PVector target = new PVector(aim.x, aim.y);
    PVector dir = PVector.sub(target, a); 
   angle = dir.heading();
  
  
  
    dir.setMag(len);
    dir.mult(-1);

    a = PVector.add(target, dir);
  }
  void setA(PVector pos) {
    a = pos.copy();
    calculateB();
  }
  void calculateB() {
    float dx= len * cos(angle);
    float dy = len * sin(angle);
    b.set(a.x+dx, a.y+dy);
  }
  void update() {
    calculateB();
  }
  //boolean isTouching(){//this is for the tentacle function and we're tryna make it so that if a certain amount of segments are touching any terrain that we're able to move 
  //  boolean isIndeed = false;
  //  PVector detection = new PVector();
  //  for ( int i = 1; i < len; i++) {
  //  detection.lerp(a,b, (len/10));
    
  //  if(detection ){
  //  return false;
  //  }
  //  }
  //  return true;
  //}
  void show() {
    stroke(150);
    strokeWeight(4);
    line(a.x, a.y, b.x, b.y);
    strokeCap(ROUND);
  }
}
