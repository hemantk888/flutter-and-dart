class Father {
  late int money;
  getmoney(m) {
    money = m;
  }
}

class Son extends Father {
  String car = 'Santro';
  show() {
    print(car);
    print(money);
  }
}

class Daughter extends Father {
  String scooty = "Bajaj";
  show() {
    print(scooty);
    print(money);
  }
}

void main(List<String> args) {
  var s = Son();
  var d = Daughter();
  s.getmoney(1000);
  s.show();
  d.getmoney(2000);
  d.show();

  Father f = Son();
}
