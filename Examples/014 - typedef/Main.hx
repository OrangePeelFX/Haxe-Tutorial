
typedef User = { age : Int, name : String } // defini un alias d'un type structure
typedef UserArray = Array<User>; // defini un alias de type tableau de structure

class Main {
  static public function main() {
	var userArray:UserArray = [];
	userArray.push({ age: 12, name : "Steven" });
	userArray.push({ age: 17, name : "Carol" });
	
	trace(userArray);
	$type(userArray);
	$type(userArray[0]);
  }
}
