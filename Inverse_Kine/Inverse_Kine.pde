Body FR;
Terrain apple;

Terrain rock;
Terrain rock2;
PVector tl;
float tr;
float speed;
static int tentacleID;

void setup() {
    tentacleID=0;
  size(1200, 800);


  apple = new object(0, 0, 20, 20);
  System.out.println(apple.placement.x);
  
  rock = new Terrain(500,300, 150, 50);
  rock2 = new Terrain(0, 500, 700, 50);
  speed = 1;
    FR = new Body(200, 200, 50);
  //TESTING
  
 
  
  

  //TESTING
}
void draw() {
  background(51);
  
  
  FR.update();
  FR.show();
  apple.show();
  rock.update();
  rock.show();
  rock2.update();
  rock2.show();
}

//TOP LEFT == (0,0)
