import ddf.minim.analysis.*;
import ddf.minim.*;

Minim       minim;

AudioPlayer song;
AudioPlayer song1;
AudioPlayer song2;
AudioPlayer song3;
AudioPlayer song4;
AudioPlayer song5;
AudioPlayer song6;
AudioPlayer song7;
AudioPlayer song8;
AudioPlayer song9;
AudioPlayer song10;
AudioPlayer song11;
AudioPlayer song12;
AudioPlayer song13;
AudioPlayer song14;
AudioPlayer song15;
AudioPlayer song16;
AudioPlayer song17;
AudioPlayer song18;
AudioPlayer song19;
AudioPlayer song20;
File[] playList = new File[20];

AudioInput input;
FFT         fft;

ParticleSystem1 ps1;


PFont f;                // STEP 1 Declare PFont variable

String [] noteName = {"C","C#","D","D#","E","F","F#","G","G#","A","A#","B"};  
String [] octaveNum = {"0","1","2","3","4","5","6","7","8","9","10"};
String [][] tecla =new String [12][10];
String [][] noteNameOct = new String [132][40];
//String [] playList;
String[]  saveMySettings = new String[40];

String title = " ";
String title1,title2,title3,title4,title5,title6,title7,title8,title9,title10;
String title11,title12,title13,title14,title15,title16,title17,title18,title19,title20;

int w = 800;
int h = 600;
int cols, rows;
int rowsPan;
int colsPan;
int scl = 4;
//int sclInc= 10;
int areax;
int areaxPan;
int areay;
int areayPan;
int xPos, yPos, zPos;
int noteX;
int noteY;
int spikex, spikey;
int ratonX,ratonY;
int depth1 = 20, depth2 = 30;
int theme = 1;
int songCount = 0;
//int channel,pitch, velocity;
float [] [] terrain;
float [] [] flagterrain;
float [] [] flatterrain;
float [] [] colorterrain;
float [][] noteArray = new float [w/(3)][h/(3)];
float [][] colorArray = new float [w/(3)][h/(3)];
float [][] pyramidArray = new float [w/(3)][h/(3)];
float [][] flagArray = new float [w/(3)][h/(3)];
float [][] cubeArray = new float [w/(3)][h/(3)];
float [][] cubeArray1 = new float [w/(3)][h/(3)];
float [][] rayoArray = new float [w/(3)][h/(3)];
float strkR;
float strkG;
float strkB;
float mod;
float zBackup = 0.0;
float zRotate = 0.0;
float xBackup = PI/3;
float xRotate = PI/3;
float yRotate = PI/3;
float xPanBackup;
float xPan = 2.05;
float zLevel = -20;
float zLevelBackup = 135;
float zoomBackup = 2;
float zoom = 2;
float flying;
float fly;
float textRotate = PI/2;
float octaveInc=0.1;
float octave;
float posx,posx1,posx2,posx3,posx4,posx5,posx6,posx7,posx8,posx9,posx10;
float posx11,posx12,posx13,posx14,posx15,posx16,posx17,posx18,posx19,posx20;
float fxy ;
float passXoff,passYoff, passFX, passFY;
float vol = 1;
float amp = 1 ;
float ampInc = 0.001;
float red = 0;
float green = 0;
float blue = 0;
float start = 0;
float amt = 0.05;
float smooth;
boolean smoothBool = false;
boolean playing;
boolean showMenu;
boolean showTitle;

File MySettings;

