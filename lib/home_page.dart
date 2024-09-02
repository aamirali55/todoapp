import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController nameController = TextEditingController();
  List friendsNames = [""];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: TextField(
            controller: nameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text("Add Items"),
            ),
          ),
          backgroundColor: Color.fromARGB(255, 211, 117, 3),
        ),
        body: friendsNames.isEmpty
            ? const Center(
                child: Text(
                "No item In your list",
                style: TextStyle(fontSize: 40),
              ))
            : ListView.builder(
                itemCount: friendsNames.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      // margin: const EdgeInsets.only(bottom: 10),
                      child: ListTile(
                        tileColor: Color.fromARGB(255, 3, 172, 166),
                        title: Text("${friendsNames[index]}"),
                        trailing: IconButton(
                            onPressed: () {
                              friendsNames.removeAt(index);
                            },
                            icon: const Icon(Icons.delete)),
                      ),
                    ),
                  );
                },
              ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              friendsNames.add(nameController.text);
              nameController.clear();
            });
          },
          child: const Icon(
            Icons.chat,
            color: Color.fromARGB(255, 4, 98, 129),
          ),
        ));
  }
}
