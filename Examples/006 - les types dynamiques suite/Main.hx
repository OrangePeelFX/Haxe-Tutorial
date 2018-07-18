/*
haxe -main "Main.hx" --interp
*/

class ImplementsDynamic implements Dynamic<String>
{
	public var present:Int;
	public function new(){
		trace("newObject");
	}
		
	// permet de traiter les champs qui n'existe pas
	function resolve(field:String) {
		return "Tried to resolve " + field;
	}
}

class Main {
  static public function main() {
	var c = new ImplementsDynamic();
	
	c.present = 4; // fonctionne puisque le champs existe
	
	c.myField = "test"; // fonctionne puisque c'est une chaine -> Dynamic<String>
	
	/*
	c.myField2 = 99; // ne fonctionne pas => Int should be String
	*/
	var test = c.myField + " test";
	trace(c.present);
	trace(test);	
  }
}