import 'package:flutter/material.dart';

class imageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Text App"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                      "https://images.unsplash.com/photo-1628096182871-d904741ee115?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80",
                      height: 150,
                      width: 150),
                  SizedBox(width: 16),
                  Image.network(
                      "https://media.istockphoto.com/id/1427533041/photo/view-from-across-the-river-front-of-the-new-financial-hub-and-atal-bridge.jpg?s=612x612&w=is&k=20&c=khOhAA_U659QGvEqC99mAo8wCq_6aCb3K-YttPUsldQ=",
                      height: 150,
                      width: 150)
                ],
              ),
              SizedBox(height: 16),
              Text(
                "Hello Ahmedabad!",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                      "https://media.istockphoto.com/id/465150516/photo/view-of-sabarmati-riverfront-in-ahmedabad.jpg?s=612x612&w=0&k=20&c=-BnP85bE5dsDpC0vyd1JYnLqqtnI_i26AvVeuJzZdDQ=",
                      height: 150,
                      width: 150),
                  SizedBox(width: 16),
                  Image.network(
                      "https://images.unsplash.com/photo-1628269797471-dab1d8191a55?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1964&q=80",
                      height: 150,
                      width: 150)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
