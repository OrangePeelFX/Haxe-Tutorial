
class StringIterator {
  var s:String;
  var i:Int;
  
  public function new(s:String) {
    this.s = s;
    i = 0;
  }

  public function hasNext(){
    var r:Bool = i < s.length;
    if(r == false)
    {
      i = 0; // réinitialise le compteur
    }
    return r;    
  }

  public function next(){
    return s.charAt(i++);
  }
}


class ArrayWrap<T>{
  var a:Array<T>;
  public function new(a:Array<T>){
    this.a = a;
  }

  // on appelle ici la methode iterator déjà implémenté sur Array
  public function iterator(){
    return a.iterator();
  }
}



class Main {  
  static public function main() {
    var it = new StringIterator("Bonjour");
    for(c in it)
    {
      trace(c);
    }

    var t = new ArrayWrap([1,2,3]);
    for(e in t){
      trace(e);
    }
  }   
}