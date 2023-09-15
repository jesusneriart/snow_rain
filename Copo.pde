class Copo{
  int size;
  float velocity;
  float posX;
  float posY;
  boolean caer;
  
  Copo(int tsize, float tvelocity){
    size = tsize;
    velocity = tvelocity;
    posX = random(0,800);
    posY = 0; 
    caer = true;
  }
  
  void existir(){
    fill(255, 255, 255, 150);
    circle(posX, posY, size);
    
    
    
  }
  
  void caer(){
    if (posY >= 600){
      posY = 0;
    }
    if (posX >= 800){
      posX = 0;
    }
    
    if (caer){
      posY = posY + velocity;
      posX = posX + velocity;
    }
  }
  
  void detener(){
    caer = false;
  }
  
  void iniciar(){
    caer = true;
  }
  
  
  
   
    
}
