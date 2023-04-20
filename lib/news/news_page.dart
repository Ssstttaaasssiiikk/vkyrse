import 'package:flutter/material.dart';
import 'package:vkyrse/news/patterns/body.dart';
import '../UI/colors.dart';
import '../patterns/app_bar.dart';

class NewsPage extends StatelessWidget{
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: MyColors.backGroundColor,
        appBarTheme: const AppBarTheme(color: MyColors.primaryYellow),
        textTheme: Theme.of(context).textTheme.apply(bodyColor: MyColors.black, fontFamily: "Google Sans"),
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: const Scaffold(appBar: MyAppBar(pageName: 'Новости',), body: Body()),
    );
  }
}