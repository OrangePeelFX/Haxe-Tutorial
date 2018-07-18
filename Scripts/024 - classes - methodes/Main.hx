class Base{
	public function new(){}
	public function toString(){
		return "...";
	}
}

class Child extends Base{
	public override function toString(){
		// appelle aussi la methode de la classe parent grâce à 'super'
		return "I'm a child" + super.toString(); 
	}
}

class Main {  
  static public function main() {
	var child:Base = new Child();
	trace(child.toString());
  }
}