import 'package:flutter/material.dart';

class Positive_Neg extends StatefulWidget {
  const Positive_Neg({super.key});

  @override
  State<Positive_Neg> createState() => Positive_NegState();
}

class Positive_NegState extends State<Positive_Neg> {
  TextEditingController txtnum = TextEditingController();
  int? n1;
  String? number = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("POSITIVE NEGATIVE"),
          backgroundColor: Colors.deepPurple,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                width: 450,
                height: 80,
                child: TextField(
                  controller: txtnum,
                  decoration: InputDecoration(
                      hintText: "Enter Number",
                      labelText: "Number",
                      border: OutlineInputBorder()),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      n1 = int.parse(txtnum.text.toString());
                    });
                    if (n1! < 0) {
                      setState(() {
                        number = "NEGATIVE";
                      });
                    } else {
                      setState(() {
                        number = "POSITIVE";
                      });
                    }
                  },
                  child: Text("Submit")),
              Text(
                number!,
                style: TextStyle(fontSize: 36),
              ),
            ],
          ),
        ));
  }
}
