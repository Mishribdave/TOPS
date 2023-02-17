//Write a program to print the area and perimeter of a triangle having sides of 3, 4 and 5 units by
//creating a class named 'Triangle' without any parameter in its constructor.

class triangle {
  int? a, b, c;

  triangle() {
    a = 10;
    b = 20;
    c = 30;
  }

  void display() {
    int peri = a! + b! + c!;
    print("Perimeter of triangle : $peri");
  }
}

void main(List<String> args) {
  triangle obj = new triangle();
  obj.display();
}
