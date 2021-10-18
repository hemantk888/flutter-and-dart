//async programming : to run a procedure concurrently
//out of order
//Future class : delayed computation
//uncompleted / completed
// using Future as return type

Future<void> printMe() {
  return Future.delayed(
      Duration(seconds: 5), () => print("after delay of 5 seconds"));
}

void main() {
  print("Before Calling Print me");
  printMe();
  print("After calling print me");
}
