class Main {
  static public function main() {
    var a = [];
	$type(a); // Array<Unknow<0>>
	a.push("foo"); 
	$type(a); // Array<String>
	a.push(1); // Int souhld be tring
		
	var b:Array<Dynamic> = [1, 2, "foo", []]; // possible en utilisant le mot clé dynamic 
	$type(b);
	$type(b[0]); // 1 est de tye dynamique
  }
}