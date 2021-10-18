void main() {
  print("hello world");
  var name = 'hemant';

  print(name);
  //name = 23 will not work

  print(name.runtimeType);

  // String s = 'arnav';
  int num = 10; //whole numbers
  double dnum = 100.25;
  bool flag = false;

  dynamic n = 'hemant';
  n = 90;
  print(n);

  var a = 10;
  print(a ~/ 3); //~for whole number

  var d = "hello";
  print(d is String);
  print(d is! String);

  var is_login = false;
  String user = is_login ? 'Admin' : 'Guest';
  print(user);

  var uname = null;
  var un = uname ?? 'Guest';
  print(un);

  //String we can ' ' and " "
  //''' """

  var str1 = '''this is
  my dart 
  file ''';
  print(str1);

  var str2 = """this is
  my dart 
  file """;
  print(str2);

  var nm = 'Shalini';
  print(nm);

  print('${nm.toUpperCase()}');
  print('$nm');
  print('name is ${nm}');
  print('name ' + nm);

  var s = r'will not consider escape sequence \n \t';
  print(s);

  var s1 = "this is hemant's lap";

  print(nm.length);
  print(nm.isEmpty);
  print(nm.isNotEmpty);
  print(nm.toLowerCase());
  print(nm.toUpperCase());
  print(nm.contains('id'));
  print(nm.padLeft(10));

  var sp1 = '                   gima                   ';
  print(sp1.trim());

  String line = 'hello world prog';
  print(line.split(' '));

  // List : ordered group of objects, zero based index or array

  var cars = [
    'honda',
    'hyundai',
    'skoda',
    'mercedes',
    56,
    52.12
  ]; //simple list work on every objects, we can give generics<String>
  List cars1 = ['honda', 'hyundai', 'skoda', 'mercedes'];
  List abc = [];

  print(cars);
  print(cars1[3]);

  cars[3] = "jeep";
  print(cars);

  for (var i = 0; i < cars.length; i++) {
    print(cars[i]);
  }

  for (var c in cars) {
    print(c.toString().toUpperCase());
  }

  //list props and metthod

  print(cars.length);
  print(cars.isEmpty);
  print(cars.isNotEmpty);
  print(cars.first);
  print(cars.last);
  //modify
  cars.add('chevy');
  print(cars);

  //insert elem at specified index
  cars.insert(0, 'BMW');
  print(cars);

  //remove
  cars.remove("BMW");
  print(cars);

  cars.removeAt(1);
  print(cars);
  cars.removeLast();
  print(cars);
  print(cars.contains("honda"));
  print(cars);
  print(cars.indexOf("honda"));

  // delete all elements
  cars.clear();
  print(cars);

  //type annotations
  List<String> fruits = ['apple', 'mango'];
  var veggies = <String>['potato', 'lady finger'];

  //var, final, const

  //... spread operator

  //insert list into another list
  var all = ["tomato", ...fruits, ...veggies];
  print(all.reversed);

  //set - unique values, unordered, collection

  Set<String> set1 = {'apple', 'mango'};
  Set set2 = <String>{'apple', 'mango'};

  print(set1);

  //empty set
  //var st0={}; //will create map
  var st = <String>{}; //set of values

  set1.add('orange');
  print(set1);

  set1.add('apple');
  print(set1);

  //map: key-value pair, unique, values may or may not be duplicate

  Map<String, int> menu = {};
  //additems
  menu['water'] = 20;
  menu['coke'] = 45;
  menu['chocolate'] = 100;
  menu['wafers'] = 20;

  print(menu);
  print(menu['water']);
  print(menu.length);
  print(menu.keys);
  print(menu.isEmpty);
  print(menu.isNotEmpty);
  print(menu.values);
  print(menu.entries);
  print(menu.containsKey('water'));
  print(menu.containsValue(20));

  //control flow statement
  //if-else if-else
  //switch ...case ...default
  //works with string as well

  //loops

  for (var i = 0; i < 10; i++) {
    print(i);
  }

  var i = 1;
  while (i < 10) {
    print(i);
    i++;
  }

  do {
    print(i);
    i++;
  } while (i < 10);

  for (var car in cars) {
    print(car);
  }
  for (var item in menu.keys) {
    print('${item} for each ${menu[item]}');
  }

  for (var item in menu.values) {
    print(item);
  }

  var students = ['vani', 'yami', 'shalini'];
  students.forEach((element) => print(element));
  students.asMap().forEach((key, value) => print('$key is $value'));

  //map
  menu.forEach((key, value) => print('$key is for $value'));

  //break, continue same as java

  //functions -- return type, arg type is optional
  myfun();
  print(sayHello('students'));
  print(sayBye());
  print(sayBye('jai'));
  sum('test', b: 15, a: 18);
}

myfun() {
  print("hello from myfun");
}

String sayHello(String str) {
  return 'hello $str!!';
}

String sayBye([String n = 'kirti']) {
  return 'Bye $n';
}

//named param
sum(str, {a, b}) {
  print(a);
  print(b);
  print(str);
}

say() => "yes";
//anonymous function
//arrow function