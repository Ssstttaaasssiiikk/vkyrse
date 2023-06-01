import 'package:flutter/material.dart';
import 'package:vkyrse/ToDo/model/todolist.dart';

class ToDoItem extends StatelessWidget {
  final ToDoObj todo;
  final onToDoChanged; // _handlerToDoChange
  final onDeleteItem; // _deleteToDoItem

  const ToDoItem(
      {Key? key,
      required this.todo,
      required this.onToDoChanged,
      required this.onDeleteItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            boxShadow: [
              (BoxShadow(
                offset: Offset(0, 20),
                blurRadius: 20,
                color: Color.fromARGB(50, 29, 29, 29),
              ))
            ],
            color: Colors.white),
        child: ListTile(
          contentPadding: const EdgeInsets.only(right: 7, left: 15),
          onTap: () {
            onToDoChanged(todo);
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          tileColor: Colors.white,
          leading: Icon(
            todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
            color: Color.fromRGBO(29, 29, 29, 1),
          ),
          title: Text(todo.todoText!,
              style: TextStyle(
                fontSize: 16,
                color: const Color.fromRGBO(29, 29, 29, 1),
                decoration: todo.isDone ? TextDecoration.lineThrough : null,
              )),
          trailing: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(164, 4, 4, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: IconButton(
                color: Colors.white,
                iconSize: 18,
                icon: const Icon(Icons.delete),
                onPressed: () {
                  onDeleteItem(todo.id);
                },
              )),
        ));
  }
}
