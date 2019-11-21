void loadSong(File selection) {
  if (selection == null) {
    println("Window was closed or the user hit cancel.");
    title1 = "(empty)";
  } 
  else {
    if (ratonX > 0 && ratonX <= width/20 && ratonY > 0 && ratonY <= height/30) { 
      playList[0] = selection;
      title = title1 = selection.getAbsolutePath();
    song1 = minim.loadFile(title, 1024);
    song1.play();
    }
    if (ratonX > width/20 && ratonX <= (width/20)*2 && ratonY > 0 && ratonY <= height/30) { 
      playList[1] = selection;
    title = title2 = selection.getAbsolutePath();
    song2 = minim.loadFile(title, 1024);
    song2.play();
      }
    if (ratonX > (width/20)*2 && ratonX <= (width/20)*3 && ratonY > 0 && ratonY <= height/30) { 
      playList[2] = selection;
    title = title3 = selection.getAbsolutePath();
    song3 = minim.loadFile(title, 1024);
    song3.play();
      }
    if (ratonX > (width/20)*3 && ratonX <= (width/20)*4 && ratonY > 0 && ratonY <= height/30) { 
      playList[3] = selection;
    title4 = title = selection.getAbsolutePath();
    song4 = minim.loadFile(title, 1024);
    song4.play();
      }
    if (ratonX > (width/20)*4 && ratonX <= (width/20)*5 && ratonY > 0 && ratonY <= height/30) { 
      playList[4] = selection;
    title5 = title = selection.getAbsolutePath();
    song5 = minim.loadFile(title, 1024);
    song5.play();
      }
    if (ratonX > (width/20)*5 && ratonX <= (width/20)*6 && ratonY > 0 && ratonY <= height/30) { 
      playList[5] = selection;
    title6 = title = selection.getAbsolutePath();
    song6 = minim.loadFile(title, 1024);
    song6.play();
      }
    if (ratonX > (width/20)*6 && ratonX <= (width/20)*7 && ratonY > 0 && ratonY <= height/30) { 
      playList[6] = selection;
    title7 = title = selection.getAbsolutePath();
    song7 = minim.loadFile(title, 1024);
  fft = new FFT(song7.bufferSize(), song7.sampleRate());
    song7.play();
      }
    if (ratonX > (width/20)*7 && ratonX <= (width/20)*8 && ratonY > 0 && ratonY <= height/30) { 
      playList[7] = selection;
    title8 = title = selection.getAbsolutePath();
    song8 = minim.loadFile(title, 1024);
  fft = new FFT(song8.bufferSize(), song8.sampleRate());
    song8.play();
      }
    if (ratonX > (width/20)*8 && ratonX <= (width/20)*9 && ratonY > 0 && ratonY <= height/30) { 
      playList[8] = selection;
    title9 = title = selection.getAbsolutePath();
    song9 = minim.loadFile(title, 1024);
  fft = new FFT(song9.bufferSize(), song9.sampleRate());
    song9.play();
      }
    if (ratonX > (width/20)*9 && ratonX <= (width/20)*10 && ratonY > 0 && ratonY <= height/30) { 
      playList[9] = selection;
    title10 = title = selection.getAbsolutePath();
    song10 = minim.loadFile(title, 1024);
  fft = new FFT(song10.bufferSize(), song10.sampleRate());
    song10.play();
      }
    if (ratonX > (width/20)*10 && ratonX <= (width/20)*11 && ratonY > 0 && ratonY <= height/30) { 
      playList[10] = selection;
    title = title11 = selection.getAbsolutePath();
    song11 = minim.loadFile(title, 1024);
  fft = new FFT(song11.bufferSize(), song11.sampleRate());
    song11.play();
      }
    if (ratonX > (width/20)*11 && ratonX <= (width/20)*12 && ratonY > 0 && ratonY <= height/30) { 
      playList[11] = selection;
    title = title12 = selection.getAbsolutePath();
    song12 = minim.loadFile(title, 1024);
  fft = new FFT(song12.bufferSize(), song12.sampleRate());
    song12.play();
      }
    if (ratonX > (width/20)*12 && ratonX <= (width/20)*13 && ratonY > 0 && ratonY <= height/30) { 
      playList[12] = selection;
    title = title13 = selection.getAbsolutePath();
    song13 = minim.loadFile(title, 1024);
  fft = new FFT(song13.bufferSize(), song13.sampleRate());
    song13.play();
      }
    if (ratonX > (width/20)*13 && ratonX <= (width/20)*14 && ratonY > 0 && ratonY <= height/30) { 
      playList[13] = selection;
    title14 = title = selection.getAbsolutePath();
    song14 = minim.loadFile(title, 1024);
  fft = new FFT(song14.bufferSize(), song14.sampleRate());
    song14.play();
      }
    if (ratonX > (width/20)*14 && ratonX <= (width/20)*15 && ratonY > 0 && ratonY <= height/30) { 
      playList[14] = selection;
    title15 = title = selection.getAbsolutePath();
    song15 = minim.loadFile(title, 1024);
  fft = new FFT(song15.bufferSize(), song15.sampleRate());
    song15.play();
      }
    if (ratonX > (width/20)*15 && ratonX <= (width/20)*16 && ratonY > 0 && ratonY <= height/30) { 
      playList[15] = selection;
    title16 = title = selection.getAbsolutePath();
    song16 = minim.loadFile(title, 1024);
  fft = new FFT(song16.bufferSize(), song16.sampleRate());
    song16.play();
      }
    if (ratonX > (width/20)*16 && ratonX <= (width/20)*17 && ratonY > 0 && ratonY <= height/30) { 
      playList[16] = selection;
    title17 = title = selection.getAbsolutePath();
    song17 = minim.loadFile(title, 1024);
  fft = new FFT(song17.bufferSize(), song17.sampleRate());
    song17.play();
      }
    if (ratonX > (width/20)*17 && ratonX <= (width/20)*18 && ratonY > 0 && ratonY <= height/30) { 
      playList[17] = selection;
    title18 = title = selection.getAbsolutePath();
    song18 = minim.loadFile(title, 1024);
  fft = new FFT(song18.bufferSize(), song18.sampleRate());
    song18.play();
      }
    if (ratonX > (width/20)*18 && ratonX <= (width/20)*19 && ratonY > 0 && ratonY <= height/30) { 
      playList[18] = selection;
    title19 = title = selection.getAbsolutePath();
    song19 = minim.loadFile(title, 1024);
  fft = new FFT(song19.bufferSize(), song19.sampleRate());
    song19.play();
      }
    if (ratonX > (width/20)*19 && ratonX <= width && ratonY > 0 && ratonY <= height/30) { 
      playList[19] = selection;
    title20 = title = selection.getAbsolutePath();
    song20 = minim.loadFile(title, 1024);
  fft = new FFT(song20.bufferSize(), song20.sampleRate());
    song20.play();
      }
//pauseAllSongs();
}
//println(selection.getAbsolutePath());
//}

//void loadPlayList(File selection) {

//playList = loadStrings(selection.getAbsolutePath());
  
//for (int i = 0; i < playList.length; i++){
//    if (playList[i].charAt(0) == '"'){
//  playList[i] = playList[i].substring(1,playList[i].length());
  
//}  

//if (playList[i].charAt(playList[i].length()-1) == '"'){
//  playList[i] = playList[i].substring(0,playList[i].length()-1);
//}
//title = playList[0].getAbsolutePath();
//println("New playList["+i+"]"+playList[i]);

//}
}
