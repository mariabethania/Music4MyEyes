class Particle1 {
  
  PVector location;
  PVector velocity;
  PVector acceleration;
  PVector col;
  float lifeSpan = 255;
  float z;
  float n = 0;
  float acc1 = 1;

  Particle1(int x1, int y1, int freq, float norm) {
        //for(int i = 0; i < (spikex*spikey);i++) {
          //location = new PVector(random(x1,x1+(areax*4)),random(y1,y1+(areay*4)),0);//x1+(areax*2),y1+(areay*2),0);
          //velocity = new PVector(random(-acc1,acc1),random(-acc1,acc1),fft.getBand(freq)*norm);
          //acceleration = new PVector(random(-acc1,acc1),random(-acc1,acc1),-20);
          location = new PVector(x1+(areax*2),y1+(areay*2),0);//x1+(areax*2),y1+(areay*2),0);
          velocity = new PVector(random(-acc1,acc1),random(-acc1,acc1),fft.getBand(freq)*norm);
          acceleration = new PVector(random(-acc1,acc1),random(-acc1,acc1),-20);
          //col = new PVector(150,100,255);
          col = new PVector(0,240,200);
   if (velocity.z > 150) {
     velocity.z = 150;
   } //else if (gama < 20) {
     //gama = 20;
   //}
   //velocity.z +=010;
          
        //}
  }  
  
  void update(){
    velocity.add(acceleration);
    location.add(velocity);
    lifeSpan -= 5;
//println(velocity.z);
    //col.x += location.z/10;
    //col.y += location.z/5;
    //col.z -= location.z;

    col.x += location.z*10;
    col.y -=location.z/10;
    col.z -= location.z*4;
}
  
  boolean isDead() {
    if (lifeSpan <= 0 || location.z < 0) {
     return true;
  } 
  else {
      return false;
    }
  }
  
  void display() {
     
    //stroke(0,lifeSpan);
    //strokeWeight(2);
    pushMatrix();
    noStroke();
    //fill(255);
    fill(location.z,150+location.z,150+location.z,(location.z+1)*5);
    //fill(col.x,col.y,col.z, lifeSpan);
    //fill(255,255,255,lifeSpan);
    translate((location.x),(location.y),location.z);
    if (location.z > 0) {
    sphere(3);
    }
    popMatrix();
    }
    
}
