import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: task1()));
}

class task1 extends StatelessWidget {
  const task1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("assignment"),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.call,
                      color: Colors.blue,
                      size: 24.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Call',
                      style: TextStyle(color: Colors.indigo),
                    )
                  ],
                ),
                SizedBox(
                  width: 20, //<-- SEE HERE
                ),
                Column(
                  children: [
                    Icon(Icons.route, color: Colors.blue, size: 24.0),
                    SizedBox(height: 10),
                    Text('Route', style: TextStyle(color: Colors.indigo))
                  ],
                ),
                SizedBox(
                  width: 20, //<-- SEE HERE
                ),
                SizedBox(height: 10),
                Column(
                  children: [
                    Icon(Icons.share, color: Colors.blue, size: 24.0),
                    SizedBox(height: 10),
                    Text('Share', style: TextStyle(color: Colors.indigo))
                  ],
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      "Oeschinen Lake Campground",
                    ),
                    SizedBox(height: 10),
                    Text("Kanderstea, Switxe")
                  ],
                ),
                SizedBox(width: 40),
                Column(
                  children: [
                    Icon(Icons.star, color: Colors.red, size: 24.0),
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  children: [Text("41")],
                ),
              ],
            ),
          ],
        ));
  }
}
