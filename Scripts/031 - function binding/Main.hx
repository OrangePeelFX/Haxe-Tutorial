
class Main { 
  static function test(a:Int, ?s:String):Void {
    trace((s != null) ? a + " => " + s : a);
  }

  static public function main() {
    var map = new haxe.ds.IntMap<String>();
    // permet de ne lier qu'une partie des arguements.
    var f = map.set.bind(_,"12"); 
    
    $type(map.set); // key : Int -> value : String -> Void

    // f est donc une fonction auquel il manque encore un argument
    $type(f); // a1 : Int -> Void

    f(1); // ajoute 1 => "12";
    f(3);
    f(5);
    trace(f);
    trace(map);

    // le underscore rend le deuxième argument optionnel pour la fonction résultant ;)
    // le undescore est obligatoire, sinon la valeur null serait assigné au second argument
    var t = test.bind(999, _); 
    $type(test); // a : Int -> ?s : Null<String> -> Void
    $type(t); // ?s : Null<Null<String>> -> Void
    t();
    t("bar");
  }   
}