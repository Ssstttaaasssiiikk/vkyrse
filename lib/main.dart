import 'package:flutter/material.dart';
import 'package:vkyrse/notifications/notifications_page.dart';

void main() => runApp(MaterialApp(
    initialRoute: '/', //нужен для организации навигации в приложении
    routes: {'/': (context) => const Notifications()}));
