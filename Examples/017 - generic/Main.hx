//pour compiler en js, haxe -main "Main" -js main-generic.js
//https://haxe.org/manual/target-javascript-getting-started.html 

@:generic
class MyValue<T> {
  public var value:T;
  public function new(value:T) {
    this.value = value;
  }
}

class Main {
  static public function main() {
    var a = new MyValue<String>("Hello");
    var b = new MyValue<Int>(42);
  }
}