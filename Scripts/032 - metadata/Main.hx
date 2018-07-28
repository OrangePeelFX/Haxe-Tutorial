import haxe.rtti.Meta;

@dog("Milou")
@captain("Haddock")
@detective("Tintin")
// les metadata commencant pas : comme @:keep ne sont disponible qu'a la compilation
@:keep 
class MyClass {
  @range(1, 8, 3)
  var value:Int;

  @broken
  static function method() { }
}

class Main {
  static public function main() {
    // [Milou]
    trace(Meta.getType(MyClass));
    // [1,8]
    trace(Meta.getFields(MyClass).value.range);
    // { broken: null }
    trace(Meta.getStatics(MyClass).method);
  }
}