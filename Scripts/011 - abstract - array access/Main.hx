abstract AString(String){
	public function new(s) this = s;
	@:arrayAccess function charAt(k:Int)
	{
		return this.charAt(k);
	}
	
	@:arrayAccess function indexOf(s:String)
	{
		return this.indexOf(s);
	}
}

class Main {
  static public function main() {
	var a = new AString("Bonjour ville !!");
	trace(a[0]); // B
	trace(a[6]); // vide
	trace(a["r"]); // 6 => trouvé, car on fait 
	trace(a["R"]); // -1 => pas trouvé
	trace(a["R".toLowerCase()]); // 6 => trouvé
	trace(a["B"]); // 0 => trouvé
 }
}