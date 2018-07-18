
using Main.IntExtender;
using StringTools;

class IntExtender {
  static public function triple(i:Int) {
    return i * 3;
  }
  static public function double(i:Int) {
    return i * 2;
  }
}

class Main {  
  static public function main() {
  
	// Compilation conditionnelle
	//haxe -debug -D debug_level=4 -main "Main" --interp

	//haxe --help-defines
	// liste les flag(define) de compilation par défaut
	#if !debug
      trace("ok");
    #elseif (debug_level > 3)
      trace(3);
    #else
      trace("debug level too low");
    #end
	
	#if interp
      trace("Command line");
    #end
	
	
	//extern 
	var pi = Math.floor(Math.PI);
    trace(pi);	
	
	// ajout de methode statique à une extension existante
	trace(1.triple().double());	
	trace("ABxD".replace("x", "C")); // dispo dans la Standad Library, using StringTools
	/*
		StringTools: Provides extended functionality on strings, such as replacing or trimming.
		Lambda: Provides functional methods on iterables.
		haxe.EnumTools: Provides type information functionality on enums and their instances.
		haxe.macro.Tools: Provides different extensions for working with macros (see Tools).
	*/
  }
}