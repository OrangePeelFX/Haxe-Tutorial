class Main {
  static public function main():Void {
    trace("Bool : " + Type.typeof(true));   
    trace("Int : " + Type.typeof(1));   
    trace("Float : " + Type.typeof(1.0));   
    var n : Null<Int> = null;
    trace("Null<Int> : " + Type.typeof(n)); 
    trace("---------------");  
    var i = 0;   
    trace("i : " + i);   
    trace("++i : " + ++i);
    trace("i++ : " + i++);   
    trace("i : " + i);   
    trace("---------------");  
    trace("5.0/2 : " + (5.0/2)); 
    trace("5/2.0 : " + (5/2.0)); 
    trace("---------------");  
    trace("10%3 : " + (10%3)); // Modulo
    trace("10/3 : " + (10/3)); // Division
    trace("Std.int(10/3) : " + Std.int(10/3)); // Division entiere
    trace("---------------");  
    trace("~0 : " + (~0)); // negation binaire
    trace("~-102 : " + (~-102)); // => 101
    trace("---------------");
    trace("1|2|8 : " + (1|2|8));
    trace("1|2|9 : " + (1|2|9)); 
    // 00000001 | 00000010 | 00001001 = 00001011 (OR)
    trace("1&5 : " + (1&5)); 
    // 00000001 & 00001001 = 00000001 (AND)
    trace("1^5 : " + (1^5)); 
    // 00000001 ^ 00001001 = 00001000 (XOR)
    trace("---------------");
    // les décalages
    trace("8<<1 : " + (8<<1)); // 16
    trace("8>>1 : " + (8>>1));  // 4
    trace("1>>1 : " + (1>>1));  // 0
    trace("0>>>1 : " + (-1>>>1)*2); // 2147483647 valeur max d'un entier
    trace("---------------");
    trace("Type.typeof(Math.pow(2,31)) : " + Type.typeof(Math.pow(2,31)));
    trace("Std.int(Math.pow(2,31)-1)) : " + Std.int(Math.pow(2,31)-1));
    trace("Std.int(Math.pow(2,31))) : " + Std.int(Math.pow(2,31)));
    

  }
}