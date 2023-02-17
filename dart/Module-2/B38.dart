// Create a class with a method that prints "This is a parent class" and its subclass with another
// method that prints "This is child class". Now, create an object for each of the class and call 1 - method
// of parent class by object of parent class 2 - method of child class by object of child class 3 - method of
// parent class by object of child class
import 'B36.dart';

class Parent {
  void display() {
    print("This is parent class");
  }
}

class child extends Parent {
  void display() {
    print("This is Child class");
  }
}

void main(List<String> args) {
  Parent obj1 = new Parent();
  child obj2 = new child();
  obj1.display();
  obj2.display();
}
