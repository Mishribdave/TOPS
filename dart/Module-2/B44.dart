// Create an abstract class 'Bank' with an abstract method 'getBalance'. $100, $150 and $200 are
// deposited in banks A, B and C respectively. 'BankA', 'BankB' and 'BankC' are subclasses of class 'Bank',
// each having a method named 'getBalance'. Call this method by creating an object of each of the three classes.
import 'dart:io';

abstract class Parent {
  void message();
}

class subclass_1 extends Parent {
  @override
  void message() {
    print("This is first subclass");
  }
}

class subclass_2 extends subclass_1 {
  void message() {
    print("This is second subclass");
  }
}

void main(List<String> args) {
  subclass_1 obj1 = new subclass_1();
  subclass_2 obj2 = new subclass_2();
  obj1.message();
  obj2.message();
}
