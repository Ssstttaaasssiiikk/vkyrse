import 'package:flutter/material.dart';

class Tusk {
  Widget Mew() {
    return Container(
        alignment: Alignment.centerLeft,
        width: double.infinity,
        height: 70,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(10)),
        child: Text('задача',
            style: TextStyle(fontSize: 26, backgroundColor: Colors.orange)));
  }
}
