import 'package:flutter/material.dart';
import 'package:vkyrse/UI/constants.dart';

class Lesson extends StatelessWidget {
  const Lesson({
    super.key,
    required this.lessonId,
    required this.time,
    required this.discipline,
    required this.kind,
    required this.auditoriums,
    required this.group,
    required this.size,
  });

  final int lessonId;
  final String time;
  final String discipline;
  final String kind;
  final String auditoriums;
  final String group;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size.width - 2 * AppConstants.defaultPadding,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            boxShadow: [
              (BoxShadow(
                  offset: Offset(0, 20),
                  blurRadius: 20,
                  color: Color.fromARGB(50, 29, 29, 29)))
            ],
            color: Colors.white),
        margin: const EdgeInsets.only(
            left: AppConstants.defaultPadding,
            right: AppConstants.defaultPadding,
            top: AppConstants.defaultPadding / 2,
            bottom: AppConstants.defaultPadding * 2),
        child: const Column());
  }
}
