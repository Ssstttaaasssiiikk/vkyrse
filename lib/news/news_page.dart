import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:vkyrse/news/patterns/body.dart';
import '../UI/colors.dart';
import '../notifications/notifications_page.dart';
import '../patterns/app_bar.dart';
import '../timetable/time_table.dart';
import '../todo/todo.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});
  @override
  State<NewsPage> createState() => _NewsPage();
}

class _NewsPage extends State<NewsPage> {
  int _index = 0;
  final List<Widget> _page = [
    const Body(),
    const Notifications(),
    const TimeTablePage(),
    const ToDo()
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: MyColors.myGrey,
          appBarTheme: const AppBarTheme(color: MyColors.myBlack),
          textTheme: Theme.of(context)
              .textTheme
              .apply(bodyColor: MyColors.myBlack, fontFamily: "Google Sans"),
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: Scaffold(
        appBar: const MyAppBar(
          pageName: 'Вкурсе',
        ),
        body: IndexedStack(
          index: _index,
          children: _page,
        ),
        bottomNavigationBar: GNav(
          gap: 8,
          activeColor: MyColors.myGrey,
          color: MyColors.myGrey,
          backgroundColor: MyColors.myBlack,
          padding: const EdgeInsets.all(18),
          tabs: const [
            GButton(icon: Icons.home, text: 'новости'),
            GButton(icon: Icons.calendar_month, text: 'расписание'),
            GButton(icon: Icons.list_alt, text: 'задачи'),
            GButton(icon: Icons.notifications, text: 'уведомления')
          ],
          selectedIndex: _index,
          onTabChange: (index) {
            setState(() {
              _index = index;
            });
          },
        ),
      ),
    );
  }
}
