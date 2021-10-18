void main() {
  try {
    var res = 4 ~/ 0;
    print(res);
  } on IntegerDivisionByZeroException {
    print("Cant't do it");
  } finally {
    print("wiil always run");
  }

  try {
    var res = 4 ~/ 0;
    print(res);
  } catch (e) {
    print(e);
  }
}
