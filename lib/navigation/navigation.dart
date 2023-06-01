//import 'dart:html';

import 'package:get/get.dart';
import 'package:vkyrse/news/news_page.dart';
import '../notifications/notifications_page.dart';
import '../timetable/time_table.dart';
import '../todo/todo.dart';

class ButtonNavigation extends GetxController {
  RxInt index = 0.obs;

  var page = [
    const NewsPage(),
    const Notifications(),
    const TimeTablePage(),
    const ToDo()
  ];
}
