import 'package:flutter/material.dart';
import '../UI/colors.dart';
import '../UI/text_style.dart';
import 'ToDoList_pattern/ToDoList_pattern.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State<ToDoList> createState() => _ToDoList();
}

class _ToDoList extends State<ToDoList> {
  List<Widget> todo = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
          backgroundColor: MyColors.yellow,
          title: const Center(
            child: Text(
              'список задач',
              style: MyTextStyle.appbarTS,
            ),
          )),
      body: ListView.builder(
        itemCount: todo.length,
        itemBuilder: (BuildContext context, int index) {
          return todo[index];
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: MyColors.brow,
        onPressed: () {
          String nameTusk = '';
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text('имя задачи'),
                content: TextField(
                  onChanged: (String value) {
                    nameTusk = value;
                  },
                ),
                actions: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          todo.add(Tusk().mew(nameTusk));
                        });
                        Navigator.of(context).pop();
                      },
                      child: const Text('добавить'))
                ],
              );
            },
          );
        },
        tooltip: 'добавить задачу',
        child: const Icon(Icons.add),
      ),
    );
  }
}
