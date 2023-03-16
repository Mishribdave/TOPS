import 'package:flutter/material.dart';

class checkbox extends StatefulWidget {
  @override
  _checkboxState createState() => _checkboxState();
}

class _checkboxState extends State<checkbox> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkbox "),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CheckboxListTile(
              title: Text("Show"),
              value: _isChecked,
              onChanged: (value) {
                setState(() {
                  _isChecked = true;
                });
              },
            ),
            Visibility(
              visible: _isChecked,
              child: Text(
                "Have A Nice Day!!",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
