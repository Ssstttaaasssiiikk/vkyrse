import 'package:flutter/material.dart';
import 'news/news_page.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/', //нужен для организации навигации в приложении
  routes: {'/': (context) => const NewsPage()}));