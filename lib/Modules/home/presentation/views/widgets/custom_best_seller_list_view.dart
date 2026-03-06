import 'package:clean_architecture/modules/home/presentation/views/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBestSellerListView extends StatelessWidget {
  const CustomBestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return BestSellerItem().paddingSymmetric(vertical: 10);
      }, childCount: 10),
    );
  }
}
