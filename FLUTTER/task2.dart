import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: task2()));
}

class task2 extends StatelessWidget {
  const task2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("assignment2"),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Text(
                  "Strawberry Pavlova",
                )
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Text(
                    "The garden strawberry (or simply strawberry; Fragaria × ananassa)[1] \n is a widely grown hybrid species of the genus Fragaria, "
                    "\n collectively known as the strawberries, "
                    "\n which are cultivated worldwide for their fruit. ")
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.blue, size: 24.0),
                        Icon(Icons.star, color: Colors.blue, size: 24.0),
                        Icon(Icons.star, color: Colors.blue, size: 24.0),
                        Icon(Icons.star, color: Colors.blue, size: 24.0),
                        Icon(Icons.star, color: Colors.blue, size: 24.0)
                      ],
                    )
                  ],
                ),
                SizedBox(
                  width: 40,
                ),
                Column(
                  children: [Text("170 review")],
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.precision_manufacturing,
                      color: Colors.blue,
                      size: 24.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                    SizedBox(height: 10),
                    Text(
                      'PREP',
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('25 min', style: TextStyle(color: Colors.black)),
                  ],
                ),
                SizedBox(
                  width: 20, //<-- SEE HERE
                ),
                Column(
                  children: [
                    Icon(Icons.cookie, color: Colors.blue, size: 24.0),
                    SizedBox(height: 10),
                    Text('Cook', style: TextStyle(color: Colors.black)),
                    SizedBox(
                      height: 20,
                    ),
                    Text('1 hour', style: TextStyle(color: Colors.black)),
                  ],
                ),
                SizedBox(
                  width: 20, //<-- SEE HERE
                ),
                SizedBox(height: 10),
                Column(
                  children: [
                    Icon(Icons.restaurant, color: Colors.blue, size: 24.0),
                    SizedBox(height: 10),
                    Text('Feeds', style: TextStyle(color: Colors.black)),
                    SizedBox(
                      height: 20,
                    ),
                    Text('1 hour', style: TextStyle(color: Colors.black)),
                  ],
                )
              ],
            )
          ],
        ));
  }
}
