import 'package:flutter/material.dart';
import 'package:vkyrse/UI/colors.dart';

import '../../UI/app_text_styles.dart';
import '../../UI/constants.dart';

class NewsPost extends StatelessWidget {
  const NewsPost({
    super.key,
    required this.headText,
    required this.size,
    required this.dateText,
    required this.imageLocation,
  });

  final String headText;
  final Size size;
  final String dateText;
  final String imageLocation;

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
                  color: MyColors.myGrey))
            ],
            color: Colors.white),
        margin: const EdgeInsets.only(
            left: AppConstants.defaultPadding,
            right: AppConstants.defaultPadding,
            top: AppConstants.defaultPadding / 2,
            bottom: AppConstants.defaultPadding * 2),
        child: Column(children: <Widget>[
          imageFrame(),
          headerTextFrame(),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[dataFrame(), saveBtnFrame()])
        ]));
  }

  Container saveBtnFrame() {
    return Container(
        // padding: const EdgeInsets.all(AppConstants.defaultPadding),
        margin: const EdgeInsets.all(AppConstants.defaultPadding),
        width: AppConstants.defaultPadding * 3.3,
        height: AppConstants.defaultPadding * 3.3,
        decoration: const BoxDecoration(
            color: MyColors.myBlack,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: const IconButton(
          icon: Icon(
            Icons.bookmark_border,
            color: MyColors.myGrey,
            size: 15,
          ),
          onPressed: null,
        ));
  }

  Container dataFrame() {
    return Container(
        padding: const EdgeInsets.all(AppConstants.defaultPadding),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15)),
        ),
        child: Container(
            padding: const EdgeInsets.only(
                top: AppConstants.defaultPadding - 5,
                bottom: AppConstants.defaultPadding - 5,
                left: AppConstants.defaultPadding,
                right: AppConstants.defaultPadding),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: MyColors.myBlack),
            child: Text(dateText,
                style: const TextStyle(
                  fontFamily: "Google Sans",
                  fontSize: 18,
                  color: MyColors.myGrey,
                ))));
  }

  Container headerTextFrame() {
    return Container(
        padding: const EdgeInsets.all(AppConstants.defaultPadding),
        child: RichText(
          text: TextSpan(
            text: headText,
            // textAlign: TextAlign.center,
            style: AppTextStyles.headerTextStyle,
          ),
        ));
  }

  ClipRRect imageFrame() {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15), topRight: Radius.circular(15)),
      child: Image.asset(imageLocation),
    );
  }
}
