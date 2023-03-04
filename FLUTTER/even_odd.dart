import 'package:flutter/material.dart';

class MyEvenOdd extends StatefulWidget {
  const MyEvenOdd({super.key});

  @override
  State<MyEvenOdd> createState() => MyEvenOddState();
}

class MyEvenOddState extends State<MyEvenOdd> {
  TextEditingController txtnum = TextEditingController();
  String? result = "";
  int? number;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Accept Value"),
      ),
      body: Column(
        children: [
          TextField(
            controller: txtnum,
            decoration: InputDecoration(
                hintText: "Enter Number",
                labelText: "Number",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  number = int.parse(txtnum.text.toString());
                });
                if (number! % 2 == 0) {
                  setState(() {
                    result = "EVEN";
                  });
                } else {
                  setState(() {
                    result = "ODD";
                  });
                }
              },
              child: Text("submit")),
          Text(
            result!,
            style: TextStyle(fontSize: 36),
          )
        ],
      ),
    );
  }
}
