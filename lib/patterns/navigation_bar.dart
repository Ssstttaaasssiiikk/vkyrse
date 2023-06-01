import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../UI/colors.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});
  @override
  State<MyNavigationBar> createState() => _NavigationBar();
}

class _NavigationBar extends State<MyNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      bottomNavigationBar: GNav(
        gap: 8,
        activeColor: MyColors.myGrey,
        color: MyColors.myGrey,
        backgroundColor: MyColors.myBlack,
        padding: const EdgeInsets.all(18),
        //tabMargin: EdgeInsets.all(1),
        //tabBackgroundColor: Colors.grey,
        tabs: const [
          GButton(icon: Icons.home, text: 'новости'),
          GButton(icon: Icons.calendar_month, text: 'расписание'),
          GButton(icon: Icons.list_alt, text: 'задачи'),
          GButton(icon: Icons.notifications, text: 'уведомления')
        ],
        onTabChange: (value) {
          setState(() {});
        },
      ),
    ));
  }
}
