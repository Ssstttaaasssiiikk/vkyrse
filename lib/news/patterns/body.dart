import 'package:flutter/material.dart';
import 'news_post.dart';

class Body extends StatelessWidget {
  const Body({super.key});
  final String dateText = "06 апреля";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
        child: Column(children: <Widget>[
      NewsPost(
          headText:
              "\u0420\u0430\u0437\u0440\u0430\u0431\u043e\u0442\u043a\u0438 \u0422\u0423\u0421\u0423\u0420\u0430 \u043f\u043e\u043b\u0443\u0447\u0438\u043b\u0438 \u0432\u044b\u0441\u043e\u043a\u0443\u044e \u043e\u0446\u0435\u043d\u043a\u0443 \u043d\u0430 \u043c\u0435\u0436\u0434\u0443\u043d\u0430\u0440\u043e\u0434\u043d\u043e\u043c \u0441\u0430\u043b\u043e\u043d\u0435 \u00ab\u041a\u043e\u043c\u043f\u043b\u0435\u043a\u0441\u043d\u0430\u044f \u0431\u0435\u0437\u043e\u043f\u0430\u0441\u043d\u043e\u0441\u0442\u044c\u00bb",
          size: size,
          dateText: "31 мая 2023",
          imageLocation:
              "assets/images/01.png"),
      NewsPost(
          headText:
              "\u0412 \u0422\u0423\u0421\u0423\u0420\u0435 \u0437\u0430\u0432\u0435\u0440\u0448\u0438\u043b\u0430\u0441\u044c \u0432\u0435\u0441\u0435\u043d\u043d\u044f\u044f \u0432\u043e\u043b\u043d\u0430 \u0442\u0440\u0435\u043d\u0438\u043d\u0433\u043e\u0432 \u043f\u0440\u0435\u0434\u043f\u0440\u0438\u043d\u0438\u043c\u0430\u0442\u0435\u043b\u044c\u0441\u043a\u0438\u0445 \u043a\u043e\u043c\u043f\u0435\u0442\u0435\u043d\u0446\u0438\u0439",
          size: size,
          dateText: "31 мая 2023",
          imageLocation:
              "assets/images/04.png"),
      NewsPost(
          headText:
              "\u0412 \u0422\u0423\u0421\u0423\u0420\u0435 \u043f\u0440\u043e\u0439\u0434\u0451\u0442 \u043f\u0435\u0440\u0432\u044b\u0439 \u00ab\u0420\u0430\u0434\u0438\u043e\u0445\u0430\u043a\u0430\u0442\u043e\u043d\u00bb",
          size: size,
          dateText: "30 мая 2023",
          imageLocation:
              "assets/images/02.jpg"),
      NewsPost(
          headText:
              "\u0412 \u0446\u0435\u043d\u0442\u0440\u0435 \u0432\u043d\u0438\u043c\u0430\u043d\u0438\u044f \u2014 \u0441\u0442\u0443\u0434\u0435\u043d\u0442",
          size: size,
          dateText: "30 мая 2023",
          imageLocation:
              "assets/images/03.jpg"),
      NewsPost(
          headText:
              "\u041d\u043e\u0432\u044b\u0435 \u043f\u043b\u0430\u0432\u0443\u0447\u0438\u0435 \u0434\u043e\u043c\u0438\u043a\u0438 \u0434\u043b\u044f \u0443\u0442\u043e\u043a \u0430\u043a\u0432\u0430\u043b\u0430\u043d\u0433\u0438\u0441\u0442\u044b \u0422\u0423\u0421\u0423\u0420\u0430 \u0443\u0441\u0442\u0430\u043d\u043e\u0432\u0438\u043b\u0438 \u043d\u0430 \u0423\u043d\u0438\u0432\u0435\u0440\u0441\u0438\u0442\u0435\u0442\u0441\u043a\u043e\u043c \u043e\u0437\u0435\u0440\u0435",
          size: size,
          dateText: "29 мая 2023",
          imageLocation:
              "assets/images/05.png"),
    ]));
  }
}
