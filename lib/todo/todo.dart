import 'package:flutter/material.dart';
import 'package:vkyrse/todo/pattern/todo_pattern.dart';

class ToDo extends StatelessWidget {
  const ToDo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromRGBO(255, 197, 51, 1),
          title: const Center(child: Text('Список дел'))),
      body: const MyScrean(),
    );
  }
}

class MyScrean extends StatelessWidget {
  const MyScrean({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color.fromRGBO(255, 248, 229, 1),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [ToDoPattern()],
        ));
  }
}
