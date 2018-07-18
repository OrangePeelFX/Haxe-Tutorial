class Base{
  private var name:String;
  private var type:String;
  public function new(name:String) { 
    this.name = name;
    this.type = "";
  }

  public function toString():String { 
    return this.type + " : " + this.name;
  }
}

class Child extends Base {
  public function new(name:String) { 
    super(name);
    this.type = "Child";
  }
  public function add(s:String) { 
    this.name += s;
  }
 }

class OtherChild extends Base { 
  public function new(name:String) { 
    super(name);
    this.type = "OtherChild";
  }
}


// on n'implement pas la methode push par sécurité
typedef MyArray<T> = {
  public function pop():T;
}

class Main {
  static public function main() {
    var children = [new Child("Dylan")];

    // ici on obligatoirement utiliser le 'cast'
    var b1:Array<Base> = cast children; 
    b1.push(new OtherChild("Paco"));
    b1.push(new OtherChild("Estelle"));
    b1.push(new OtherChild("Bernardo")); 
    // en insérant des OtherChild dans b1, 
    // je me retrouve maintenant avec des objet d'un mauvais type
    // dans mon tableau children

    // effectivement, on travaille avec les références 
    // pour les tableaux
    // ce ne sont donc pas des copies de valeurs
    var b2:MyArray<Base> = children;
    b2.pop();// supprime un élément du tableau
    $type(b2);

    for(child in children){
      // Invalid call
      // Called from Aborted
      //child.add(" #_# ");

      trace(child.toString());
    }
    $type(children);
  }
}