import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Container example")),
      body: Container(
        // height: 200,
        width: double.maxFinite,
        height: double.maxFinite,
        padding: EdgeInsets.only(left: 60),
        alignment: Alignment.center,
        // width: 150,
        color: Colors.purpleAccent,
        // margin: EdgeInsets.all(12),
        //margin: EdgeInsets.only(left: 10),
        child: Text(
          "Welcome",
          style: TextStyle(fontSize: 36, color: Colors.white),
        ),
      ),
    );
  }
}
