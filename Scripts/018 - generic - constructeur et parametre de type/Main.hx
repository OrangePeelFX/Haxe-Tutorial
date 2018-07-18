import haxe.Constraints;

class Main {
  static public function main() {
    var s:String = make("pouet");
    var t:haxe.Template = make("teuop");
    trace(s);
    trace(t);
  }

  @:generic
  static function make<T:Constructible<String->Void>>(s:String):T {
    // l'appel à new T, ne peut se faire seulement parce qu'on a mis une contrainte de type
    // et le mot clé générique qui va créer un fonction différente pour chaque type de parametre
    return new T(s);
  }
}