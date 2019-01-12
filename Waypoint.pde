

Waypoint standard;
String[] dataFormat;

public class Waypoint{
  
  public Waypoint(){
    this.name = standard.name;
    this.x = standard.x;
    this.y = standard.y;
    this.z = standard.z;
    this.rgb = standard.rgb; // clone?
    this.icon = standard.icon;
    this.enable = standard.enable;
    this.type = standard.type;
    this.dims = standard.dims; // clone?
    this.persistent = standard.persistent;
    
  }
  
  public void set(String variable, String value){
    // TODO
  }
  
  String name;
  int x;
  int y;
  int z;
  color rgb;
  String icon;
  boolean enable;
  String type;
  boolean[] dims; // TODO
  boolean persistent;
  
  
  
  
}