typedef Measurable = {
	public var length(default, null):Int;
}

class Main {
  static public function main() {
	trace(print([]));
	trace(print(["pouet","vrac","bling"]));
	trace(print(["pouet","vrac","bling", "crac", "prouk", "prak"]));
	
	// String possède bien l'attribut .length mais pas .hasNext() de Iterable !
	// String has no field iterator
	//trace(print("pouet")); 
	
	//ne fonctionne pas
	// Int souhld be String
	// Constraint check failure for print.T
	//Iterable<String> should be Mesasurable ....
	//trace(print(["pouet",1,"bling"]));
	
  }
  
  static function print<T:(Iterable<String>, Measurable)>(arr:T):String{
	// juste pour tester le type Measurable
	if(arr.length > 5) return "Le tableau est too Much ^^ "; // ;)
	
	var buffer:StringBuf = new StringBuf();
	buffer.add("[");
	var it = arr.iterator();
	while(it.hasNext()){
		buffer.add(it.next() + ((it.hasNext())? "," :""));
	}
	buffer.add("]");
	return buffer.toString();
  }
}