void setup() {
  size(1200,640, P3D);
  
  minim = new Minim(this);

  input = minim.getLineIn();

  ps1 = new ParticleSystem1();
  
  song1 = minim.loadFile("1. let it Be - OsoX.mp3", 512);
  title1 = "1. let it Be - OsoX.mp3";
  song2 = minim.loadFile("2. drop in the sea - OsoX.mp3", 1024);
  title2 = "2. drop in the sea - OsoX.mp3";
  song3 = minim.loadFile("3. ein (escape) from the Quantic Dreams IV soundtrack- OsoX.mp3", 1024);
  title3 = "3. ein (escape) from the Quantic Dreams IV soundtrack- OsoX.mp3";
  song4 = minim.loadFile("4. journey  from the Quantic Dreams IV soundtrack - OsoX.mp3", 1024);
  title4 = "4. journey  from the Quantic Dreams IV soundtrack - OsoX.mp3";
  song5 = minim.loadFile("5. x in space - OsoX.mp3", 1024);
  title5 = "5. x in space - OsoX.mp3";
  song6 = minim.loadFile("12. arcadeBo_IO_jamming.mp3", 1024);
  title6 = "12. arcadeBo_IO_jamming.mp3";
  song7 = minim.loadFile("The Star-Spangled Banner (for Band and Optional Choir) Score & Sound.mp3", 1024);
  title7 = "The Star-Spangled Banner (for Band and Optional Choir) Score & Sound.mp3";
  //song8 = minim.loadFile("12. arcadeBo_IO_jamming.mp3", 1024);
  song8 = minim.loadFile("6. the tower.mp3", 1024);
  title8 = "6. the tower.mp3";
  //song9 = minim.loadFile("", 1024);
  title9 = "(empty)";
  //song10 = minim.loadFile("", 1024);
  title10 = "(empty)";
  title11 = "(empty)";
  title12 = "(empty)";
  title13 = "(empty)";
  title14 = "(empty)";
  title15 = "(empty)";
  title16 = "(empty)";
  title17 = "(empty)";
  title18 = "(empty)";
  title19 = "(empty)";
  title20 = "(empty)";
  //song = minim.loadFile("1. let it Be - OsoX.mp3", 1024);
  //title = "1. let it Be - OsoX.mp3";

  fft = new FFT(input.bufferSize(), input.sampleRate());

  fft = new FFT(song1.bufferSize(), song1.sampleRate());
  fft = new FFT(song2.bufferSize(), song2.sampleRate());
  fft = new FFT(song3.bufferSize(), song3.sampleRate());
  fft = new FFT(song4.bufferSize(), song4.sampleRate());
  fft = new FFT(song5.bufferSize(), song5.sampleRate());
  fft = new FFT(song6.bufferSize(), song6.sampleRate());
  fft = new FFT(song7.bufferSize(), song7.sampleRate());
  fft = new FFT(song8.bufferSize(), song8.sampleRate());
  
  
  cols = w / scl;
  colsPan = cols;
  spikex = 8;
  areax = cols/spikex;
  areaxPan = areax;

  rows = h / scl;
  rowsPan = rows;
  spikey = 8;
  areay = rows/spikey;
  areayPan =areay;

terrain = new float[cols][rows];
flatterrain = new float[cols][rows];
colorterrain = new float[cols][rows];
flagterrain = new float[cols][rows];


loadPreferences();
song1.play();

}

