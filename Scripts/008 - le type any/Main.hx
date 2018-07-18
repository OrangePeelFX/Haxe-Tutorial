class Main {
  static function getAnyValue():Any{ // Void -> Any
	return "abc";
  }
	
  static public function main() {
    var value = getAnyValue();
	$type(value); // Any, et pas Unknow<0>
	trace(value);
	
	//  teste le type de la valeur
	if(Std.is(value, String)) 
	{
		trace((value : String).charCodeAt(0)); // a -> 97
	}
  }
}