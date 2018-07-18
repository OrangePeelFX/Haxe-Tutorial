import haxe.ds.StringMap; // importation du type StringMap
import haxe.macro.Expr; // tout les modules de macro
import Math.random; // fonction statique de Math
import String.fromCharCode in fcc; // alias 

class Main {
  static public function main() {
	// Package * N 	   .  Module . Type <Paramètre de type>
    var a = new haxe.ds.StringMap.StringMap<Int>(); // ou new StringMap<Int>();
	a.set("John", 26);
	a.set("Peter", 17);
	a.set("Mark", 32);
	$type(a);
	trace(a);
		
	var n = random();
	trace(n); // Math.random <-- methode statique de Math

	var e:Binop = haxe.macro.Binop.OpAdd; // haxe.macro.Expr.OpAdd
	$type(e);	
	
	var c1 = fcc(65); //A
	var c2 = fcc(66); //B
	trace(c1 + c2); // AB
  }
}