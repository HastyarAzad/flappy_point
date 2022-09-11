class Pipes{
  float randomTop = random(height*0.1,height*0.7);
  float space = 250;
  float x = width;
  float speed = 5;
  float top = randomTop;
  float bottom = randomTop + space;
  float w = 30;
  
  
  void show(){
    rect(x,0,w,top); //<>//
    rect(x,bottom,w,height-bottom);
    fill(0);
  }
  
  void changeColor(){
    fill(255,0,0);
  }
  
  boolean offScreen(){
    if(this.x < -1000){
      return true;
    }else{
      return false;
    }
  }
  
  void update(){
    x -= speed;
  }
  
}
