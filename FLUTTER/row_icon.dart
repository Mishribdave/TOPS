//import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class row_icon extends StatelessWidget {
  const row_icon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Row(
            children: [
              Icon(
                Icons.account_circle_rounded,
                color: Colors.red,
                size: 100,
              ),
              Icon(
                Icons.account_circle_rounded,
                color: Colors.blue,
                size: 100,
              ),
              Icon(
                Icons.account_circle_rounded,
                color: Colors.brown,
                size: 100,
              ),
              Icon(
                Icons.account_circle_rounded,
                color: Colors.deepPurpleAccent,
                size: 100,
              ),
              Text("Row")
            ],
          ),
        ),
      ),
    );
  }
}
