import 'package:clean_architecture/config/extentions/context_extension.dart';
import 'package:clean_architecture/modules/home/presentation/views/widgets/image_book_detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';

class SimillerListViewFeature extends StatelessWidget {
  const SimillerListViewFeature({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.ph(0.15),
      child: ListView.builder(
        itemCount: 10,

        //Back Again Here. to handle style of currentIndex card
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ImageBookDetail(image: 'https://example.com/image$index.jpg').paddingOnly(right: 20);
        },
      ),
    );
  }
}
