enum Color {
  Red;
  Green;
  Blue;
  Rgb(r:Int, g:Int, b:Int);
}

class Main {
  static public function main():Void {
    var a:EnumValue = Red; // Enum Value
    var b:Enum<Color> = Color; // Enum constructeur
    var c = getColor(); 
    switch(c)
    {
      case Red : trace("la couleur est le Rouge");
      case Green : trace("la couleur est le Vert");
      case Blue : trace("la couleur est le Bleu");
      case Rgb(r, g, b): trace("la couleur est du RGB("+r+","+g+","+b+")");
    }
  }

  static function getColor() : Color{
    var i = Std.int(Math.random()*10);
    var c = null;
    switch(i){
      case 0 : c = Red;
      case 1 : c = Green;
      case 2 : c = Blue;
      default : c = Rgb(Std.int(Math.random()*256), Std.int(Math.random()*256), Std.int(Math.random()*256));
    }
    return c;
  }
}