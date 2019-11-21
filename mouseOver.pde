void mouseOver() {
  
if (mouseX > width*0.9 && mouseY > height*0.47 && mouseY < height*0.53) {
  text(int(smoothBool),width*0.99,height*0.5);
}

if (mouseX < width*0.1 && mouseY > height*0.47 && mouseY < height*0.53) {
  text(amt,10,height*0.5);
}

  if (mouseX > 0 && mouseX < width && mouseY > 0 && mouseY < height/30) {
  showMenu = true;
  }
  else {
  showMenu = false;
  //showTitle = false;
}

    if (mouseX > 0 && mouseX <= width/20 && mouseY > 0 && mouseY <= height/30) { 
      text(title1, mouseX,mouseY+(height/20));        
      }
    if (mouseX > width/20 && mouseX <= (width/20)*2 && mouseY > 0 && mouseY <= height/30) { 
      text(title2, mouseX-5,mouseY+(height/20));        
      }
    if (mouseX > (width/20)*2 && mouseX <= (width/20)*3 && mouseY > 0 && mouseY <= height/30) { 
      text(title3, mouseX-10,mouseY+(height/20));        
      }
    if (mouseX > (width/20)*3 && mouseX <= (width/20)*4 && mouseY > 0 && mouseY <= height/30) { 
      text(title4, mouseX-15,mouseY+(height/20));        
      }
    if (mouseX > (width/20)*4 && mouseX <= (width/20)*5 && mouseY > 0 && mouseY <= height/30) { 
      text(title5, mouseX-20,mouseY+(height/20));        
      }
    if (mouseX > (width/20)*5 && mouseX <= (width/20)*6 && mouseY > 0 && mouseY <= height/30) { 
      text(title6, mouseX-25,mouseY+(height/20));        
      }
    if (mouseX > (width/20)*6 && mouseX <= (width/20)*7 && mouseY > 0 && mouseY <= height/30) { 
      text(title7, mouseX-30,mouseY+(height/20));        
      }
    if (mouseX > (width/20)*7 && mouseX <= (width/20)*8 && mouseY > 0 && mouseY <= height/30) { 
      text(title8, mouseX-35,mouseY+(height/20));        
      }
    if (mouseX > (width/20)*8 && mouseX <= (width/20)*9 && mouseY > 0 && mouseY <= height/30) { 
      text(title9, mouseX-40,mouseY+(height/20));        
      }
    if (mouseX > (width/20)*9 && mouseX <= (width/20)*10 && mouseY > 0 && mouseY <= height/30) { 
      text(title10, mouseX-45,mouseY+(height/20));        
      }
    if (mouseX > (width/20)*10 && mouseX <= (width/20)*11 && mouseY > 0 && mouseY <= height/30) { 
      text(title11, mouseX-50,mouseY+(height/20));        
      }
    if (mouseX > (width/20)*11 && mouseX <= (width/20)*12 && mouseY > 0 && mouseY <= height/30) { 
      text(title12, mouseX-55,mouseY+(height/20));        
      }
    if (mouseX > (width/20)*12 && mouseX <= (width/20)*13 && mouseY > 0 && mouseY <= height/30) { 
      text(title13, mouseX-60,mouseY+(height/20));        
      }
    if (mouseX > (width/20)*13 && mouseX <= (width/20)*14 && mouseY > 0 && mouseY <= height/30) { 
      text(title14, mouseX-65,mouseY+(height/20));        
      }
    if (mouseX > (width/20)*14 && mouseX <= (width/20)*15 && mouseY > 0 && mouseY <= height/30) { 
      text(title15, mouseX-70,mouseY+(height/20));        
      }
    if (mouseX > (width/20)*15 && mouseX <= (width/20)*16 && mouseY > 0 && mouseY <= height/30) { 
      text(title16, mouseX-75,mouseY+(height/20));        
      }
    if (mouseX > (width/20)*16 && mouseX <= (width/20)*17 && mouseY > 0 && mouseY <= height/30) { 
      text(title17, mouseX-80,mouseY+(height/20));        
      }
    if (mouseX > (width/20)*17 && mouseX <= (width/20)*18 && mouseY > 0 && mouseY <= height/30) { 
      text(title18, mouseX-85,mouseY+(height/20));        
      }
    if (mouseX > (width/20)*18 && mouseX <= (width/20)*19 && mouseY > 0 && mouseY <= height/30) { 
      text(title19, mouseX-90,mouseY+(height/20));        
      }
    if (mouseX > (width/20)*19 && mouseX <= (width/20)*20 && mouseY > 0 && mouseY <= height/30) { 
      text(title20, mouseX-95,mouseY+(height/20));        
      }
//  if (mouseX > 0 && mouseX < (width/20)*2 && mouseY > height/20 && mouseY < height/12) {
//stroke(255);
//fill(0);
//rect(2,height/20,width/20*2,height/20);
//fill(255);
//text("Load Playlist..",5,height/12);
//}

    
    if ( mouseX > 0 && mouseX < width && mouseY < height-14 && mouseY > height - 30){   // aqui falta codigo
int num = theme;
String themeName ="";      
      textSize(14);
      text("| Columns = "+spikex+"  |",width/20,height-14);
      text("| Rows = "+spikey+"  |",(width/20*3),height-14);
      text("| Norm = "+round(ampInc*1000)+"  |" ,(width/40)*31,height-14);
      text("| Vol = "+round(vol*10)+"  |",(width/40)*35,height-14);
      text("| Save.. |",(width/20*6),height-14);
      text("| Load.. |",(width/20)*13,height-14);
      //text("|<<",3,height-14);
      //text("|",30,height-14);
      //text(">>|",width-30,height-14);
switch(num) { // shows theme names
  case 1:
  themeName = "In the Forest";
  break;
  case 2:
  themeName = "Under the Sea";
  break;
  case 3:
  themeName = "Thunderstorm";
  break;
  case 4:
  themeName = "Sahara";
  break;
  case 5:
  themeName = "In Space";
  break;
  case 6:
  themeName = "8 bit Adventure";
  break;
  case 7:
  themeName = "July 4th";
  break;
  case 8:
  themeName = "Water Drops";
  break;
  //case 8:
  //themeName = "Star-Spangled Banner (B)";
  //break;
  //case 9:
  //themeName = "Star-Spangled Banner (C)";
  //break;
}
      text("| Theme = "+themeName +"|",width/20*8,height-14);
    }

}
