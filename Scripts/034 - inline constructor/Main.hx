class Point3D {
  public var x:Float;
  public var y:Float;
  public var z:Float;
  
  public inline function new(x:Float, y:Float, z:Float){
    this.x = x;
    this.y = y;
    this.z = z;
  }
}

class Main {
  static public function main() {
    var p = new Point3D(0.0,1,2);
    // Par exemple : Si on appelle la fonction 'trace(p)', 
    // l'écriture en ligne ne fonctionnera plus, 
    // car on fait appel à la notion d'objet
    // trace(p);

    // cf les fichiers Javascript
  }
}