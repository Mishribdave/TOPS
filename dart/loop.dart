import 'dart:io';

void main() {
  int i = 1, num, sum = 0, even = 0, e = 0, o = 0;
  for (i = 1; i <= 5; i++) {
    print("Enter number: ");
    num = int.parse(stdin.readLineSync()!);
    //print(i);
    //print("You entered: $num");
    sum += num;
    if (num % 2 == 0) {
      // print("Even Number");
      e++;
    } else {
      //  print("Odd number");
      o++;
    }
    print("Even numbers=$even");
  }
  print("even $e");
  print("odd $o");
}
