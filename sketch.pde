

public void setup(){
  
  
  // TODO init standard + dataFormat
  convertDataFile(new String[0], new String[0]);
  
  
  //System.close();
}

/*
  dataFormat:
  0 "" // furst can be "" but rest cant
  1 "n" // only vars if the standard shall be
  2 ": "
  3 "x"
  ...
  
  -> odd r vars
  
  
  
*/



public void convertDataFile(String[] dataFormat, String[] dataFile){
  for(String data : dataFile){
    saveWaypoint(convertData(dataFormat, data));
  }
}


public Waypoint convertData(String[] dataFormat, String data){
  Waypoint rV = new Waypoint(); // the waypoint to be returned (rV = returnValue)
  int idF = 0; // index in dataFormat
  String cur;
  
  if(dataFormat[0].length() < 1){
    // start with the variable
  }
  
  
  for(int i = 0; i < data.length; i ++){
    if(data.charAt(i) == dataFormat[idF].charAt(0)){
      rV.set(dataFormat[idF - 1], cur);
      cur = "";
    }
  }
  
  
  return rV;
}



public void saveWaypoint(Waypoint w){
  String fileName = w.name + "_" + w.x + "," + w.y + "," + w.z;
  
  String[] info = new String[18];
  info[0] = "{";
  info[1] = "  \"id\": \"" + fileName + "\"";
  info[2] = "  \"name\": \"" + w.name + "\",";
  info[3] = "  \"icon\": \"" + w.icon + "\",";
  info[4] = "  \"x\": " + w.x + ",";
  info[5] = "  \"y\": " + w.y + ",";
  info[6] = "  \"z\": " + w.z + ",";
  info[7] = "  \"r\": " + red(w.rgb) + ",";
  info[8] = "  \"g\": " + green(w.rgb) + ",";
  info[9] = "  \"b\": " + blue(w.rgb) + ",";
  info[10] = "  \"enable\": " + w.enable + ",";
  info[11] = "  \"type\": \"" + w.type + "\",";
  info[12] = "  \"origin\": \"journeymap\",";
  info[13] = "  \"dimensions\": [";
  info[14] = "    // TODO";
  info[15] = "  ],";
  info[16] = "  \"persistent\": " + w.persistent;
  info[17] = "}";
  
  saveStrings("waypoints/" + fileName + ".json", info);
}
