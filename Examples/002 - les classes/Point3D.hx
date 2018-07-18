class Point3D extends Point{
  var z : Int;
  public function new(x,y,z){
    super(x,y);
    this.z = z;
  }
  
  public override function toString(){
    return "Point("+x+","+y+","+z+")";
  }
}