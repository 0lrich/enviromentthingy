class Body {
 float frogx = 0;
float frogy = 0;
float radius = 100;
PVector leg;
 PShape Frog;
  
 Body(float x, float y, float r){
  frogx = x;
  frogy = y;
  radius = r;
  Frog = createShape(ELLIPSE, 0, 0, radius, radius);
  leg = new PVector(frogx, frogy);
 }
 void update(){
 if (keyPressed) {
    if (key == 'd' || key == 'D') {
      
      frogx += 10;
      
    }
 
 
    if (key == 'a' || key == 'A') {
      
      frogx -= 10;
    

    }
    if (key == 's' || key == 'S') {
      
      frogy += 10;

    }
    if (key == 'w' || key == 'W') {
      
      frogy -= 10;

    }
          leg.set(frogx, frogy);

 }
 }
 void show(){
   shape(Frog, frogx, frogy);
   update();
 }
 
  
}
