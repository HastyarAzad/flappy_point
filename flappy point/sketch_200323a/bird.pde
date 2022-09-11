class bird{
  
 float x = 100;
 float y = height/2;
 float velocity = 0;
 float gravity = 0.8;
 float lift = -25;
 
 
 boolean hit(Pipes pipe){
   if (y < pipe.top || y > pipe.bottom){
     if (x > pipe.x && x < pipe.x + pipe.w){
       return true;
     }else{
     return false;
     }
   }else{
     return false;
   }
 }
 
 void show(){
   ellipse(x,y,35,35);
   fill(0);
 }
 
 void update(){
   velocity += gravity;
   velocity *= 0.9;
   y += velocity;
   
   if (y > height){
     y = height;
     velocity = 0;    
   }
   
   if (y < 0){
     y = 0;
     velocity = 0;
   }
   
 }
 
 void up(){
   velocity += lift;
 }
 
 
}
