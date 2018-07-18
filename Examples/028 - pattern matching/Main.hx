using StringTools;

enum Tree<T> {
  Leaf(v:T);
  Node(l:Tree<T>, r:Tree<T>);
}

class Main {  
  static public function main() {
	var myTree = Node(Leaf("foo"), Node(Leaf("bar"), Leaf("foobar")));
	//              Node
    //           /        \
    //  Leaf("foo")        Node
    //                    /     \
    //         Leaf("bar")  Leaf("foobar")

	
    var match = switch(myTree) {
      // matches any Leaf
      case Leaf(_): "0";
      // matches any Node that has r = Leaf
      case Node(_, Leaf(_)): "1";
      // matches any Node that has has
      // r = another Node, which has
      // l = Leaf("bar")
      case Node(_, Node(Leaf("bar"), Leaf(s))): s.replace("bar","BaRWe");
      // matches anything
      case _: "3";
    }
    trace(match); // 2
	
	var myStructure = {name : "florian", age : 33};
	var match = switch(myStructure){
		case { name : "florian", age : a } : "" + a; // Std.string(a)
		case { name : _ , age : a } : "" + a * 2;
		case _ : "99";
	}
	trace(match + " ans");
	
	
	var myArray = [2, 6, 1];
	var match = switch(myArray){
		case [a, b, c] | [a, b, _, c] if (a < b) : a * b + c;
		case _ : 0;
	}
	trace(match);
	
    var success = switch("Foo") {
      case _.toLowerCase() => "foo" | "bar" : true;
      case _: false;
    }
	trace(success);
	
	// Unmatched patterns: true
	/*
	switch(true) {
		case false:
	} */	
  }
}