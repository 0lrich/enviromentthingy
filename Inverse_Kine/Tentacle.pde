class Tentacle {
  PVector base;
PVector target;
Terrain finalTarget;
Segment[] segments;
float len = 50;
int id = 0;
int total = 0;
Segment end;
  Tentacle(float x, float y, int parts, Terrain finalTarget) {
    segments = new Segment[parts];
    base = new PVector(x,y);
    segments[0] = new Segment(300, 200, len, 0);
    for (int i = 1; i < segments.length; i++) {
      segments[i] = new Segment(segments[i-1], len, i);
    }
    target =new PVector(0,0);
  
    this.finalTarget = finalTarget;
    tentacleID++;
    id = tentacleID;
  }
  
  
  
  
  void update(){
    float range = segments.length * len;
  
 int total = segments.length;
   end = segments[total-1];
  float xDist = finalTarget.placement.x - base.x;
  float yDist = finalTarget.placement.y - base.y;
  double distance = Math.sqrt(xDist*xDist + yDist*yDist);
  if(distance <= range){
    PVector temp = PVector.sub(target, finalTarget.placement); 
    target =  PVector.add(temp.normalize().mult(-5),target);
  end.follow(target);
 
  }
  end.update();
  
  for (int i = total-2; i>=0; i--) {
    segments[i].follow(segments[i+1]);
    segments[i].update();
    
  }
  segments[0].setA(base);

  for ( int i = 1; i < total; i++) {
    segments[i].setA(segments[i-1].b);
  } 
  }




   void setBase(PVector newBase){
    segments[0].setA(newBase); 
    base = newBase.copy();
   for ( int i = 1; i < segments.length; i++) {
   segments[i].setA(segments[i-1].b);
   
  } 
   }
   
   
   
   
   
  boolean isTouchingTerrain(Terrain target,Body torso){//this is returned to body to let the animal know if it can move and it can only move if its tentacle is touching terrain
    int index = 0;
    int manyThatArentTouching = 0;

    for (int i = 0; i < torso.tentacles.size(); i++){
     if(abs(torso.tentacles.get(i).segments[segments.length-1].b.x - target.placement.x) > 5 && abs(torso.tentacles.get(i).segments[segments.length-1].b.y - target.placement.y) > 5 ){
      manyThatArentTouching++;
     }
      
    }
    if(manyThatArentTouching > (torso.tentacles.size()/2)){
     return false;
   }
   return true;
     
  }
  
    
    
    
 void show(){
      for (Segment s : segments) {
    s.show();
  } //<>//
  }
  }
  
