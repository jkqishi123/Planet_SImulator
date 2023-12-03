

class NaturalDisaster{
  String name;
  int damage, time, maxTime;
  PVector pos, vel, offsetpos;
  boolean occuring;
  float size, speed;
  
  NaturalDisaster(String n, int d, float s, float sp, int t) {
    this.name = n;
    this.damage = d;
    this.occuring = false;
    this.pos= new PVector(0,0);
    this.vel = new PVector(0,0);
    this.size = s;
    this.speed = sp;
    this.time = t;
    this.maxTime = t;
    this.offsetpos = new PVector(0,0);
    
  }
  
  void drawMe(){
    if(this.occuring){
      
      if(this.name.equals("meteor")){
        float dist = dist(this.pos.x, this.pos.y, width/2, height/2);
        if(dist<AtRadius){
          stroke(255, 165, 0);
        }
        else{
        noStroke();
        }
        
        fill(100);
        circle(this.pos.x, this.pos.y, this.size);
        
      }
      else if (this.name.equals("tornado")){  
        noStroke();
        fill(150);
        circle(this.pos.x, this.pos.y, this.size);
        
        float start = (PI/12)*frameCount;
        float stop = start+PI/2;
        stroke(0);
        strokeWeight(1);
        noFill();
        arc(this.pos.x, this.pos.y, this.size-5, this.size-5, start, stop);
        arc(this.pos.x, this.pos.y, this.size-15, this.size-15, start-PI/3, stop-PI/4);
        
      }
      else if (this.name.equals("earthquake")){
        stroke(0);
        strokeWeight(2);
        line(this.offsetpos.x, this.offsetpos.y, this.offsetpos.x+10, this.offsetpos.y+4);
        line(this.offsetpos.x+10, this.offsetpos.y+4, this.offsetpos.x+20, this.offsetpos.y+2);
        line(this.offsetpos.x, this.offsetpos.y, this.offsetpos.x-13, this.offsetpos.y+4);
        
        strokeWeight(1);
        line(this.offsetpos.x+10, this.offsetpos.y+4, this.offsetpos.x+14, this.offsetpos.y+10);
        line(this.offsetpos.x+14, this.offsetpos.y+10, this.offsetpos.x+11, this.offsetpos.y+14);
        line(this.offsetpos.x-13, this.offsetpos.y+4, this.offsetpos.x-20, this.offsetpos.y-3);
        line(this.offsetpos.x, this.offsetpos.y, this.offsetpos.x-1, this.offsetpos.y-6);
        line(this.offsetpos.x-1, this.offsetpos.y-6, this.offsetpos.x-7, this.offsetpos.y-12);
        line(this.offsetpos.x-13, this.offsetpos.y+4, this.offsetpos.x-18, this.offsetpos.y+10);
        line(this.offsetpos.x-18, this.offsetpos.y+10, this.offsetpos.x-18, this.offsetpos.y+17);
        line(this.offsetpos.x+20, this.offsetpos.y+2, this.offsetpos.x+27, this.offsetpos.y-6);
        
      }
      else{//if hurricane
        noStroke();
        fill(200);
        circle(this.pos.x, this.pos.y, this.size);
        fill(0);
        circle(this.pos.x, this.pos.y, 5);
        
        float start = (PI/12) * frameCount;
        float stop = start+(TWO_PI/3);
        stroke(0);
        strokeWeight(1);
        noFill();
        arc(this.pos.x, this.pos.y, this.size-10, this.size-10, start, stop);
        arc(this.pos.x, this.pos.y, this.size-19, this.size-19, start-PI/2, stop-PI/4);
        arc(this.pos.x, this.pos.y, this.size-28, this.size-28, start-PI/4, stop-PI/2);
      }
      
    }
  }
  
  void move(){
    if(this.occuring){
      if(this.name.equals("meteor")){
         findDirection(this);
         float dist = dist(this.pos.x, this.pos.y, width/2, height/2);
         if(dist<AtRadius){
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
      else if(this.name.equals("tornado") || this.name.equals("hurricane")){
         randomDirection(this);
         float dist = dist(this.pos.x, this.pos.y, width/2, height/2);
         if(dist>350/2-this.size){
          findDirection(this); 
         }
         if(frameCount%60 ==0){
         this.time--;
         }
         if(this.time ==0)
           this.reset();
         
         this.pos.add(this.vel);
      }
      else if(this.name.equals("earthquake")){
        if(frameCount%60==0)
          this.time--;
        if(this.time==0)
          this.reset();
        float offsetx = random(-3,3);
        float offsety = random(-3,3);
        this.offsetpos = new PVector(this.pos.x+offsetx, this.pos.y+offsety);
        
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
    
    else{
      float randx = random(width/2-350/2, width/2+350/2);
      float randy = random(height/2-350/2, height/2+350/2);
      float dist = dist(randx, randy, width/2, height/2);
      while(dist>350/2-60){
        randx = random(width/2-350/2, width/2+350/2);
        randy = random(height/2-350/2, height/2+350/2);
        dist = dist(randx, randy, width/2, height/2);
      }
      this.pos = new PVector(randx, randy);
    }
  }
  
  void reset() {
    if(this.name.equals("meteor")){
      this.size = random(40, 60);
    }
    else if(this.name.equals("tornado")){
      this.size = random(20,30);
      this.maxTime = round(random(6, 10));
    }
    else if(this.name.equals("hurricane")){
      this.size = random(40, 50);
      this.maxTime = round(random(6, 10));
    }
    else{
      this.maxTime = round(random(4,6)); 
    }
    this.vel = new PVector(0,0);
    this.pos = new PVector(0,0);
    this.occuring = false;
    this.time = this.maxTime;
  }
  
  
}

//helper funtions outside the class
void chooseDisaster(float ch){
  //boolean disasterStarted = false; //so that we have 1 disaster at a time
  //for(NaturalDisaster d : disasters){
  //  if(d.occuring)
  //    disasterStarted = true;
  //}
  
  // if(!disasterStarted){
    int random = round(random(100)); //random chance of disaster occuring
    if(random < ch){
      int randIndex = round(random(disasters.length-1)); //randomly chooses one of the natural disasters. (some have a higher chance of occuring)
      if(!disasters[randIndex].occuring)
          disasters[randIndex].startDisaster();
      disasters[randIndex].occuring = true;
    }
 //}
}

void findDirection(NaturalDisaster d){
  PVector center = new PVector(width/2, height/2);
  PVector displacement = PVector.sub(center, d.pos);
  float angle = displacement.heading();
  d.vel = new PVector(d.speed*cos(angle), d.speed*sin(angle));
  
}

void randomDirection(NaturalDisaster d) {
  float randNum = random(100);
  if(randNum<1) {
    float randAngle = random(0, TWO_PI);
    d.vel = new PVector(d.speed*cos(randAngle), d.speed*sin(randAngle));
  }
  
}
