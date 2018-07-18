interface Printable{
  public function toString():String;
}

class Point implements Printable{
  var x : Int;
  var y : Int;

  public function new(x,y){
    this.x = x;
    this.y = y;
  }

  public function toString(){
    return "Point("+x+","+y+")";
  }
}

