import 'package:clean_architecture/config/resource/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BestSellerWidget extends StatelessWidget {
  const BestSellerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Best Seller',
      style: Styles.titleSemiBold,
    ).paddingSymmetric(horizontal: 30);
  }
}