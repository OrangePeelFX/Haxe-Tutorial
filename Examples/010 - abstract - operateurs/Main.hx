abstract AbstractString(String){
	inline public function new(s:String){
		this = s;
	}
	
	@:op(A * B)
	@:commutative
	static public function repeat(s:AbstractString, n:Int):AbstractString{
		var buffer:StringBuf = new StringBuf();
		for(i in 0...n){
			buffer.add(s);
		}
		return new AbstractString(buffer.toString());
	}
	
	@:op(++A)
	static public function pre(s:AbstractString)
	{
		return new AbstractString("___ " + s);
	}
	
	@:op(A++)
	static public function post(s:AbstractString)
	{
		return new AbstractString(s + " ___");
	}
	
	// il est possible d'omettre le corps de la méthode statique dans le cas où le type sous-jacent le permet
	@:op(A == B) static function eq(a:AbstractString, b:AbstractString) : Bool;
	@:op(A != B) static function ne(a:AbstractString, b:AbstractString) : Bool;
	@:op(A > B) static function gt(a:AbstractString, b:AbstractString) : Bool;
	@:op(A >= B) static function ge(a:AbstractString, b:AbstractString) : Bool;
	@:op(A < B) static function lg(a:AbstractString, b:AbstractString) : Bool;
	@:op(A <= B) static function le(a:AbstractString, b:AbstractString) : Bool;
}

class Main {
  static public function main() {
	var a = new AbstractString("*- ");
	var b = new AbstractString("*-.");
	
    trace(a * 2); 
	trace(4 * a); 
	trace(++a * 2); 
	trace(++(a * 2));
	
	trace(a == b);
	trace(a != b);
	trace(a > b);
	trace(a >= b);
	trace(a < b);
	trace(a <= b);
 }
}