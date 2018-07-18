class Base{
	public function new(){}
	public function toString(){
		return "...";
	}
}

class Child1 extends Base{
	public override function toString(){
		return "I'm a child" + super.toString(); 
	}
}

class Child2 extends Base{
	public override function toString(){
		return "Pouet"; 
	}
}

class Main {  
  static public function main() {
	var child1:Child1 = new Child1();
	try{
		var child2 = cast(child1,Child2);
	}
	catch (e:Dynamic) {
	   trace(e);     
	}
  }
}