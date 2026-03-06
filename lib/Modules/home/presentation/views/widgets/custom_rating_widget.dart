import 'package:clean_architecture/config/extentions/number_extension.dart';
import 'package:clean_architecture/config/resource/text_style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomRatingWidget extends StatelessWidget {
  const CustomRatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(FontAwesomeIcons.solidStar, color: Colors.amber, size: 18),
        10.sbw,
        Text(
          '4.9',
          style: Styles.subTitleBold.copyWith(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        9.sbw,
        Text(
          '(2390)',
          style: Styles.subTitleBold.copyWith(fontSize: 16, color: Colors.grey),
        ),
      ],
    );
  }
}
