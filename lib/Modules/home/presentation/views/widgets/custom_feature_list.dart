import 'package:clean_architecture/config/extentions/context_extension.dart';
import 'package:clean_architecture/modules/home/domain/entities/book_entity.dart';
import 'package:clean_architecture/modules/home/presentation/views/widgets/image_book_detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomFeatureListView extends StatelessWidget {
  const CustomFeatureListView({super.key, required this.bookList});
  final List<BookEntity> bookList ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.ph(0.25),
      child: ListView.builder(
        itemCount: bookList.length,

        //Back Again Here. to handle style of currentIndex card
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ImageBookDetail(image: bookList[index].image!).paddingOnly(
            left: index == 0 ? 30 : 0,
            right: 20,
          );
        },
      ),
    );
  }
}
