import 'dart:ffi';
import 'package:flutter/material.dart';

import 'Tusk.dart';

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
        onPressed: creatusk,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
