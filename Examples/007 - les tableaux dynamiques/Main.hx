class Main {
  static public function main() {
    var user:haxe.DynamicAccess<Dynamic> = {};
	
	// MAJ des valeurs
	user.set("name","Florian");
	user.set("age",33);
	
	trace(user.get("name"));
	trace(user.get("age"));
	
	trace(user.exists("name")); // teste l'existence d'une clé
	
	trace(user.keys());// liste l'ensemble des clés
	
	user.remove("age"); // supprime une clé
	trace(user.exists("age"));
  }
}