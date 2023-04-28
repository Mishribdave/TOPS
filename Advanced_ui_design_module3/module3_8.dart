import 'package:flutter/material.dart';

class Item {
  int id;
  String title;
  String description;

  Item({required this.id, required this.title, required this.description});
}

class crud_operations extends StatefulWidget {
  const crud_operations({super.key});

  @override
  State<crud_operations> createState() => _crud_operationsState();
}

class _crud_operationsState extends State<crud_operations> {
  List<Item> items = [
    Item(id: 1, title: 'Item 1', description: 'This is item 1'),
    Item(id: 2, title: 'Item 2', description: 'This is item 2'),
    Item(id: 3, title: 'Item 3', description: 'This is item 3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("myApp")),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(items[index].title),
            subtitle: Text(items[index].description),
            trailing: PopupMenuButton<String>(
              onSelected: (value) {
                switch (value) {
                  case 'edit':
                    // Perform edit operation
                    break;
                  case 'view':
                    // Perform view operation
                    break;
                  case 'delete':
                    // Perform delete operation
                    break;
                }
              },
              itemBuilder: (BuildContext context) {
                return ['edit', 'view', 'delete'].map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
            ),
          );
        },
      ),
    );
  }
}
