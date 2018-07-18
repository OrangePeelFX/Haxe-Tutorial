class Main {
  static public function main() {
	var array = []; 
	$type(array); // Array<Unknown<0>>
	array.push("ma chaine");
	
	trace(array);
	$type(array); // Array<String>
	$type(array[0]);
	
	//  ne fonctionne pas : Int should be String
	// en effet Array<String> ne peut pas accepter de Int
	// array.push(4); 
	
	equals(1,1); // Ok
	equals("foo","bar"); // Ok 
	
	// Int should be String car ils ne sont pas de type Type 'T'
	//equals("foo",1); 
  }
  
  static function equals<T>(expected:T, actual:T){
	if(actual != expected){
		trace('$actual should be $expected');
	}else{
		trace('$actual is equal to $expected');
	}
	
  }
}
