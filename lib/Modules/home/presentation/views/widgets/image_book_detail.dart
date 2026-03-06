import 'package:clean_architecture/config/extentions/string_extentions.dart';
import 'package:clean_architecture/modules/home/presentation/views/widgets/play_buttom.dart';
import 'package:flutter/material.dart';

class ImageBookDetail extends StatelessWidget {
  const ImageBookDetail({super.key, this.isExistButton = true});
  final bool isExistButton;
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
          isExistButton
              ? Positioned(bottom: 0, right: 0, child: PlayButtomItem())
              : SizedBox(),
        ],
      ),
    );
  }
}
