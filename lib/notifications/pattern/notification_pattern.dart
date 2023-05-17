import 'package:flutter/material.dart';
import 'package:vkyrse/UI/colors.dart';
import 'dart:math';

List<String> words = [
  'Вы выплнили эту задачу?',
  'Вы не забыли про эту задачу?'
];
String randomWord = words[Random().nextInt(words.length)];

class NotificationPattern extends StatelessWidget {
  final String task;
  const NotificationPattern(this.task, {super.key});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: MediaQuery.of(context).size.width * 0.03),
      Container(
          decoration: BoxDecoration(
              color: MyColors.white, borderRadius: BorderRadius.circular(20)),
          width: MediaQuery.of(context).size.width - 20,
          child: Column(children: [
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                      height: MediaQuery.of(context).size.height * 0.04,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                          color: MyColors.primaryYellow,
                          borderRadius: BorderRadius.circular(15)),
                      child: Text(
                        randomWord,
                        style: const TextStyle(fontSize: 24),
                        textAlign: TextAlign.center,
                      )),
                )
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                softWrap: true,
                task,
                style: const TextStyle(fontSize: 20, color: MyColors.myBlack),
              )
            ]),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.043,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(15)),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.06,
                  ),
                  const Text('Выполнена',
                      style: TextStyle(color: MyColors.white)),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.check, color: MyColors.white))
                ]),
              )
            ]),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          ]))
    ]);
  }
}
