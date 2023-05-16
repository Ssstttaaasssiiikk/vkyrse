import 'package:flutter/material.dart';
import 'news_post.dart';

class Body extends StatelessWidget{
  const Body({super.key});
  final String headText = "В ТУСУРе создали прототип системы для реализации малоиновационных операций на сердце";
  final String dateText = "04 апреля 2023";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          // HeaderBox(size: size),
          NewsPost(headText: headText, size: size, dateText: dateText, imageLocation: "assets/images/news1.jpg"),
          NewsPost(headText: headText, size: size, dateText: dateText, imageLocation: "assets/images/news1.jpg")
        ]
      )
    );
  }
}