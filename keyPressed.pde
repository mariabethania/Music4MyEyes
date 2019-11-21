void keyPressed() {
  if (key == '!') { 
    theme = 1;
  vol=4;
}
  if (key == '@') {
  theme = 2;
  vol=1;
}
  if (key == '#') { 
    theme = 3;
    xBackup = xRotate;
    xRotate = 2;
  vol=1;
  }
  if (key == '$') { 
  theme = 4;
  vol=1;
}
  if (key == '%') {
    theme = 5;
  vol=1;
}
  if (key == '^') {
  theme = 6;
  vol=1;
}
  if (key == '&') {
  theme = 7;
  vol=1;
}


if (key == 'P' || key == 'p') {
xPanBackup = xPan += 0.1;
}
else if (key == 'O' || key == 'o') {
xPanBackup = xPan -= 0.1;
}

  if (key == ',' || key == '<') {
  flying -= 0.0;
}
else if (key == '>' || key == '.') {
  flying += 0.1;
}
//flying = fly;


                                      //controls the 'X' rotation
// if (keyPressed) {  
   if (keyCode == DOWN) {
   xBackup = xRotate -= 0.015;  
 }
 else if (keyCode == UP) {
   xBackup = xRotate += 0.015;
 }
 //else keyReleased();
// }  
//println(xRotate);
 rotateX(xRotate);

                                          // controls the 'Z' rotation 
 
// if (keyPressed) {
   if (keyCode== RIGHT) {
   zBackup = zRotate -= 0.03;  
 }
 else if (keyCode == LEFT) {
   zBackup = zRotate += 0.03;
 }
 //else keyReleased();
  
rotateZ(zRotate);

                                            //zooming
                                            
//if (keyPressed) {
  if (key == 'w' || key == 'W') {
    zoomBackup = zoom += 0.1;
  }
  else if (key == 'q' || key == 'Q') {
    zoomBackup = zoom -= 0.1;
  }
  
  if (key == 'z' || key == 'Z') {
    zLevelBackup = zLevel += 5;
  }
  else if (key == 'x' || key == 'X') {
    zLevelBackup = zLevel -=5;
  }

if (keyPressed) {
  if (key == '=' || key == '+') {
    vol += 1;
  }
  else if (key == '-' ||key == '_') {
    vol -= 1;
}
}

if (key == 'D') {
pauseAllSongs();
  loadDefaultSettings(); 
  savePreferences();
}

//if (key == 'S') {
//savePreferences();
//}
savePreferences();
}
