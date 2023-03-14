
class Body {
ArrayList<Tentacle> tentacles = new ArrayList<>();
float radius;

 PShape bod;
  PVector placement;
  Boolean canMove = true;
  Boolean first = false;
 Body(float x, float y, float r){
 

    placement = new PVector(x,y);
  radius = r;
  bod = createShape(ELLIPSE, 0, 0, radius, radius);
 
  tentacles.add(new Tentacle(placement.x,placement.y,10, apple));
  tentacles.add(new Tentacle(placement.x,placement.y,10, apple));
  tentacles.add(new Tentacle(placement.x,placement.y,10, apple));
  tentacles.add(new Tentacle(placement.x,placement.y,10, apple));
 }
 void update(){
   canMove = false;
   
  for( int i = 0; i < tentacles.size(); i++){
 if (tentacles.get(i).isTouchingTerrain(apple,this) == true){
   canMove = true;
 } 

   }
     if (keyPressed && canMove == true) {
    if (key == 'd' || key == 'D') {
      
      placement.x += 10;
      
    }
 
 
    if (key == 'a' || key == 'A') {
      
     placement.x -= 10;
    

    }
    if (key == 's' || key == 'S') {
      
      placement.y += 10;

    }
    if (key == 'w' || key == 'W') {
      
      placement.y -= 10;

    }
    if (key == 'f' || key == 'F'){
      //if(first == true){
      //  setTarget(apple.placement);
      //  first = false;
      //}
      //else if(first == false){
         setTarget(0,rock); 
         first = true;
     // }
    }
 }else if(canMove == false){
  placement.y += 15; 
 }
     


 }
 void show(){
   shape(bod, placement.x, placement.y);
   update();
   for( int i = 0; i < tentacles.size(); i++){
     tentacles.get(i).update();
    float degree =  degrees(i * (360 / tentacles.size()));
    tentacles.get(i).setBase(getLegPos(degree, placement));
    tentacles.get(i).show();
   }
 
 }
  public PVector getLegPos(float angle, PVector center){
    
   float dx= radius/2 * cos(degrees(angle));
    float dy = radius/2 * sin(degrees(angle));
    
   return new PVector((center.x+dx), (center.y+dy));
 }
 public void walkingTentaclePlacement(){//atempt to be able to pick leg placement by using.lerp to pick points between corners which will virtually outline the perimeter THEN we have to try and get a guess and figure out how to determine a range using dist() to make it so there has to be a certain amount of distance inbetween each choice for a step
    //also using normalize() then picking the x or y with the higher value can help with choosing how to pathfind around an object since u cant go through naturally so the value thats the largest will let you know how to go around 
   
   
 }
  public void setTarget(Terrain newTarget){
     for( int i = 0; i < tentacles.size()-1; i++){
    tentacles.get(i).finalTarget = (newTarget);
     }
    
   }
   
   
   public void setTarget(int tIndex,Terrain newTarget){
      tentacles.get(tIndex).finalTarget = (newTarget);
  }
}
