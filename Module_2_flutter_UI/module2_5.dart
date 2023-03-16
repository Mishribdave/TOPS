//create an application to increate font size when plus button click and decrease when minus button click.
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home: FontSizeChangerApp()),
  );
}

class FontSizeChangerApp extends StatefulWidget {
  @override
  _FontSizeChangerAppState createState() => _FontSizeChangerAppState();
}

class _FontSizeChangerAppState extends State<FontSizeChangerApp> {
  double _fontSize = 16.0; // initial font size

  void _increaseFontSize() {
    setState(() {
      _fontSize += 2.0; // increase font size by 2.0
    });
  }

  void _decreaseFontSize() {
    setState(() {
      _fontSize -= 2.0; // decrease font size by 2.0
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Font Size Changer',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Font Size Changer'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Change font size using the buttons below',
                style: TextStyle(fontSize: _fontSize),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: _decreaseFontSize,
                    child: Icon(Icons.remove),
                  ),
                  SizedBox(width: 16.0),
                  ElevatedButton(
                    onPressed: _increaseFontSize,
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
