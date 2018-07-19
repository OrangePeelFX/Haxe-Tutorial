class Main {  
  static public function main() {
		// String interpolation
		var x = 12;
		trace('$x * 3 = ${x*3}'); // on utlise les single-quote '
	
		//Array Comprehension
		// initialisation d'un array de plusieurs manières
		var a = [for (i in 0...10) i];
		trace(a);

		var i = 0;
		var b =  [while (i < 10) i*i++];
		trace(b);

		// les 2 initialisation du dessus vont générer le code suivant
		var a = [];
		for (i in 0...10) a .push(i);
		
		var i = 0;
		var b = [];
		while (i < 10) b.push(i*i++);

		// example complexe d'init de tableau
		// 2 Boucles et test du modulo
		var c = [
			for(a in 2...11)
				for(b in 2...6)
					if(a % b == 0)
						a + "/" + b
		];
		trace(c);



		//Map Comprehension
		// Idem que l'initialisation des arrays mais avec l'opérateur =>
		var a = [for (i in 0...8) i => 2];
		trace(a); // l'affichage d'une map n'est pas forcement ordonné
		// {6 => 2, 0 => 2, 4 => 2, 3 => 2, 7 => 2, 1 => 2, 2 => 2, 5 => 2}
  }
}