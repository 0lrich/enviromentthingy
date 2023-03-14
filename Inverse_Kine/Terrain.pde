public class Terrain{
  PShape land;
  PVector placement;
  float w = 300;
  float h = 100;
  
   Terrain(float x, float y, float w, float h){
    placement = new PVector(x,y);
    land = createShape(RECT, 0, 0, w, h);
    
   }
  
  void update(){
  System.out.println(placement);
  }
  
  void show(){
    shape(land, placement.x, placement.y); 
    update();
  }
  //public boolean returnWalkingNodes(PVector attemptedgrab){
  // PVector TL = new PVector(placement.x,placement.y);
  // PVector TR = new PVector(placement.x + w,placement.y); 
  // PVector BL = new PVector(placement.x,placement.y + h);
  // PVector BR = new PVector(placement.x+w,placement.y+h);
   
  // if(attemptedgrab.x == TL.x){
  // for (int i = 0; i < 1000; i++){
   
     
     
  // }
  // }
  // if(attemptedgrab.y == TL.x)
   
  //  return new PVector(); 
  //}
  
  
  
  
  
  
  
  
  
  
  
}
