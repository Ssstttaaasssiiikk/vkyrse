import 'package:flutter/material.dart';
import 'package:vkyrse/ToDo/pattern/todo_item.dart';
import 'package:vkyrse/UI/colors.dart';
import 'package:vkyrse/ToDo/model/todolist.dart';

class ToDo extends StatefulWidget {
  const ToDo({super.key});

  @override
  State<ToDo> createState() => _ToDo();
}

class _ToDo extends State<ToDo> {
  final todoList = ToDoObj.toDoList();
  final _todoController = TextEditingController();
  List<ToDoObj> _foundToDo = [];

  @override
  void initState() {
    _foundToDo = todoList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: MyColors.myGrey,
          textTheme: Theme.of(context)
              .textTheme
              .apply(bodyColor: MyColors.myBlack, fontFamily: "Google Sans"),
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                searchBox(),
                Expanded(
                  child: ListView(
                    children: [
                      for (ToDoObj todoo in _foundToDo.reversed)
                        ToDoItem(
                            todo: todoo,
                            onToDoChanged: _handlerToDoChange,
                            onDeleteItem: _deleteToDoItem),
                    ],
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(children: [newToDoObjLabel(), addButton()]),
            )
          ],
        ),
      ),
    );
  }

  Expanded newToDoObjLabel() {
    return Expanded(
        child: Container(
      margin: const EdgeInsets.only(bottom: 20, right: 10, left: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        controller: _todoController,
        decoration: const InputDecoration(
            contentPadding: EdgeInsets.only(left: 10),
            prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 25),
            border: InputBorder.none,
            hintText: "Add new task",
            hintStyle: TextStyle(
              color: Color.fromRGBO(29, 29, 29, 0.5),
              fontFamily: "Google Sans",
              fontSize: 18,
            )),
      ),
    ));
  }

  Container addButton() {
    return Container(
        margin: const EdgeInsets.only(bottom: 20, right: 20),
        child: ElevatedButton(
          onPressed: () {
            _addToDoItem(_todoController.text);
          },
          style: ElevatedButton.styleFrom(
              primary: Color.fromRGBO(29, 29, 29, 1),
              minimumSize: Size(60, 60),
              elevation: 10),
          child: const Text('+',
              style: TextStyle(
                fontSize: 40,
              )),
        ));
  }

  void _handlerToDoChange(ToDoObj todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }

  void _deleteToDoItem(String id) {
    setState(() {
      todoList.removeWhere((item) => item.id == id);
    });
  }

  void _addToDoItem(String todo) {
    setState(() {
      todoList.add(ToDoObj(
          id: DateTime.now().millisecondsSinceEpoch.toString(),
          todoText: todo));
    });
    _todoController.clear();
  }

  void _runFilter(String enteredKeyWord) {
    List<ToDoObj> result = [];
    if (enteredKeyWord.isEmpty) {
      result = todoList;
    } else {
      result = todoList
          .where((item) => item.todoText!
              .toLowerCase()
              .contains(enteredKeyWord.toLowerCase()))
          .toList();
    }
    setState(() {
      _foundToDo = result;
    });
  }

  Widget searchBox() {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Colors.white),
      child: TextField(
        onChanged: (value) => _runFilter(value),
        decoration: const InputDecoration(
            contentPadding: EdgeInsets.all(0),
            prefixIcon: Icon(Icons.search,
                color: Color.fromRGBO(29, 29, 29, 1), size: 20),
            prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 25),
            border: InputBorder.none,
            hintText: "Search",
            hintStyle: TextStyle(
              color: Color.fromRGBO(29, 29, 29, 0.5),
              fontFamily: "Google Sans",
              fontSize: 18,
            )),
      ),
    );
  }
}
