
// Tout les objets de MyClass sont accessibles a la classe Main
@:allow(Main)
class MyClass{
  static private var foo : Int;
}

class MyClass_2 extends MyClass{
  static private var bar : Int;
}

class MyClass_3{
  @:allow(I)
  static private var guy : Int;
}

interface I {}

class Main implements I {
  // Rend le champs bar accessible a la methode Main
  @:access(MyClass_2.bar)
  static public function main() {

    MyClass.foo = 1;
    //Sans la permission par @:allow(Main) on aurait eu 
    //Cannot access private field foo
    trace(MyClass.foo);
   
    // Accessible grace à @:access(MyClass_2.bar) au niveau de main()
    MyClass_2.bar = 2;
    trace(MyClass_2.bar);

    // ça marche aussi avec les interface depuis Haxe 3
    MyClass_3.guy = 3;
    trace(MyClass_3.guy);
  }
}