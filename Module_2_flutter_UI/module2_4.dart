//create an application to change background when button is clicked
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MainWidget(),
  ));
}

class MainWidget extends StatefulWidget {
  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  // Variable to hold the current background color
  Color _backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Set the background color of the scaffold to the current background color
      backgroundColor: _backgroundColor,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Change the background color to a random color when the button is pressed
            setState(() {
              _backgroundColor = Color.fromRGBO(
                // Generate a random RGB color
                // You can replace this with your own color logic if desired
                256 ~/ (1 / (0.5 + Random().nextDouble() / 2)),
                256 ~/ (1 / (0.5 + Random().nextDouble() / 2)),
                256 ~/ (1 / (0.5 + Random().nextDouble() / 2)),
                1.0,
              );
            });
          },
          child: Text("Change Background Color"),
        ),
      ),
    );
  }
}
