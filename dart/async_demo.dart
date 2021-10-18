//await async

Future<String> printer() {
  return Future.delayed(Duration(seconds: 5), () => "print after 5 sec");
}

Future<String> callMe() async {
  var data = await printer();
  return "from call me : returned $data";
}

void main(List<String> args) async {
  print("before calling");
  print(await callMe());
  print("after calling");
}
