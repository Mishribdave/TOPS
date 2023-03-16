import 'package:flutter/material.dart';

class MyBetweenNUmbers extends StatefulWidget {
  const MyBetweenNUmbers({super.key});

  @override
  State<MyBetweenNUmbers> createState() => _MyBetweenNUmbersState();
}

class _MyBetweenNUmbersState extends State<MyBetweenNUmbers> {
  TextEditingController txtnum1 = TextEditingController();
  TextEditingController txtnum2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Number between inputs"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: txtnum1,
                //keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "Enter first number"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: txtnum2,
                // keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "Enter second number"),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                int firstNumber = int.parse(txtnum1.text);
                int secondNumber = int.parse(txtnum2.text);
                List<int> numbers = List.generate(
                    secondNumber - firstNumber - 1, (i) => i + firstNumber + 1);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => No_between(numbers: numbers)),
                );
              },
              child: Text("Display Numbers between the range entered"),
            ),
          ],
        ),
      ),
    );
  }
}

class No_between extends StatelessWidget {
  List<int> numbers;

  No_between({required this.numbers});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Numbers"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(numbers[index].toString()),
            );
          },
        ),
      ),
    );
  }
}
