class Main {
  static public function main(){
    $type(test1);
    $type(test1(1,"foo"));

    $type(test2);
    $type(test2(1,"foo"));

    trace(test1(1,"foo"));
    trace(test1(1));
    trace(test1(null,"foo")); 
    trace(test1("foo")); // équivaut à test(null,"foo")
    trace(test1());

    trace(test2(1,"foo"));
    trace(test2(1));
    trace(test2(null,"foo")); 
    trace(test2("foo"));
    trace(test2());
  }  

  static public function test1(?i:Int, ?s:String):String{
    return "Test1 :: i:" + i + ", s:" + s;
  }

  static public function test2(i:Int = 12, s:String = "bar"):String{
    return "Test2 :: i:" + i + ", s:" + s;
  }
}