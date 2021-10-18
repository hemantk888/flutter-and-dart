//await async

Future<String> printer() {
  return Future.delayed(Duration(seconds: 5), () => "print after 5 sec");
}

String callMe() {
  var data = printer();
  return "from call me : returned $data";
}

void main(List<String> args) {
  print("before calling");
  print(callMe());
  print("after calling");
}
