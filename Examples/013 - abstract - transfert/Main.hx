@:forward(push, pop, length, toString) // @:forward => sans argument, récupère tout les champs
abstract MyArray<T>(Array<T>){
	public inline function new(){
		this = [];
	}
	
	// L'opérateur [] doit être implémenté
	@:arrayAccess function at(i:Int)
	{
		return this[i];
	}
}

class Main {
  static public function main() {
	var myArray = new MyArray();
	myArray.push(12); // insère des items
	myArray.push(9);
	myArray.push(99);
	myArray.pop(); // Supprime le dernier item
	trace(myArray.length);
	trace(myArray.toString());
	trace(myArray[0]);
	trace(myArray[1]); 
	trace(myArray[2]); // null -> n'existe pas
  }
}
