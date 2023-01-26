Body FR;
Tentacle t;


PVector tl;
float tr;
float speed;
float frogx = 200;
float frogy = 200;
float radius = 100;
//PVector bl = (340, 300);
//PVector br = (120, 300);
void setup() {
  size(1200, 800);
  FR = new Body(200, 200, 100);
  t = new Tentacle(frogx,frogy);
  
  tl = new PVector(frogx,frogy);
  
  speed = 1;
  //TESTING
  
 
  
  

  //TESTING
}
void draw() {
  background(51);
  
  t.update();
  t.setBase(FR.leg);
  t.show();
  FR.update();
  FR.show();

}

//TOP LEFT == (0,0)
