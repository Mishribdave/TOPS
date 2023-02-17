import 'dart:io';

abstract class Bank {
  int? amount_1, amount_2, amount_3;
  void getbalance();
}

class Bank_A extends Bank {
  void getbalance() {
    print("Deposit amount Bank 1: ");
    amount_1 = int.parse(stdin.readLineSync()!);
  }
}

class Bank_B extends Bank_A {
  void getbalance() {
    print("Deposit amount Bank 2: ");
    amount_2 = int.parse(stdin.readLineSync()!);
  }
}

class Bank_C extends Bank_B {
  void getbalance() {
    print("Deposit amount Bank 3: ");
    amount_3 = int.parse(stdin.readLineSync()!);
  }
}

void main(List<String> args) {
  Bank_A obj1 = new Bank_A();
  obj1.getbalance();
  Bank_B obj2 = new Bank_B();
  obj2.getbalance();
  Bank_C obj3 = new Bank_C();
  obj3.getbalance();
  print(
      "Amount in bank :\nBank 1 : ${obj1.amount_1}\nBank 2 : ${obj2.amount_2}\nBank 3 : ${obj3.amount_3}");
}