void draw() {
background(0);//red,green,blue);

//myPlayList();
fft.forward(input.mix);
mouseOver();
if (showMenu) {
int baja = 120;
int sube = 0;
int subeBaja = 0;
for (int i = 1; i < 20; i++) {   //shows songs menu
    stroke(0);
    fill(baja,subeBaja,sube);
    if (i < 8){subeBaja += i*6;} else {subeBaja -= i;}
    rect((width/20)*(i-1),0,(width/20*1)+width/20,height/30);
    textSize(16);
    text(i,(width/20)*(i-1),height/30);
    baja -= i*2;
    sube += i;
}

for (int i = 1; i < 21; i++) {   //shows songs menu
    fill(255);
    //if (i == 20) {text("PList...",((width/20)*19+5),15);}
    //  else {
      text(i,((width/20)*(i-1))+width/50,15); //}
}
}
// progress bar stuff
  posx1 = map(song1.position(), 0, song1.length(), 0, width);
  posx2 = map(song2.position(), 0, song2.length(), 0, width);
  posx3 = map(song3.position(), 0, song3.length(), 0, width);
  posx4 = map(song4.position(), 0, song4.length(), 0, width);
  posx5 = map(song5.position(), 0, song5.length(), 0, width);
  posx6 = map(song6.position(), 0, song6.length(), 0, width);
  if (song7  == null){} else posx7  = map(song7 .position(), 0, song7 .length(), 0, width);
  if (song8  == null){} else posx8  = map(song8 .position(), 0, song8 .length(), 0, width);
  if (song9  == null){} else posx9  = map(song9 .position(), 0, song9 .length(), 0, width);
  if (song10 == null){} else posx10 = map(song10.position(), 0, song10.length(), 0, width);
  if (song11  == null){} else posx11  = map(song11 .position(), 0, song11 .length(), 0, width);
  if (song12  == null){} else posx12  = map(song12 .position(), 0, song12 .length(), 0, width);
  if (song13  == null){} else posx13  = map(song13 .position(), 0, song13 .length(), 0, width);
  if (song14  == null){} else posx14  = map(song14 .position(), 0, song14 .length(), 0, width);
  if (song15  == null){} else posx15  = map(song15 .position(), 0, song15 .length(), 0, width);
  if (song16  == null){} else posx16  = map(song16 .position(), 0, song16 .length(), 0, width);
  if (song17  == null){} else posx17  = map(song17 .position(), 0, song17 .length(), 0, width);
  if (song18  == null){} else posx18  = map(song18 .position(), 0, song18 .length(), 0, width);
  if (song19  == null){} else posx19  = map(song19 .position(), 0, song19 .length(), 0, width);
  if (song20  == null){} else posx20  = map(song20 .position(), 0, song20 .length(), 0, width);
  //if (song  == null){} else posx  = map(song .position(), 0, song .length(), 0, width);



  fill(0,0,90,255);
  noStroke();
  rect(0,height-10,width,height);
                                  // shows the song playing position
  fill(0,125,0);
  //rect(0, height-10, posx, height);
  rect(0, height-10, posx1, height);
  rect(0, height-10, posx2, height);
  rect(0, height-10, posx3, height);
  rect(0, height-10, posx4, height);
  rect(0, height-10, posx5, height);
  rect(0, height-10, posx6, height);
  rect(0, height-10, posx7, height);
  rect(0, height-10, posx8, height);
  rect(0, height-10, posx9, height);
  rect(0, height-10, posx10, height);
  rect(0, height-10, posx11, height);
  rect(0, height-10, posx12, height);
  rect(0, height-10, posx13, height);
  rect(0, height-10, posx14, height);
  rect(0, height-10, posx15, height);
  rect(0, height-10, posx16, height);
  rect(0, height-10, posx17, height);
  rect(0, height-10, posx18, height);
  rect(0, height-10, posx19, height);
  rect(0, height-10, posx20, height);

textSize(14);
fill(255);

if (song1.isPlaying()) {fft.forward(song1.mix);   text(title,10,height);text((((song1.length()-song1.position())/1000)/60)+":"+(((song1.length()-song1.position())/1000)%60),width-40,height);}
if (song2.isPlaying()) {fft.forward(song2.mix);   text(title,10,height);text((((song2.length()-song2.position())/1000)/60)+":"+(((song2.length()-song2.position())/1000)%60),width-40,height);}
if (song3.isPlaying()) {fft.forward(song3.mix);   text(title,10,height);text((((song3.length()-song3.position())/1000)/60)+":"+(((song3.length()-song3.position())/1000)%60),width-40,height);}
if (song4.isPlaying()) {fft.forward(song4.mix);   text(title,10,height);text((((song4.length()-song4.position())/1000)/60)+":"+(((song4.length()-song4.position())/1000)%60),width-40,height);}
if (song5.isPlaying()) {fft.forward(song5.mix);   text(title,10,height);text((((song5.length()-song5.position())/1000)/60)+":"+(((song5.length()-song5.position())/1000)%60),width-40,height);}
if (song6.isPlaying()) {fft.forward(song6.mix);   text(title,10,height);text((((song6.length()-song6.position())/1000)/60)+":"+(((song6.length()-song6.position())/1000)%60),width-40,height);}
if (song7 == null) {} else if (song7.isPlaying()) {fft.forward(song7.mix); text(title,10,height);text((((song7.length()-song7.position())/1000)/60)+":"+(((song7.length()-song7.position())/1000)%60),width-40,height);}
if (song8 == null) {} else if (song8.isPlaying()) {fft.forward(song8.mix); text(title,10,height);text((((song8.length()-song8.position())/1000)/60)+":"+(((song8.length()-song8.position())/1000)%60),width-40,height);}
if (song9 == null) {} else if (song9.isPlaying()) {fft.forward(song9.mix); text(title,10,height);text((((song9.length()-song9.position())/1000)/60)+":"+(((song9.length()-song9.position())/1000)%60),width-40,height);}
if (song10 == null) {} else if (song10.isPlaying()) {fft.forward(song10.mix); text(title,10,height);text((((song10.length()-song10.position())/1000)/60)+":"+(((song10.length()-song10.position())/1000)%60),width-40,height);}
if (song11 == null) {} else if (song11.isPlaying()) {fft.forward(song11.mix); text(title,10,height);text((((song11.length()-song11.position())/1000)/60)+":"+(((song11.length()-song11.position())/1000)%60),width-40,height);}
if (song12 == null) {} else if (song12.isPlaying()) {fft.forward(song12.mix); text(title,10,height);text((((song12.length()-song12.position())/1000)/60)+":"+(((song12.length()-song12.position())/1000)%60),width-40,height);}
if (song13 == null) {} else if (song13.isPlaying()) {fft.forward(song13.mix); text(title,10,height);text((((song13.length()-song13.position())/1000)/60)+":"+(((song13.length()-song13.position())/1000)%60),width-40,height);}
if (song14 == null) {} else if (song14.isPlaying()) {fft.forward(song14.mix); text(title,10,height);text((((song14.length()-song14.position())/1000)/60)+":"+(((song14.length()-song14.position())/1000)%60),width-40,height);}
if (song15 == null) {} else if (song15.isPlaying()) {fft.forward(song15.mix); text(title,10,height);text((((song15.length()-song15.position())/1000)/60)+":"+(((song15.length()-song15.position())/1000)%60),width-40,height);}
if (song16 == null) {} else if (song16.isPlaying()) {fft.forward(song16.mix); text(title,10,height);text((((song16.length()-song16.position())/1000)/60)+":"+(((song16.length()-song16.position())/1000)%60),width-40,height);}
if (song17 == null) {} else if (song17.isPlaying()) {fft.forward(song17.mix); text(title,10,height);text((((song17.length()-song17.position())/1000)/60)+":"+(((song17.length()-song17.position())/1000)%60),width-40,height);}
if (song18 == null) {} else if (song18.isPlaying()) {fft.forward(song18.mix); text(title,10,height);text((((song18.length()-song18.position())/1000)/60)+":"+(((song18.length()-song18.position())/1000)%60),width-40,height);}
if (song19 == null) {} else if (song19.isPlaying()) {fft.forward(song19.mix); text(title,10,height);text((((song19.length()-song19.position())/1000)/60)+":"+(((song19.length()-song19.position())/1000)%60),width-40,height);}
if (song20 == null) {} else if (song20.isPlaying()) {fft.forward(song20.mix); text(title,10,height);text((((song20.length()-song20.position())/1000)/60)+":"+(((song20.length()-song20.position())/1000)%60),width-40,height);}
//if (song == null) {} else if (song.isPlaying()) {fft.forward(song.mix); text(title,10,height);text((((song.length()-song.position())/1000)/60)+":"+(((song.length()-song.position())/1000)%60),width-40,height);}

//if (song == null){} else if (song.position() > (song.length()-1000)) {
//        songCount++;
//        title = playList[songCount].getAbsolutePath();
//        song = minim.loadFile(title, 1024);
//        fft = new FFT(song.bufferSize(), song.sampleRate());
//        song.play();  
//      }
 
noteOn();
  
translate(width/2, height/2);

keyPressed();  

float xVal = 0;
float yVal = 0;
if(theme == 7) {yVal = 0.03; xVal =0.01; flying -= 0.05;}
else {yVal = 0.04; xVal = 0.03; flying -= 0.05;}
/****************************************************************************************/
  //float yoff =flying;                    // generates terrain
  //for (int y = 0; y < rows; y++) {
  //  float xoff =0.01;
  //  for (int x = 0; x < cols; x++) {
  //    terrain[x][y] = map(noise(xoff,yoff),0,1,-20,30);   
  //    xoff += 0.03;
  //  }
  //  yoff += 0.05;
  //}
/******************************************************************************************/
  float yOff =flying;                    // generates terrain
  for (int y = 0; y < rows; y++) {
    float xOff =0.01;
    for (int x = 0; x < cols; x++) {

      terrain[x][y] = map(noise(xOff,yOff),0,1,-depth1,depth2);   
      flatterrain[x][y] = map(noise(xOff,yOff),0,1,0,0);   
      colorterrain[x][y] = map(noise(xOff,yOff),0,1,-20,20);   
      flagterrain[x][y] = map(noise(xOff,yOff),0,1,-depth1,depth2);   

      xOff += xVal;
    }
    yOff += yVal;
  }

translate(-w/xPan, -h/zoom,-zLevel);

int yDot = 0;
  for (int y = 0; y < rows-1; y++) {
    beginShape(TRIANGLE_STRIP);
int xDot =0;
    for (int x = 0; x < cols; x++) {
noFill();
if (theme == 1) {
//   depth1 =20;
  // depth2 = 30;
   //passXoff = 0.2;
   //passYoff = 0.2;
   //passFX = 0.05;
   //passFY = 0.05;
   //ampInc = 0.001;
 // xRotate = xBackup;
  //vol = 2;
  strkR =  (colorterrain[x][y]  +(noteArray[x][y]*4));// - noteArray[x][y]);
  strkG = (colorterrain[x][y]*6)+70-(noteArray[x][y])/2;// - noteArray[x][y]);
  strkB = -(colorterrain[x][y]*8)+30 - (noteArray[x][y]/2);// + noteArray[x][y]);// - noteArray[x][y]);
}

if (theme == 7 || theme ==8 || theme == 9) {
    if (x > (((areax*1.25)*(xDot/16))-2)){
      strkR=175;
      strkG=0;
      strkB=0;
    xDot++;

    } 
    else {
      strkR = 255;// - (cubeArray2[x][y]*4);// - noteArray[x][y]);
      strkG = 255;// - (cubeArray2[x][y]*4);// - noteArray[x][y]);
      strkB = 255;// + (cubeArray2[x][y]*8);// + noteArray[x][y]);// - noteArray[x][y]);
      
    }
  //}    

//littleStars(y,x);
}

if (theme == 8) {
  //xRotate = xBackup;
  //vol = 1;
      strkR = (colorterrain[x][y] + noteArray[x][y]);// - noteArray[x][y]);
      strkG = (colorterrain[x][y]+20 + noteArray[x][y]);// - noteArray[x][y]);
      strkB = (colorterrain[x][y]+20 + noteArray[x][y]);// + noteArray[x][y]);// - noteArray[x][y]);
}

if (theme == 2) {
  //xRotate = xBackup;
  //vol = 1;
      strkR = (colorterrain[x][y] +(noteArray[x][y])*4);// - noteArray[x][y]);
      strkG = (colorterrain[x][y]+25 +(noteArray[x][y]*20));// - noteArray[x][y]);
      strkB = ((colorterrain[x][y]+100) +(noteArray[x][y]*5));// + noteArray[x][y]);// - noteArray[x][y]);
}
if (theme == 4) {
      strkR = 100 +(colorArray[x][y]*8);// - noteArray[x][y]);
      strkG = 120+(colorArray[x][y])*4;// - noteArray[x][y]);
      strkB = 50 - (colorArray[x][y]);// + noteArray[x][y]);// - noteArray[x][y]);
  }
if (theme == 5) {
      strkR =  0 +(colorArray[x][y]*20);// - noteArray[x][y]);
      strkG = 0 +(colorArray[x][y])*12;// - noteArray[x][y]);
      strkB = 0 + (colorArray[x][y]*20);// + noteArray[x][y]);// - noteArray[x][y]);
  }
if (theme == 3) {
      strkR =  (colorterrain[x][y] +(noteArray[x][y])*10);// - noteArray[x][y]);
      strkG = (colorterrain[x][y] +(noteArray[x][y]*10));// - noteArray[x][y]);
      strkB =  ((colorterrain[x][y]+10) +(noteArray[x][y]*10));// + noteArray[x][y]);// - noteArray[x][y]);
  }
if (theme == 6) {
    if ((y < (rows) && x >= (areax*xDot)-2) || (x < cols && y == ((areay)*yDot))){// || (y == 0) || (y == areay*(1/12)) || (y == areay*(2/12)) || (y == areay*(3/12)) || (y == areay*4) || (y == areay*yDot) || (y == areay*yDot) || (y == areay*yDot) || (y == areay*5)|| (y == areay*6)|| (y == areay*7)|| (y == areay*8)|| (y == areay*9)|| (y == areay*10)|| (y == areay*11)|| (y == areay*12)|| (y == height-2)) {
    strkR=100;strkG=200;strkB=255; 
    xDot++;
    if (x >= cols-1) {yDot++;}
} 

else {
      strkR =  0  +(colorArray[x][y]*16);// - noteArray[x][y]);
      strkG =  0 + (colorArray[x][y]*4);// - noteArray[x][y]);
      strkB = 20 + (colorArray[x][y]*2);// + noteArray[x][y]);// - noteArray[x][y]);
  }
}

if (theme == 7) {
littleStars(y,x);
}

      stroke(strkR,strkG,strkB);
      
if (theme == 1) {      
      vertex(x*scl,y*scl, (colorterrain[x][y])*2 + noteArray[x][y]); 
      vertex(x*scl,(y+1)*scl, colorterrain[x][y+1]*2 + noteArray[x][y+1]); 
}
if (theme == 6) {

      vertex(x*scl,y*scl, (flatterrain[x][y]) + cubeArray[x][y]); 
      vertex(x*scl,(y+1)*scl, flatterrain[x][y+1] + cubeArray[x][y+1]); 
}
if (theme == 7) {
      vertex(x*scl,y*scl, (colorterrain[x][y]) + flagArray[x][y]); 
      vertex(x*scl,(y+1)*scl, colorterrain[x][y+1] + flagArray[x][y+1]); 
}
if (theme == 8) {
noStroke();
fill(strkR,strkG,strkB,100);
      vertex(x*scl,y*scl, (flatterrain[x][y])); 
      vertex(x*scl,(y+1)*scl, flatterrain[x][y+1]); 
}
//if (theme == 9) {

//      vertex(x*scl,y*scl, (colorterrain[x][y]) + flagArray[x][y]); 
//      vertex(x*scl,(y+1)*scl, colorterrain[x][y+1] + flagArray[x][y+1]); 
//}
if (theme == 2) {
      vertex(x*scl,y*scl, (colorterrain[x][y]) + noteArray[x][y]); 
      vertex(x*scl,(y+1)*scl, colorterrain[x][y+1] + noteArray[x][y+1]); 
}
if (theme == 4) {
      vertex(x*scl,y*scl, (terrain[x][y]) + pyramidArray[x][y]); 
      vertex(x*scl,(y+1)*scl, terrain[x][y+1]*2 + pyramidArray[x][y+1]); 
}
if (theme == 5) {
      vertex(x*scl,y*scl, (flatterrain[x][y]) + cubeArray1[x][y]); 
      vertex(x*scl,(y+1)*scl, flatterrain[x][y+1]*2 + (cubeArray1[x][y+1])); 
}
if (theme == 3) {
      vertex(x*scl,y*scl, (terrain[x][y])*2 - (rayoArray[x][y]/2)); 
      vertex(x*scl,(y+1)*scl, terrain[x][y+1]*2 - (rayoArray[x][y+1]/2)); 
}


//fill(255);
//xInc += areax;
  }
    endShape();
//yInc += areay;
}
//stars(0,300);
if (theme == 8) {
  ps1.runCircles();
  ps1.run();
fill(255);  
}

}

