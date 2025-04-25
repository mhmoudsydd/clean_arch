import 'dart:ui';

import 'package:clean_architecture/config/extentions/string_extentions.dart';
import 'package:clean_architecture/modules/home/presentation/views/widgets/play_buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_utils/get_utils.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 4,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage('test_image'.toPng),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: PlayButtomItem(),
          ),
        ],
      ),
    );
  }
}

