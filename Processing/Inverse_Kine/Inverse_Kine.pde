
Tentacle t;
PShape square;

PVector tl;
float tr;
float speed;

//PVector bl = (340, 300);
//PVector br = (120, 300);
void setup() {
  size(1200, 800);
  t = new Tentacle(120,300);
  tl = new PVector(120,300);
  speed = 1;
  //TESTING
 
  //TESTING
}
void draw() {
  background(51);
  System.out.println(square.getVertex(0).x);
  if(square.getVertex(0).x> 1000){
    speed = -5;
    
  
  }else if(square.getVertex(0).x<100){
 speed = 5;
  
}
tl.x= tl.x+speed;
  t.update();
  t.setBase(tl);
  
  t.show();

shape(square, 0, 0);
}

//TOP LEFT == (0,0)