void noteOn() {      
amp = 1;
//float amp1 =1;
int freq = 0;
  for (int iy = 0; iy < rows-areay; iy += rows/spikey) {
    for (int ix = 0; ix < cols; ix += cols/spikex) {
      float yoff = 0.1; //noteArray [((note.pitch()%12)*sclInc)][((note.pitch()/12)*sclInc)];
      float fy = 0.1;
      float fy2 = 0.9;
      for (int y = iy; y < (iy+areay); y++) {
        //int incX = freq;
        float xoff = 0.1; //noteArray [((note.pitch()%12)*sclInc)][((note.pitch()/12)*sclInc)];
        float fx = 0.1;
        float fx2 = 0.9;
          for (int x = ix; x < (ix+areax); x++) {
if (!smoothBool) {
            noteArray[x][y] = map(noise(xoff,yoff),0,1,0,(fft.getBand(freq)*(fx)*(fy))*amp*vol);
            colorArray[x][y] = map(noise(xoff,yoff),0,1,0,((fft.getBand(freq))*fx*fy*(amp)))*(vol);
            cubeArray[x][y] = ((fft.getBand(freq))*(amp))*vol;  // third vertex arrays
            cubeArray1[x][y] = ((fft.getBand(freq))*(amp))*(fx)*(fy)*fx*fy*fx*fy*fx*fy*(vol);
            rayoArray[x][y] = map(noise(xoff,yoff),0,1,0,(fft.getBand(freq)*(fx)*(fy)*fx*fy*fx*fy)*amp*vol);
            pyramidArray[x][y] = fft.getBand(freq)*amp*(fx)*(fy)*vol;
            flagArray[x][y] = fft.getBand(freq)*amp*fx2*fy2*vol;
} else 
if (smoothBool) {
  smooth = lerp(0,fft.getBand(freq),amt);
//smooth = lerp(map(noise(xoff,yoff),0,1,0,(fft.getBand(freq)*(fx)*(fy))*amp*vol),map(noise(xoff,yoff),0,1,0,(fft.getBand(freq+1)*(fx)*(fy))*amp*vol),amt);
            noteArray[x][y] = map(noise(xoff,yoff),0,1,0,(smooth*(fx)*(fy))*amp*vol);
//smooth = lerp(map(noise(xoff,yoff),0,1,0,((fft.getBand(freq))*fx*fy*(amp)))*(vol),map(noise(xoff,yoff),0,1,0,((fft.getBand(freq+1))*fx*fy*(amp)))*(vol),amt);
            colorArray[x][y] = map(noise(xoff,yoff),0,1,0,(smooth*fx*fy*(amp)))*(vol);
//smooth = lerp(0,fft.getBand(freq),amt);
            cubeArray[x][y] = (smooth*(amp))*vol;  // third vertex arrays
//smooth = lerp(((fft.getBand(freq))*(amp))*(fx)*(fy)*fx*fy*fx*fy*fx*fy*(vol),((fft.getBand(freq+1))*(amp))*(fx)*(fy)*fx*fy*fx*fy*fx*fy*(vol),amt);
            cubeArray1[x][y] = ((smooth)*(amp))*(fx)*(fy)*fx*fy*fx*fy*fx*fy*(vol);
//smooth = lerp(map(noise(xoff,yoff),0,1,0,(fft.getBand(freq)*(fx)*(fy)*fx*fy*fx*fy)*amp*vol),map(noise(xoff,yoff),0,1,0,(fft.getBand(freq+1)*(fx)*(fy)*fx*fy*fx*fy)*amp*vol),amt);
            rayoArray[x][y] = map(noise(xoff,yoff),0,1,0,(smooth*(fx)*(fy)*fx*fy*fx*fy)*amp*vol);
//smooth = lerp(fft.getBand(freq)*amp*(fx)*(fy)*vol,fft.getBand(freq+1)*amp*(fx)*(fy)*vol,amt);
            pyramidArray[x][y] = smooth*amp*(fx)*(fy)*vol;
//smooth = lerp(fft.getBand(freq)*amp*fx2*fy2*vol,fft.getBand(freq+1)*amp*fx2*fy2*vol,amt);
            flagArray[x][y] = smooth*amp*fx2*fy2*vol;
}
            xoff += passXoff;
            if  (x < (ix)+(areax/2)) {
            fx += 0.1;
            }
            else if (x >= (ix)+(areax/2)) {
            fx -= 0.1;
            }
            if  (x < (ix)+(areax/2)) {
            fx2 += 0.02;
            }
            else if (x >= (ix)+(areax/2)) {
            fx2 -= 0.02;
            }
      }
        if  (y < (iy)+(areay/2)) {
        fy += 0.1;
        }
        else if (y > (iy)+(areay/2)) {
        fy -= 0.1;
        }
        if  (y < (iy)+(areay/2)) {
        fy2 += 0.02;
        }
        else if (y > (iy)+(areay/2)) {
        fy2 -= 0.02;
        }
    yoff += passYoff;
}
ps1.addParticle1(ix,iy,freq, amp);
ps1.addCircles(ix,iy,freq,amp);
freq += 1;
amp += ampInc;
//println(freq);
}
//amp += ampInc;
}
}


void mouseDragged() {
 // turns the Z's
  if (pmouseX > mouseX && mouseY >= height/30 && mouseY<=height-30) {
    zBackup = zRotate += 0.01;
  }
  if (pmouseX < mouseX && mouseY >= height/30 && mouseY<=height-30) {
    zBackup = zRotate -= 0.01;
  }
//turns de X's
  if (pmouseY > mouseY && mouseY >= height/30 && mouseY<=height-30) {
    xBackup = xRotate += 0.01;
  }
  if (pmouseY < mouseY && mouseY >= height/30 && mouseY<=height-30) {
    xBackup =  xRotate -= 0.01;         
  }
}

void mouseWheel(MouseEvent event) {  //zoom in zoom out
float wheel = event.getCount();
    if (wheel > 0) {
      zoom = zoom + 0.1;
    }
    if (wheel < 0) {
      zoom = zoom - 0.1;
    }
}
