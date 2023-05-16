import 'package:flutter/material.dart';
import 'package:vkyrse/UI/app_text_styles.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String pageName;

  const MyAppBar({super.key, required this.pageName});

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Center(
        child: Text(
          pageName,
          style: AppTextStyles.appBarTextStyle,
          ),
        ),
      );
  }
}