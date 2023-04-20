import 'dart:ffi';
import 'package:flutter/material.dart';

import 'Tusk.dart';

class Tusk {
  Widget Mew(String nameTusk) {
    return Container(
        padding: EdgeInsets.all(5),
        alignment: Alignment.centerLeft,
        width: double.infinity,
        height: 70,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 234, 245, 79),
            borderRadius: BorderRadius.circular(10)),
        child: Text(nameTusk,
            style: TextStyle(fontSize: 26, backgroundColor: Colors.orange)));
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MainPage(title: 'vkyrse\nСписок задач'),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.title});

  final String title;

  @override
  State<MainPage> createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  List<Widget> todo = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: todo.length,
        itemBuilder: (BuildContext context, int index) {
          return todo[index];
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          String nameTusk = '';
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('имя задачи'),
                content: TextField(
                  onChanged: (String value) {
                    nameTusk = value;
                  },
                ),
                actions: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          todo.add(Tusk().Mew(nameTusk));
                        });
                        Navigator.of(context).pop();
                      },
                      child: Text('добавить'))
                ],
              );
            },
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
