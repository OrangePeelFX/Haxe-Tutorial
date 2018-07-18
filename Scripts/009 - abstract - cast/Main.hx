abstract AbstractInt(Int){
	inline public function new(i:Int){
		this = i;
	}
}

abstract AbstractFromIntToInt(Int) from Int to Int{
	inline function new(i:Int){
		this = i;
	}
}

abstract AbstractEvolved(Int) {
  inline function new(i:Int) {
    this = i;
  }

  @:from
  static public function fromString(s:String) {
    return new AbstractEvolved(Std.parseInt(s));
  }
  
  // le nom de la méthode statique importe peu, c'est la valeur de retour qui importe 
  @:to
  public function toArray():Array<Int> { 
    return [this];
  }
  
  // le nom de la méthode statique importe peu, c'est la valeur de retour qui importe 
  @:to
  public function toString():String{ 
    return "" + this; // converti un entier en chaine, Std.string(this)
  }
}

abstract A(Int) {
  public function new() this = 0;
  @:to public function toB() return new B();
}

abstract B(Int) {
  public function new() this = 0;
  @:to public function toC() return new C();
}

abstract C(Int) {
  public function new() this = 0;
}

class Main {
  static public function main() {
	var a = new AbstractInt(5); 
	trace(a);
	$type(a);
	
	var b:AbstractFromIntToInt = 12; // cast implicite de Int vers AbstractFromIntToInt
	trace(b);
	$type(b);
	
	var c:Int = b; // cast implicite de AbstractFromIntToInt vers Int
	trace(c);
	$type(c);
		
	var d:AbstractEvolved = "5"; // cast implicite d'une chaine vers Int
	trace(d);
	$type(d);
	
	var e:Array<Int> = d; // cast implicite de AbstractEvolved vers un Tableau d'entier à 1 element
	trace(e);
	$type(e);
	
	
	var f:String = d; // cast implicite de AbstractEvolved vers une chaîne de caractère
	trace(f);
	$type(f);
	
	
	var a = new A();
	$type(a);
    var b:B = a; // valid, uses A.toB
	$type(b);
    var c:C = b; // valid, uses B.toC
	$type(c);
    var d:C = a; // error, A should be C
    var e:C = cast(a,B); // OK
	$type(e);
	
	
	
	
	
  }
}