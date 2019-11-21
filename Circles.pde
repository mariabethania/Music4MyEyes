class Circles {
  
  //int x;
  //int y;
  //int z;
  float gama;
  float rad = 1;
  float lifeSpan = 255;
  
  PVector radio;
  PVector grow;
  PVector pos;
  
 Circles(int ix, int iy, int freq, float norm) {
   //for (int i = 0; i < (spikex*spikey); i++) {
   pos = new PVector(ix+(areax*2),iy+(areay*2),0);
   radio = new PVector(0,0,0);
   grow = new PVector(10,10,0);
   gama = fft.getBand(freq) * norm;
   if (gama > 240) {
     gama = 240;
   } //else if (gama < 20) {
     //gama = 20;
   //}
   gama +=15;
 }
  
 void update(){
   radio.add(grow);
   //pos = 
   lifeSpan -= 20;//fft.getBand(gama);
   
 }

  boolean isDead() {
    if (lifeSpan <= 0) {
     return true;
  } 
  else {
      return false;
    }
  }

 void display() {
   noFill();
   stroke(0,gama,gama,lifeSpan);
//   pushMatrix();
//   translate(0,0,0);
   ellipseMode(CENTER);
   ellipse(pos.x,pos.y,radio.x,radio.y);
//   popMatrix();
 }
  
}
