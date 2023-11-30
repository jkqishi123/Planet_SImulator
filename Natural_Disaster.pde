

class NaturalDisaster{
  String name;
  int damage;
  PVector pos, vel;
  boolean occuring;
  float size, speed;
  
  NaturalDisaster(String n, int d, float s) {
    this.name = n;
    this.damage = d;
    this.occuring = false;
    this.pos= new PVector(0,0);
    this.vel = new PVector(0,0);
    this.size = s;
    this.speed = random(3, 5);
    
  }
  
  void drawMe(){
    if(this.occuring){
      
      if(this.name.equals("meteor")){
        float dist = dist(this.pos.x, this.pos.y, width/2, height/2);
        if(dist<atmosphere.AtRadius){
          stroke(255, 165, 0);
        }
        else{
        noStroke();
        }
        fill(100);
        circle(this.pos.x, this.pos.y, this.size);
        
      }
      else if (this.name.equals("tornado")){
      }
      else if (this.name.equals("earthquake")){
      }
      else if (this.name.equals("tsunami")){
      }
      else{//if hurricane
      }
      
    }
  }
  
  void move(){
    if(this.occuring){
      if(this.name.equals("meteor")){
         findDirection(this);
         float dist = dist(this.pos.x, this.pos.y, width/2, height/2);
         if(dist<atmosphere.AtRadius){
           this.size -= 3; 
           if(this.size <=0){
             this.reset();
           }
         }
         if(dist-this.size/2<350/2){
           this.reset();
           println("a meteor has hit");
         }
         this.pos.add(this.vel);
      }
      
    }
    
  }
  
  void startDisaster() {
    if(this.name.equals("meteor")){
      float randx = random(-70, 1070); //meteor will start off screen
      float randy = random(-70, 670);
      while((0<randx && randx<1000) && (0<randy && randy<600)){//while random x and y are on screen.
        randx = random(-100, 1100);
        randy = random(-100, 700);
      }
      this.pos = new PVector(randx, randy);
    }
    
  }
  
  void reset() {
    this.size = random(40, 60);
    this.vel = new PVector(0,0);
    this.pos = new PVector(0,0);
    this.occuring = false;
  }
  
  
}

void chooseDisaster(float ch){
  int random = round(random(100)); //random chance of disaster occuring
  if(random < ch){
    int randIndex = round(random(disasters.length-1)); //randomly chooses one of the natural disasters. (some have a higher chance of occuring)
    if(!disasters[randIndex].occuring)
        disasters[randIndex].startDisaster();
    disasters[randIndex].occuring = true;
  }
  
}

void findDirection(NaturalDisaster d){
  PVector center = new PVector(width/2, height/2);
  PVector displacement = PVector.sub(center, d.pos);
  float angle = displacement.heading();
  d.vel = new PVector(d.speed*cos(angle), d.speed*sin(angle));
  
  
}
