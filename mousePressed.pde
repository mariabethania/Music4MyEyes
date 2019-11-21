void mousePressed() {
  if (mouseX > width*0.9 && mouseY > height*0.47 && mouseY < height*0.53) {
    if (smoothBool) {
      smoothBool = false;
    } else if (!smoothBool) {
      smoothBool = true;
    }
  }

if (mouseButton == LEFT && mouseX < width*0.1 && mouseY > height*0.47 && mouseY < height*0.53) {
  amt += 0.01;
} else 
if (mouseButton == RIGHT && mouseX < width*0.1 && mouseY > height*0.47 && mouseY < height*0.53) {
  amt -= 0.01;
}
  
if (mouseX > width/20*8 && mouseX < width/30*17 && mouseY > height-30 && mouseY < height-14 && mouseButton == LEFT) {
  if (theme < 8) {theme++;} else {theme = 1;}
    if (theme == 3) {
    xRotate = 2; 
    zRotate = 0;
    zLevel = -20;
    } else {xRotate = xBackup; zRotate = zBackup; zLevel = zLevelBackup;}
}
else if (mouseX > width/20*8 && mouseX < width/30*17 && mouseY > height-30 && mouseY < height-14 && mouseButton == RIGHT) {
  if (theme > 1) {theme--;} else{theme = 8;}
    if (theme == 3) {
    xRotate = 2; 
    zRotate = 0;
    zLevel = -20;
    } else {xRotate = xBackup; zRotate = zBackup; zLevel = zLevelBackup;}
}

//if (mouseX >= 0 && mouseX <= 30 && mouseY >= (height-30) && mouseY <= (height-14) && mouseButton == LEFT) {
//  if (songCount < 0) { songCount = playList.length;}
//    else{
//    pauseAllSongs();
//    songCount--;

//      if (playList[songCount] == null) {}
//      else {
//      println(songCount);    //fft.forward(song.mix);
//      println(playList[songCount]);      
//      title = playList[songCount].getAbsolutePath();
//      song = minim.loadFile(title, 1024);
//      fft = new FFT(song.bufferSize(), song.sampleRate());
//      song.play();
//      }
//  }
// }

//if (mouseX >= (width-30) && mouseX <= width && mouseY >= (height-30) && mouseY <= (height-14) && mouseButton == LEFT) {
//  if (songCount > playList.length) {songCount = 0;} 
//    else{
//    pauseAllSongs();
//    songCount++;

//      if (playList[songCount] == null) {}
//      else {
//      println(songCount);    //fft.forward(song.mix);
//      println(playList[songCount]);      
//      title = playList[songCount].getAbsolutePath();
//      song = minim.loadFile(title, 1024);
//      fft = new FFT(song.bufferSize(), song.sampleRate());
//      song.play();
//      }
//  }
//}

//*********************** begins play, pause, rewind thingies
if (mouseX > 0 && mouseX < width && mouseY > 0 && mouseY < height/30 && mouseButton == LEFT) {

 if (mouseX > 0 && mouseX < (width/20) && mouseY > 0 && mouseY < height/30) {
   depth1 =20;
   depth2 = 30;
   passXoff = 0.2;
   passYoff = 0.2;
   passFX = 0.12;
   passFY = 0.12;
   //ampInc = 0.001;
   vol = 2; //<>// //<>//
   theme = 1;
      if (song1.isPlaying()) {
      song1.rewind(); 
      song1.pause();
      title = " ";
      }
      else if (song1.position() == song1.length()) {
      song1.rewind();      
      song1.pause();  
      title = title2;
      song2.play();
      }
      else {
      pauseAllSongs();
      song1.play();  
      title = title1;
      //println(title);
}

}    
 if (mouseX > (width/20) && mouseX < (width/20)*2 && mouseY > 0 && mouseY < height/30) {
   passXoff = 0.05;
   passYoff = 0.05;
   depth1 =30;
   passFX = 0.01;
   passFY = 0.01;
   //ampInc = 0.001;
   vol = 1;
   theme=2;
      if (song2.isPlaying()) {
      song2.rewind(); 
      song2.pause();
      title = " ";
      }
      else if (song2.position() == song2.length()) {
      song2.rewind();      
      song2.pause();  
      title = " ";
      }
      else {
      pauseAllSongs();
      song2.play();  
      title = title2;

  }
 }

 if (mouseX > (width/20)*2 && mouseX < (width/20)*3 && mouseY > 0 && mouseY < height/30) {
   depth1 = 30;
   depth2 = 30;
   passXoff = 2;
   passYoff = 2;
   //passFX = 0.15;
   //passFY = 0.15;
   //ampInc = 0.001;
   vol = 2;
   theme = 3;
   if (song3.isPlaying()) {
      song3.rewind(); 
      song3.pause();
      title = " ";
      }
      else if (song3.position() >= (song3.length())-100) {
      song3.rewind();      
      song3.pause();  
      title = " ";
      }
      else {
      pauseAllSongs();
      //xBackup = xRotate;
      xRotate = 2;
      //zLevelBackup = zLevel;
      zRotate = 0;
      zLevel = -20;
      title = title3;
      song3.play();  
    }
 }  
 if (mouseX > (width/20)*3 && mouseX < (width/20)*4 && mouseY > 0 && mouseY < height/30) {
   depth1 = 10;
   depth2 = 10;
   passXoff = 0.1;
   passYoff = 0.1;
   //passFX = 0.05;
   //passFY = 0.05;
   //ampInc = 0.001;
   vol = 1;
   theme = 4;
      if (song4.isPlaying()) {
      song4.rewind(); 
      song4.pause();
      title = " ";
      }
      else if (song4.position() == song4.length()) {
      song4.rewind();      
      song4.pause();  
      title = " ";
      }
      else {
      pauseAllSongs();
      title = title4;
      song4.play();  
    }
 }  
 if (mouseX > (width/20)*4 && mouseX < (width/20)*5 && mouseY > 0 && mouseY < height/30) {
   //depth1 = 10;
   //depth2 = 10;
   passXoff = 0.01;
   passYoff = 0.01;
   //passFX = 0.05;
   //passFY = 0.05;
   //ampInc = 0.001;
   vol = 0.5;
   theme = 5;
   if (song5.isPlaying()) {
      song5.rewind(); 
      song5.pause();
      title = " ";
      }
      else if (song5.position() == song5.length()) {
      song5.rewind();      
      song5.pause();  
      title = " ";
      }
      else {
      pauseAllSongs();
      title = title5;
      song5.play();  
    }
}
 if (mouseX > (width/20)*5 && mouseX < (width/20)*6 && mouseY > 0 && mouseY < height/30) {
   passXoff = 0.1;
   passYoff = 0.1;
   //passFX = 0.05;
   //passFY = 0.05;
   //ampInc = 0.001;
   vol = 1;
   theme = 6;
      if (song6.isPlaying()) {
      song6.rewind(); 
      song6.pause();
      title = " ";
      }
      else if (song6.position() == song6.length()-100) {
      //song6.rewind();      
      //song6.pause();  
      pauseAllSongs();
      title = " ";
      }
      else {
      pauseAllSongs();
      title = title6;
      song6.play();  
    }
}
  if (mouseX > (width/20)*6 && mouseX < (width/20)*7 && mouseY > 0 && mouseY < height/30) {
   //depth1 = 50;
   //depth2 = 50;
   passXoff = 0.1;
   passYoff = 0.1;
   //passFX = 0.05;
   //passFY = 0.05;
//   ampInc = 0.001;
   vol = 2;
   theme = 7;
    if (song7 == null){} 
    else {
      if (song7.isPlaying()) {
      song7.rewind(); 
      song7.pause();
      title = " ";
      }
      else if (song7.position() == song7.length()) {
      song7.rewind();      
      song7.pause();  
      title = " ";
      }
      else {
      pauseAllSongs();
      title = title7;
      song7.play();  
    }
      }
    
  }    
  if (mouseX > (width/20)*7 && mouseX < (width/20)*8 && mouseY > 0 && mouseY < height/30) {
    if (song8 == null){}
    else {
      if (song8.isPlaying()) {
      song8.rewind(); 
      song8.pause();
      title = " ";
      }
      else if (song8.position() == song8.length()) {
      song8.rewind();      
      song8.pause();  
      title = " ";
      }
      else {
      theme = 8;
      pauseAllSongs();
      title = title8;
      song8.play();  
    }
    }
    ampInc = 0.07;
    green = 0;
    blue = 0;
  }  
  if (mouseX > (width/20)*8 && mouseX < (width/20)*9 && mouseY > 0 && mouseY < height/30) {
  ratonX = mouseX;
  ratonY = mouseY;
  if (song9 == null){}  
        else {
      if (song9.isPlaying()) {
      song9.rewind(); 
      song9.pause();
      title = " ";
      }
      else if (song9.position() == song9.length()) {
      song9.rewind();      
      song9.pause();  
      title = " ";
      }
      else {
      theme = int(random(1,7));
      pauseAllSongs();
      title = title9;
      song9.play();  
    }
    }
  }  
  if (mouseX > (width/20)*9 && mouseX < (width/20)*10 && mouseY > 0 && mouseY < height/30) {
    if (song10 == null){} 
    else {
      if (song10.isPlaying()) {
      song10.rewind(); 
      song10.pause();
      title = " ";
      }
      else if (song10.position() == song10.length()) {
      song10.rewind();      
      song10.pause();  
      title = " ";
      }
      else {
      theme = int(random(1,7));
      pauseAllSongs();
      title = title10;
      song10.play();  
    }
    }
  }
  if (mouseX > (width/20)*10 && mouseX < (width/20)*11 && mouseY > 0 && mouseY < height/30) {
    if (song11 == null){} 
    else {
      if (song11.isPlaying()) {
      song11.rewind(); 
      song11.pause();
      title = " ";
      }
      else if (song11.position() == song11.length()) {
      song11.rewind();      
      song11.pause();  
      title = " ";
      }
      else {
      theme = int(random(1,7));
      pauseAllSongs();
      title = title11;
      song11.play();  
    }
      }
    
  }    
  if (mouseX > (width/20)*11 && mouseX < (width/20)*12 && mouseY > 0 && mouseY < height/30) {
    if (song12 == null){} 
    else {
      if (song12.isPlaying()) {
      song12.rewind(); 
      song12.pause();
      title = " ";
      }
      else if (song12.position() == song12.length()) {
      song12.rewind();      
      song12.pause();  
      title = " ";
      }
      else {
      theme = int(random(1,7));
      pauseAllSongs();
      title = title12;
      song12.play();  
    }
      }
    
  }    
  if (mouseX > (width/20)*12 && mouseX < (width/20)*13 && mouseY > 0 && mouseY < height/30) {
    if (song13 == null){} 
    else {
      if (song13.isPlaying()) {
      song13.rewind(); 
      song13.pause();
      title = " ";
      }
      else if (song13.position() == song13.length()) {
      song13.rewind();      
      song13.pause();  
      title = " ";
      }
      else {
      theme = int(random(1,7));
      pauseAllSongs();
      title = title13;
      song13.play();  
    }
      }
    
  }    
  if (mouseX > (width/20)*13 && mouseX < (width/20)*14 && mouseY > 0 && mouseY < height/30) {
    if (song14 == null){} 
    else {
      if (song14.isPlaying()) {
      song14.rewind(); 
      song14.pause();
      title = " ";
      }
      else if (song14.position() == song14.length()) {
      song14.rewind();      
      song14.pause();  
      title = " ";
      }
      else {
      theme = int(random(1,7));
      pauseAllSongs();
      title = title14;
      song14.play();  
    }
      }
    
  }    
  if (mouseX > (width/20)*14 && mouseX < (width/20)*15 && mouseY > 0 && mouseY < height/30) {
    if (song15 == null){} 
    else {
      if (song15.isPlaying()) {
      song15.rewind(); 
      song15.pause();
      title = " ";
      }
      else if (song15.position() == song15.length()) {
      song15.rewind();      
      song15.pause();  
      title = " ";
      }
      else {
      theme = int(random(1,7));
      pauseAllSongs();
      title = title15;
      song15.play();  
    }
      }
    
  }    
  if (mouseX > (width/20)*15 && mouseX < (width/20)*16 && mouseY > 0 && mouseY < height/30) {
    if (song16 == null){} 
    else {
      if (song16.isPlaying()) {
      song16.rewind(); 
      song16.pause();
      title = " ";
      }
      else if (song16.position() == song16.length()) {
      song16.rewind();      
      song16.pause();  
      title = " ";
      }
      else {
      theme = int(random(1,7));
      pauseAllSongs();
      title = title16;
      song16.play();  
    }
      }
    
  }    
  if (mouseX > (width/20)*16 && mouseX < (width/20)*17 && mouseY > 0 && mouseY < height/30) {
    if (song17 == null){} 
    else {
      if (song17.isPlaying()) {
      song17.rewind(); 
      song17.pause();
      title = " ";
      }
      else if (song17.position() == song17.length()) {
      song17.rewind();      
      song17.pause();  
      title = " ";
      }
      else {
      theme = int(random(1,7));
      pauseAllSongs();
      title = title17;
      song17.play();  
    }
      }
    
  }    
  if (mouseX > (width/20)*17 && mouseX < (width/20)*18 && mouseY > 0 && mouseY < height/30) {
    if (song18 == null){} 
    else {
      if (song18.isPlaying()) {
      song18.rewind(); 
      song18.pause();
      title = " ";
      }
      else if (song18.position() == song18.length()) {
      song18.rewind();      
      song18.pause();  
      title = " ";
      }
      else {
      theme = int(random(1,7));
      pauseAllSongs();
      title = title18;
      song18.play();  
    }
      }
    
  }    
  if (mouseX > (width/20)*18 && mouseX < (width/20)*19 && mouseY > 0 && mouseY < height/30) {
    if (song19 == null){} 
    else {
      if (song19.isPlaying()) {
      song19.rewind(); 
      song19.pause();
      title = " ";
      }
      else if (song19.position() == song19.length()) {
      song19.rewind();      
      song19.pause();  
      title = " ";
      }
      else {
      theme = int(random(1,7));
      pauseAllSongs();
      title = title19;
      song19.play();  
    }
      }
    
  }    
  if (mouseX > (width/20)*19 && mouseX < (width) && mouseY > 0 && mouseY < height/30) {
    if (song20 == null){} 
    else {
      if (song20.isPlaying()) {
      song20.rewind(); 
      song20.pause();
      title = " ";
      }
      else if (song20.position() == song20.length()) {
      song20.rewind();      
      song20.pause();  
      title = " ";
      }
      else {
      theme = int(random(1,7));
      pauseAllSongs();
      title = title20;
      song20.play();  
    }
      }
    
  }
}
  else if (mouseX >  0 && mouseX < width && mouseY > 0 && mouseY < height/30 && mouseButton == RIGHT) { 
    pauseAllSongs();
  selectInput("Select a song to load...", "loadSong");  // Jump to "void loadSong()" (song7 - song20)
  ratonX = mouseX;
  ratonY = mouseY;
  }
  
 
//  if (mouseX > (width/20)*19 && mouseX < (width) && mouseY > 0 && mouseY < height/30) {
//  if (song == null){} 
//    else {
//      if (song.isPlaying()) {
//      song.rewind(); 
//      song.pause();
//      title = " ";
//      }
//      else if (song.position() == song.length()) {
//        song.rewind();
//        song.pause();
//        songCount++;
//        title = playList[songCount];
//        song = minim.loadFile(title, 1024);
//        fft = new FFT(song.bufferSize(), song.sampleRate());
//        song.play();  
//      }
//      else {
//      pauseAllSongs();
//      title = playList[songCount];
//      song = minim.loadFile(title, 1024);
//      fft = new FFT(song.bufferSize(), song.sampleRate());
//      song.play();  
//    }
//    }
//  }    
//}      


//*********** ends play, pause, rewind thingies and begins load abd save file thingy

//if (mouseX > (width/20)*19 && mouseX <  width && mouseY > 0 && mouseY < height/30 && mouseButton == RIGHT) {
//  selectInput("Select a playlist file...", "loadPlayList");  // Jump to "void loadPlayList()"
//}

if (mouseX > (width/20)*6 && mouseX < (width/20)*7 && mouseY > height-25 && mouseY < height-14 && mouseButton == LEFT) {
  selectOutput("Save settings to *.m4me file", "saveSettings");  // jump to "saveSettings()"
  ratonX = mouseX;
  ratonY = mouseY;
 }

if (mouseX > width/20*13 && mouseX < width/20*14 && mouseY > height-25 && mouseY < height-14 && mouseButton == LEFT) {
  selectInput("Load settings from *.m4me file...", "loadSettings");  //  jump to "loadSettings()"
  ratonX = mouseX;
  ratonY = mouseY;
 }
 
 

//if (mouseX >  0 && mouseX < width && mouseY < height-50 && mouseY > 50 && mouseButton == LEFT) {
//  pauseOnly();
//}
if (mouseX >  width/20 && mouseX < width/40*6 && mouseY > height-30 && mouseY < height-14 && mouseButton == RIGHT) {
  spikex--;
  if (spikex < 3) {spikex++;}
  else {areax = cols/spikex;   
  fxy -= 0.01;
  }
}
if (mouseX >  width/20 && mouseX < width/40*6 && mouseY > height-30 && mouseY < height-14 && mouseButton == LEFT) {
  spikex++;
  if (spikex > 48) {spikex--;} 
  else {areax = cols/spikex;
  fxy += 0.01;
  }
}
if (mouseX >  width/20*3 && mouseX < width/40*9 && mouseY > height-30 && mouseY < height-14 && mouseButton == RIGHT) {
  spikey--;
  if (spikey < 3) {spikey++;}
  else {areay = rows/spikey;
    fxy -= 0.01;
  }
}
if (mouseX >  width/20*3 && mouseX < width/40*9 && mouseY > height-30 && mouseY < height-14 && mouseButton == LEFT) {
  spikey++;
  if (spikey > 10) {spikey--;} 
  else {areay = rows/spikey;
  fxy += 0.01;
  }
}
if (mouseX >  width/40*35 && mouseX < width/40*36-3 && mouseY > height-30 && mouseY < height-14 && mouseButton == RIGHT) {
  vol -= 0.1;
  }
if (mouseX >  width/40*35 && mouseX < width/40*36-3 && mouseY > height-30 && mouseY < height-14 && mouseButton == LEFT) {
  vol += 0.1;
  }
if (mouseX >  width/80*73-7 && mouseX < width/80*75-7 && mouseY > height-30 && mouseY < height-14 && mouseButton == RIGHT) {
  vol -= 1;
  }
if (mouseX >  width/80*73-7 && mouseX < width/80*75-7 && mouseY > height-30 && mouseY < height-14 && mouseButton == LEFT) {
  vol += 1;
  }
if (mouseX >  width/40*31 && mouseX < width/80*65 && mouseY > height-30 && mouseY < height-14 && mouseButton == RIGHT) {
 if (ampInc > 0) { ampInc -= 0.001;} else {ampInc = 0;}
  }
if (mouseX >  width/40*31 && mouseX < width/80*65 && mouseY > height-30 && mouseY < height-14 && mouseButton == LEFT) {
  ampInc += 0.001;
  }
if (mouseX >  width/80*65+10 && mouseX < width/80*67+10 && mouseY > height-30 && mouseY < height-14 && mouseButton == RIGHT) {
 if (ampInc > 0) { ampInc -= 0.01;} else {ampInc = 0;}
  }
if (mouseX >  width/80*65+10 && mouseX < width/80*67+10 && mouseY > height-30 && mouseY < height-14 && mouseButton == LEFT) {
  ampInc += 0.01;
  }


// select a point to start playing or continue playing if "isPlaying"
if (mouseX > 0 && mouseX < width && mouseY > height-10 && mouseY < height && mouseButton == LEFT) {  
//if (mouseX > 0 && mouseX < width && mouseY > height-10 && mouseY < height) {}
if (song1.isPlaying()) {
  posx1 = int(map(mouseX, 0, width, 0, song1.length()));
  song1.cue(int(posx1));
}

if (song2.isPlaying()) {
  posx2 = int(map(mouseX, 0, width, 0, song2.length()));
  song2.cue(int(posx2));
}

if (song3.isPlaying()) {
  posx3 = int(map(mouseX, 0, width, 0, song3.length()));
  song3.cue(int(posx3));
}

if (song4.isPlaying()) {
  posx4 = int(map(mouseX, 0, width, 0, song4.length()));
  song4.cue(int(posx4));
}

if (song5.isPlaying()) {
  posx5 = map(mouseX, 0, width, 0, song5.length());
  song5.cue(int(posx5));
}

if (song6.isPlaying()) {
  posx6 = int(map(mouseX, 0, width, 0, song6.length()));
  song6.cue(int(posx6));
}

if (song7 == null) {} else if (song7.isPlaying()) {
  posx7 = int(map(mouseX, 0, width, 0, song7.length()));
  song7.cue(int(posx7));
}

if (song8 == null) {} else if (song8.isPlaying()) {
  posx8 = int(map(mouseX, 0, width, 0, song8.length()));
  song8.cue(int(posx8));
}

if (song9 == null) {} else if (song9.isPlaying()) {
  posx9 = int(map(mouseX, 0, width, 0, song9.length()));
  song9.cue(int(posx9));
}

if (song10 == null) {} else if (song10.isPlaying()) {
  posx10 = int(map(mouseX, 0, width, 0, song10.length()));
  song10.cue(int(posx10));
}
if (song11 == null) {} else if (song11.isPlaying()) {
  posx11 = int(map(mouseX, 0, width, 0, song11.length()));
  song11.cue(int(posx11));
}
if (song12 == null) {} else if (song12.isPlaying()) {
  posx12 = int(map(mouseX, 0, width, 0, song12.length()));
  song12.cue(int(posx12));
}
if (song13 == null) {} else if (song13.isPlaying()) {
  posx13 = int(map(mouseX, 0, width, 0, song13.length()));
  song13.cue(int(posx13));
}
if (song14 == null) {} else if (song14.isPlaying()) {
  posx14 = int(map(mouseX, 0, width, 0, song14.length()));
  song14.cue(int(posx14));
}
if (song15 == null) {} else if (song15.isPlaying()) {
  posx15 = int(map(mouseX, 0, width, 0, song15.length()));
  song15.cue(int(posx15));
}
if (song16 == null) {} else if (song16.isPlaying()) {
  posx16 = int(map(mouseX, 0, width, 0, song16.length()));
  song16.cue(int(posx16));
}
if (song17 == null) {} else if (song17.isPlaying()) {
  posx17 = int(map(mouseX, 0, width, 0, song17.length()));
  song17.cue(int(posx17));
}
if (song18 == null) {} else if (song18.isPlaying()) {
  posx18 = int(map(mouseX, 0, width, 0, song18.length()));
  song18.cue(int(posx18));
}
if (song19 == null) {} else if (song19.isPlaying()) {
  posx19 = int(map(mouseX, 0, width, 0, song19.length()));
  song19.cue(int(posx19));
}
if (song20 == null) {} else if (song20.isPlaying()) {
  posx20 = int(map(mouseX, 0, width, 0, song20.length()));
  song20.cue(int(posx20));
}
if (song == null) {} else if (song.isPlaying()) {
  posx = int(map(mouseX, 0, width, 0, song.length()));
  song.cue(int(posx));
}
}
savePreferences();
}
