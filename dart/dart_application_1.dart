void main() {
  String str = "Testing string";
  try {
    var str1 = str ~/0;
    print(str);
  } catch (e) {
    print(e);
  } finally {
    print("String texting ended");
  }
}
