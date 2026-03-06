import 'package:clean_architecture/config/extentions/string_extentions.dart';
import 'package:flutter/material.dart';

class BestSellerItemImage extends StatelessWidget {
  const BestSellerItemImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.4 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage('test_image'.toPng),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
