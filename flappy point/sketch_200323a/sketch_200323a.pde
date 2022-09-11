bird bird;
float red,green,blue;
ArrayList<Pipes> pipe = new ArrayList();

void setup() {
  size(2000, 1000);
  background(255, 255, 255);
  bird = new bird();
  pipe.add(new Pipes());
  pickColor();
}


void draw() {
  
  background(red,green,blue);
  
  for (int i = 0; i<pipe.size();i++){
    
    if (bird.hit(pipe.get(i))){
      pipe.get(i).changeColor();
      pickColor();
    }
    
    pipe.get(i).update();
    pipe.get(i).show();
          
    if (pipe.get(i).offScreen()){
      pipe.remove(i);
    }
  }
  
  bird.update();
  bird.show();
  
  if(frameCount % 60 == 0){
    pipe.add(new Pipes());
  }
  
}

void pickColor(){
  red = random(255);
  green = random(255);
  blue = random(255);
}

void mousePressed(){
  
}

void keyPressed(){
  if(key == ' '){
    bird.up();
  }
}
