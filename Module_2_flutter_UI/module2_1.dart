//Create an application to take input number from user and print its reverse number in TextView without button.
import 'package:flutter/material.dart';

class ReverseNumberScreen extends StatefulWidget {
  @override
  _ReverseNumberScreenState createState() => _ReverseNumberScreenState();
}

class _ReverseNumberScreenState extends State<ReverseNumberScreen> {
  String inputNumber = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reverse Number App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            onChanged: (text) {
              setState(() {
                inputNumber = text;
              });
            },
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'Enter a number',
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Reverse: ${inputNumber.split('').reversed.join()}',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
