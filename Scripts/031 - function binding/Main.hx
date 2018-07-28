
class Main {  
  static public function main() {
    var map = new haxe.ds.IntMap<String>();
    // permet de ne lier qu'une partie des arguements.
    var f = map.set.bind(_,"12"); 
    
    $type(map.set); // key : Int -> value : String -> Void

    // f devient donc une fonction qui sette les valeurs de la map
    // mais auquel il manque encore un argument
    $type(f); // a1 : Int -> Void

    f(1); // ajoute 1 => "12";
    f(3);
    f(5);
    trace(f);
    trace(map);
  }   
}