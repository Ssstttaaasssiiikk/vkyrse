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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: MyColors.backGroundColor,
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
                      for (ToDoObj todoo in todoList) ToDoItem(todo: todoo),
                    ],
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    margin:
                        const EdgeInsets.only(bottom: 20, right: 10, left: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        (BoxShadow(
                            offset: Offset(0, 0),
                            blurRadius: 10,
                            spreadRadius: 0.0,
                            color: Colors.grey))
                      ],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(0),
                          prefixIcon: Icon(Icons.search,
                              color: Color.fromRGBO(29, 29, 29, 1), size: 20),
                          prefixIconConstraints:
                              BoxConstraints(maxHeight: 20, minWidth: 25),
                          border: InputBorder.none,
                          hintText: "Search",
                          hintStyle: TextStyle(
                            color: Color.fromRGBO(29, 29, 29, 0.5),
                            fontFamily: "Google Sans",
                            fontSize: 18,
                          )),
                    ),
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget searchBox() {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          boxShadow: [
            (BoxShadow(
                offset: Offset(0, 20),
                blurRadius: 20,
                color: Color.fromARGB(50, 29, 29, 29)))
          ],
          color: Colors.white),
      child: const TextField(
        decoration: InputDecoration(
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
