void main() {
  print("Hello from main");
  printData();
  print("Bye from hello");
}

Future printData() async {
  String d = await getDataFromServer();
  print("printing the recieved data: $d");
}

Future<String> getDataFromServer() {
  Future<String> data = Future.delayed(Duration(seconds: 5), () {
    return "Data from server";
  });
  return data;
}
