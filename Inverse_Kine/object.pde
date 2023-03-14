class object extends Terrain{



   
   object(float x, float y, float w, float h){
    super(x,y,w,h);
    
   }
 void update(){
 if (keyPressed) {
    if (key == 'l' || key == 'L') {
      
      placement.x += 5;
      
    }
 
 
    if (key == 'j' || key == 'J') {
      
     placement.x -= 5;
    

    }
    if (key == 'K' || key == 'k') {
      
      placement.y += 5;

    }
    if (key == 'I' || key == 'i') {
      
      placement.y -= 5;

    }
    


 }
 }


 
  
}
