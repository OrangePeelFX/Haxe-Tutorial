class Main {
  static var member:String = "bar";
  inline static var memberConst:String = "bar2";
  
  // modification du setter et lecture en private
  public var add2(null, set):Int;
  function set_add2(x){ return this.add2 = x + 2;}
  
  // modification du getter et ecriture en private
  public var add3(get, null):Int;
  function get_add3(){ return this.add3 + 3; }
  
  // modification du getter et setter, @:isVar devient alors nécessaire
  @:isVar public var add2_2(get, set):Int;
  function get_add2_2(){ return add2_2 + 2; }
  function set_add2_2(x){ return this.add2_2 = x + 2; }
  
  function new() {
    add2 = 10; // add2 vaut 12
	add3 = add2 * 2; // 12 * 2 => add3  vaut 24
  }
  
  static public function main() {
	trace(memberConst);
	member = "foo";
	trace(member);
	
	var m = new Main();
	trace(m.add2); // 12
	trace(m.add3); // 24 + 3 en lecture
	
	m.add2_2 = m.add2_2 = m.add3 = m.add2; 
	// 12 + 2 en écriture + 2 en écriture  => add2_2 vaut 16 
	// add3 vaut maintenant 12
	
	trace(m.add2_2); //16 + 2 en lecture
	trace(m.add3); // 12 + 3 en lecture = 15 
  }
}