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

class Main {  
  static public function main() {
    var it = new StringIterator("Bonjour");
    for(c in it)
    {
      trace(c);
    }
  }   
}