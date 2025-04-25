
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class PlayButtomItem extends StatelessWidget {
  const PlayButtomItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: ShapeDecoration(
        shape: const CircleBorder(),
        color: Colors.grey.withOpacity(0.4),
       
      ),
      child: Center(child: Icon(FontAwesomeIcons.play, size: 15,)),
    ).paddingAll(5);
  }
}