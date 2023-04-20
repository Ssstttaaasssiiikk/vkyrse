import 'package:flutter/material.dart';
import '../../UI/colors.dart';

class Tusk {
  Widget mew(String nameTusk) {
    return Container(
        padding: const EdgeInsets.all(5),
        alignment: Alignment.centerLeft,
        width: double.infinity,
        height: 70,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: MyColors.lightYellow,
            borderRadius: BorderRadius.circular(10)),
        child: Text(nameTusk,
            style: const TextStyle(
                fontSize: 26, backgroundColor: MyColors.darkYellow)));
  }
}
