import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:vkyrse/UI/app_text_styles.dart';
import 'package:vkyrse/UI/constants.dart';
import '../UI/colors.dart';
import '../patterns/app_bar.dart';

class TimeTablePage extends StatefulWidget{
  const TimeTablePage({super.key});

  @override
  State<TimeTablePage> createState() => _TimeTablePage();
}

class _TimeTablePage extends State<TimeTablePage>{
  DateTime today = DateTime.now();

  void _onDaySelected(DateTime day, DateTime focusedDay){
    setState(() {
      today = day;
    });
  }

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
      home: Scaffold(appBar: const MyAppBar(pageName: 'Расписание'), body: content()),
    );
  }

  Widget content(){
    return Padding(
      padding: const EdgeInsets.all(AppConstants.defaultPadding),
      child: Column(
        children: [
          Text(DateFormat.yMMMMd().format(today), style: AppTextStyles.headerTextStyle),
          TableCalendar(
            // locale: 'ru_RU',
            rowHeight: 4*AppConstants.defaultPadding,
            headerStyle: const HeaderStyle(formatButtonVisible: false, titleCentered: true),
            availableGestures: AvailableGestures.all,
            selectedDayPredicate: (day) => isSameDay(day, today),
            focusedDay: today,
            firstDay: DateTime.utc(2022, 9, 1),
            lastDay: DateTime.utc(2023, 7, 4),
            onDaySelected: _onDaySelected,
          ),
        ]
      ),
    );
  }
}