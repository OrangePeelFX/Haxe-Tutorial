typedef Point = { 
  x : Int, 
  y : Int,
  ?width : Int
};

/* Autre façon de l'écrire
typedef Point = {
  var x : Int;
  var y : Int;
  @:optional var width : Int;
}
*/

typedef Point3D = { > Point , z : Int};


class Main {
  static public function main():Void {
    var person = { age : 33 , name : "Florian"};  
    trace("Je m'appelle "+person.name);

    var p : Point = { x : 12, y : 12};
    var p3 : Point3D = { x : 12, y : 12, z : 12};
    $type(p.width);

    // le format JSON javascript fonctionne aussi
    // seulement si le nom de la variable "x" valide les règles d'écritures
    var point = { "x" : 1, "y" : -5 };
    trace(point.x);
  }
}