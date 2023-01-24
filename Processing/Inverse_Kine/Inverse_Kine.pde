
Tentacle t;
PShape Frog;

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
  t = new Tentacle(120,300);
  tl = new PVector(frogx,frogy);
  speed = 1;
  //TESTING
  
  Frog = createShape(ELLIPSE, 0, 0, radius, radius);
  
  

  //TESTING
}
void draw() {
  background(51);
  //System.out.println(square.getVertex(0).x);
 // if(square.getVertex(0).x> 1000){
 //   speed = -5;
    
  
 // }else if(square.getVertex(0).x<100){
 //speed = 5;
  
//}
if(frogx != 1200){
//frogx = frogx+speed;
translate(10,0);
}else{
  
}
  t.update();
  t.setBase(tl);
  
  t.show();
  shape(Frog);
//shape(square, 0, 0);
}

//TOP LEFT == (0,0)
