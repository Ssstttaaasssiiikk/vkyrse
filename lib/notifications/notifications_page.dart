import 'package:flutter/material.dart';
import 'package:vkyrse/notifications/pattern/notification_pattern.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Scaffold(
      body: MyScrean(),
    ));
  }
}

class MyScrean extends StatelessWidget {
  const MyScrean({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color.fromRGBO(255, 248, 229, 1),
        body: Center(
            child: Column(
          children: [
            NotificationPattern('какая-то задача'),
            NotificationPattern('какая-то задача')
          ],
        )));
  }
}
