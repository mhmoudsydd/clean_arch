import 'package:clean_architecture/config/extentions/number_extension.dart';
import 'package:clean_architecture/config/resource/text_style.dart';
import 'package:clean_architecture/modules/home/presentation/views/widgets/custom_rating_widget.dart';
import 'package:flutter/material.dart';

class BestSellerItemBody extends StatelessWidget {
  const BestSellerItemBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Harry Potter and the Goblet of Fire',
          style: Styles.subTitleBold,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        5.sbh,
        Text('J.K. Rowling', style: Styles.subTitleMedium),
        2.sbh,
        Row(
          children: [
            Text('19.99 \$', style: Styles.subTitleBold),
            Spacer(),
            CustomRatingWidget(),
          ],
        ),
      ],
    );
  }
}
