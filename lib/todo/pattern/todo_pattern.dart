import 'package:flutter/material.dart';
import 'package:vkyrse/UI/colors.dart';

class ToDoPattern extends StatelessWidget {
  const ToDoPattern({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: MediaQuery.of(context).size.width * 0.03),
      Container(
          decoration: BoxDecoration(
              color: MyColors.white, borderRadius: BorderRadius.circular(20)),
          width: MediaQuery.of(context).size.width - 20,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
                          child: const Text(
                            'Лаба по ТВиМС',
                            style: TextStyle(fontSize: 24),
                            textAlign: TextAlign.center,
                          )),
                    )
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        softWrap: true,
                        '5 мая 2023',
                        style: TextStyle(fontSize: 20, color: MyColors.black),
                      )
                    ]),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              ])),
      SizedBox(height: MediaQuery.of(context).size.width * 0.03),
      Container(
          decoration: BoxDecoration(
              color: MyColors.white, borderRadius: BorderRadius.circular(20)),
          width: MediaQuery.of(context).size.width - 20,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
                          child: const Text(
                            'Лаба по ТВиМС',
                            style: TextStyle(fontSize: 24),
                            textAlign: TextAlign.center,
                          )),
                    )
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        softWrap: true,
                        '5 мая 2023',
                        style: TextStyle(fontSize: 20, color: MyColors.black),
                      )
                    ]),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              ]))
    ]);
  }
}
