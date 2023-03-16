import 'package:flutter/material.dart';

class radio_colour extends StatefulWidget {
  @override
  _radio_colourState createState() => _radio_colourState();
}

class _radio_colourState extends State<radio_colour> {
  Color selectedColor = Colors.white;

  void onColorSelected(Color color) {
    setState(() {
      selectedColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Color Display App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              "Select a color",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          RadioListTile<Color>(
            title: Text("Purple"),
            value: Colors.purple,
            groupValue: selectedColor,
            onChanged: (value) {
              setState(() {
                selectedColor = Colors.purple;
              });
            },
          ),
          RadioListTile<Color>(
            title: Text("Green"),
            value: Colors.green,
            groupValue: selectedColor,
            onChanged: (value) {
              setState(() {
                selectedColor = Colors.green;
              });
            },
          ),
          RadioListTile<Color>(
            title: Text("Yellow"),
            value: Colors.yellow,
            groupValue: selectedColor,
            onChanged: (value) {
              setState(() {
                selectedColor = Colors.yellow;
              });
            },
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Container(
              width: 200,
              height: 200,
              color: selectedColor,
            ),
          ),
        ],
      ),
    );
  }
}
