class Employee {
  //instance variable
  late String name;
  late int age;
  //instance method
  showName(n) {
    name = n;
    print(n);
  }

  show() {
    print(name);
  }

  Employee() {
    name = "no name";
  }

  //named constructor
  Employee.withName(String name) {
    this.name = name;
    print(name);
  }
  // Employee.withNA(String name, int age) {
  //   this.name = name;
  //   this.age = age;
  //   print(name);
  //   print(age);
  // }
  Employee.withNA(this.name, this.age);
  Employee.noAge(this.name) : age = -1;

  //static
  static String companyName = "Abc Ltd";
  static showTagLine(String tagline) {
    return companyName + " " + tagline;
  }
}

void main() {
  var emp1 = new Employee();
  var emp2 = Employee();
  emp2.show();
  emp1.showName('ram');
  emp2.showName('shyam');
  var emp3 = Employee.withName("jai");
  print(Employee.companyName);
  print(Employee.showTagLine("co."));
}

// class Manager extends Employee {
//   Manager(String name, int age) : super(name, age);
// }
