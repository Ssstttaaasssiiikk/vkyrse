import 'package:flutter/material.dart';
import 'todolist/todolist.dart';

void main() => runApp(MaterialApp(
    initialRoute: '/', //нужен для организации навигации в приложении
    routes: {'/': (context) => const ToDoList()}));
