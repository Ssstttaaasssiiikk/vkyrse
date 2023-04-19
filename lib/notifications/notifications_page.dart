import 'package:flutter/material.dart';
import 'package:vkyrse/notifications/pattern/notification_pattern.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor:
              const Color.fromRGBO(255, 197, 51, 1), //вынести в отдельный класс
          title: const Center(child: Text('Уведомления'))),
      body: const MyScrean(),
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
