import 'package:clean_architecture/config/extentions/number_extension.dart';
import 'package:clean_architecture/config/utils/go_routes.dart';
import 'package:clean_architecture/modules/home/presentation/views/widgets/best_seller_body.dart';
import 'package:clean_architecture/modules/home/presentation/views/widgets/best_seller_item_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(AppRouter.kBookDetails);
      },
      child: SizedBox(
        height: 140,
        child: Row(
          children: [
            BestSellerItemImage(),
            30.sbw,
            Expanded(child: BestSellerItemBody()),
          ],
        ),
      ),
    );
  }
}
