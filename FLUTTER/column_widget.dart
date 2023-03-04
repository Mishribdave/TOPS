import "package:flutter/material.dart";

class columnwidget extends StatelessWidget {
  const columnwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Column Widget Alignment"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          Row(
            children: [Icon(Icons.star), Text("CrossAxisAlignment")],
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("start"),
                Text("center"),
                Text("end"),
                Text("stretch"),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle, border: Border.all()),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.deepPurple,
                            border: Border.all()),
                        child: Text("Box"),
                        alignment: Alignment.center),
                    Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.deepPurple,
                            border: Border.all()),
                        child: Text("Box"),
                        alignment: Alignment.center),
                    Container(
                      width: 50,
                      height: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.yellow,
                          border: Border.all()),
                      child: Text("Box"),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle, border: Border.all()),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.yellow,
                            border: Border.all()),
                        child: Text("Box"),
                        alignment: Alignment.center),
                    Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.yellow,
                            border: Border.all()),
                        child: Text("Box"),
                        alignment: Alignment.center),
                    Container(
                      width: 50,
                      height: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.deepPurple,
                          border: Border.all()),
                      child: Text("Box"),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle, border: Border.all()),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.deepPurple,
                            border: Border.all()),
                        child: Text("Box"),
                        alignment: Alignment.center),
                    Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.deepPurple,
                            border: Border.all()),
                        child: Text("Box"),
                        alignment: Alignment.center),
                    Container(
                      width: 50,
                      height: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.deepPurple,
                          border: Border.all()),
                      child: Text("Box"),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle, border: Border.all()),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.deepPurple,
                            border: Border.all()),
                        child: Text("Box"),
                        alignment: Alignment.center),
                    Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.deepPurple,
                            border: Border.all()),
                        child: Text("Box"),
                        alignment: Alignment.center),
                    Container(
                      width: 50,
                      height: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.deepPurple,
                          border: Border.all()),
                      child: Text("Box"),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [Icon(Icons.star), Text("MainAxisAlignment")],
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("start"),
                Text("center"),
                Text("end"),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle, border: Border.all()),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.deepPurple,
                            border: Border.all()),
                        child: Text("Box"),
                        alignment: Alignment.center),
                    Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.deepPurple,
                            border: Border.all()),
                        child: Text("Box"),
                        alignment: Alignment.center),
                    Container(
                      width: 50,
                      height: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.deepPurple,
                          border: Border.all()),
                      child: Text("Box"),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle, border: Border.all()),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.deepPurple,
                            border: Border.all()),
                        child: Text("Box"),
                        alignment: Alignment.center),
                    Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.deepPurple,
                            border: Border.all()),
                        child: Text("Box"),
                        alignment: Alignment.center),
                    Container(
                      width: 50,
                      height: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.deepPurple,
                          border: Border.all()),
                      child: Text("Box"),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle, border: Border.all()),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.deepPurple,
                            border: Border.all()),
                        child: Text("Box"),
                        alignment: Alignment.center),
                    Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.deepPurple,
                            border: Border.all()),
                        child: Text("Box"),
                        alignment: Alignment.center),
                    Container(
                      width: 50,
                      height: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.deepPurple,
                          border: Border.all()),
                      child: Text("Box"),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("spaceAround"),
                Text("spaceBetween"),
                Text("spaceEvenly"),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle, border: Border.all()),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.deepPurple,
                            border: Border.all()),
                        child: Text("Box"),
                        alignment: Alignment.center),
                    Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.deepPurple,
                            border: Border.all()),
                        child: Text("Box"),
                        alignment: Alignment.center),
                    Container(
                      width: 50,
                      height: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.deepPurple,
                          border: Border.all()),
                      child: Text("Box"),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle, border: Border.all()),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.deepPurple,
                            border: Border.all()),
                        child: Text("Box"),
                        alignment: Alignment.center),
                    Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.deepPurple,
                            border: Border.all()),
                        child: Text("Box"),
                        alignment: Alignment.center),
                    Container(
                      width: 50,
                      height: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.deepPurple,
                          border: Border.all()),
                      child: Text("Box"),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle, border: Border.all()),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.deepPurple,
                            border: Border.all()),
                        child: Text("Box"),
                        alignment: Alignment.center),
                    Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.deepPurple,
                            border: Border.all()),
                        child: Text("Box"),
                        alignment: Alignment.center),
                    Container(
                      width: 50,
                      height: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.deepPurple,
                          border: Border.all()),
                      child: Text("Box"),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
