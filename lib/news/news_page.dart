import 'package:flutter/material.dart';
import 'package:vkyrse/news/patterns/body.dart';
import '../UI/colors.dart';
import '../patterns/app_bar.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

///https://www.youtube.com/watch?v=eIzzQprBrGs
///реализация переключения страниц

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: MyColors.myGrey,
          appBarTheme: const AppBarTheme(color: MyColors.myBlack),
          textTheme: Theme.of(context)
              .textTheme
              .apply(bodyColor: MyColors.myBlack, fontFamily: "Google Sans"),
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: const Scaffold(
        appBar: MyAppBar(
          pageName: 'Новости',
        ),
        body: Body(),
        bottomNavigationBar: GNav(
          gap: 8,
          activeColor: MyColors.myGrey,
          color: MyColors.myGrey,
          backgroundColor: MyColors.myBlack,
          padding: EdgeInsets.all(18),
          //tabMargin: EdgeInsets.all(1),
          //tabBackgroundColor: Colors.grey,
          tabs: [
            GButton(icon: Icons.home, text: 'новости'),
            GButton(icon: Icons.calendar_month, text: 'расписание'),
            GButton(icon: Icons.list_alt, text: 'задачи'),
            GButton(icon: Icons.notifications, text: 'уведомления')
          ],
        ),
      ),
    );
  }
}
