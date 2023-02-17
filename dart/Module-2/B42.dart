// Print the sum, difference and product of two complex numbers by creating a class named
// 'Complex' with separate methods for each operation whose real and imaginary parts are entered by
// user.
// B43. Create an abstract class 'Parent' with a method 'message'. It has two subclasses each having a
// method with the same name 'message' that prints "This is first subclass" and "This is second subclass"
// respectively. Call the methods 'message' by creating an object for each subclass.
import 'dart:io';

class Complex {
  double real;
  double imag;

  Complex(this.real, this.imag);

  Complex add(Complex other) {
    return Complex(real + other.real, imag + other.imag);
  }

  Complex subtract(Complex other) {
    return Complex(real - other.real, imag - other.imag);
  }

  Complex multiply(Complex other) {
    double realProduct = real * other.real - imag * other.imag;
    double imagProduct = real * other.imag + imag * other.real;
    return Complex(realProduct, imagProduct);
  }
}

void main() {
  stdout.write("Enter the real part of the first complex number: ");
  double real1 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter the imaginary part of the first complex number: ");
  double imag1 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter the real part of the second complex number: ");
  double real2 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter the imaginary part of the second complex number: ");
  double imag2 = double.parse(stdin.readLineSync()!);

  Complex num1 = Complex(real1, imag1);
  Complex num2 = Complex(real2, imag2);

  Complex sum = num1.add(num2);
  Complex diff = num1.subtract(num2);
  Complex prod = num1.multiply(num2);

  print("Sum: ${sum.real} + ${sum.imag}i");
  print("Difference: ${diff.real} + ${diff.imag}i");
  print("Product: ${prod.real} + ${prod.imag}i");
}
