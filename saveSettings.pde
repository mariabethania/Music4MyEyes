void saveSettings(File selection) {
//println("Yata pues...");
  if (selection == null) {
    println("Window was closed or the user hit cancel.");
  } else {
    println("User selected " + selection.getAbsolutePath());
    String[] saveMySettings = new String[40];
    saveMySettings[0] = title;
    saveMySettings[1] = title1;
    saveMySettings[2] = title2;
    saveMySettings[3] = title3;
    saveMySettings[4] = title4;
    saveMySettings[5] = title5;
    saveMySettings[6] = title6;
    saveMySettings[7] = title7;
    saveMySettings[8] = title8;
    saveMySettings[9] = title9;
    saveMySettings[10] = title10;
    saveMySettings[11] = title11;
    saveMySettings[12] = title12;
    saveMySettings[13] = title13;
    saveMySettings[14] = title14;
    saveMySettings[15] = title15;
    saveMySettings[16] = title16;
    saveMySettings[17] = title17;
    saveMySettings[18] = title18;
    saveMySettings[19] = title19;
    saveMySettings[20] = title20;
    saveMySettings[21] = title20;
    saveMySettings[22] = title20;
    saveMySettings[23] = title20;
    saveMySettings[24] = title20;
    saveMySettings[25] = title20;
    saveMySettings[26] = title20;
    saveMySettings[27] = title20;
    saveMySettings[28] = title20;
    saveMySettings[29] = title20;
    saveMySettings[30] = title20;
    saveMySettings[31] = title20;
    saveMySettings[32] = Float.toString(zLevelBackup);
    saveMySettings[33] = Float.toString(xPan);
    saveMySettings[34] = Float.toString(xBackup);
    saveMySettings[35] = Float.toString(zLevel);
    saveMySettings[36] = Float.toString(theme);
    saveMySettings[37] = Float.toString(zoom);
    saveMySettings[38] = Float.toString(xRotate);
    saveMySettings[39] = Float.toString(zRotate);
    saveStrings(selection.getAbsolutePath(), saveMySettings);
    //println(selection.getAbsolutePath());
}
}

void savePreferences() {
  String[]  myPreferences = new String[40];
    myPreferences[0] = title;
    myPreferences[1] = title1;
    myPreferences[2] = title2;
    myPreferences[3] = title3;
    myPreferences[4] = title4;
    myPreferences[5] = title5;
    myPreferences[6] = title6;
    myPreferences[7] = title7;
    myPreferences[8] = title8;
    myPreferences[9] = title9;
    myPreferences[10] = title10;
    myPreferences[11] = title11;
    myPreferences[12] = title12;
    myPreferences[13] = title13;
    myPreferences[14] = title14;
    myPreferences[15] = title15;
    myPreferences[16] = title16;
    myPreferences[17] = title17;
    myPreferences[18] = title18;
    myPreferences[19] = title19;
    myPreferences[20] = title20;
    myPreferences[21] = title20;
    myPreferences[22] = title20;
    myPreferences[23] = title20;
    myPreferences[24] = title20;
    myPreferences[25] = title20;
    myPreferences[26] = title20;
    myPreferences[27] = title20;
    myPreferences[28] = title20;
    myPreferences[29] = title20;
    myPreferences[30] = title20;
    myPreferences[31] = title20;
    myPreferences[32] = Float.toString(zLevelBackup);
    myPreferences[33] = Float.toString(xPan);
    myPreferences[34] = Float.toString(xBackup);
    myPreferences[35] = Float.toString(zLevel);
    myPreferences[36] = Float.toString(theme);
    myPreferences[37] = Float.toString(zoom);
    myPreferences[38] = Float.toString(xRotate);
    myPreferences[39] = Float.toString(zRotate);
  saveStrings("data/MySettings.m4me", myPreferences);
  
}
