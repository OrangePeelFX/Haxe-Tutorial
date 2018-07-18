
class Base {
	public function new(){}
}

class Child1 extends Base {}
class Child2 extends Base {}


class Main {
  static public function main() {
    var s:String = 1; // Int should be String
	
	var a = [new Child1(), new Child2()];
	$type(a); // Array<Base>
  }
}