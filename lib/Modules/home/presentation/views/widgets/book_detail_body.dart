import 'package:clean_architecture/config/extentions/context_extension.dart';
import 'package:clean_architecture/config/extentions/number_extension.dart';
import 'package:clean_architecture/modules/home/presentation/views/widgets/custom_best_seller_button.dart';
import 'package:clean_architecture/modules/home/presentation/views/widgets/custom_book_detail_app_bar.dart';
import 'package:clean_architecture/modules/home/presentation/views/widgets/custom_rating_widget.dart';
import 'package:clean_architecture/modules/home/presentation/views/widgets/image_book_detail.dart'
    show ImageBookDetail;
import 'package:clean_architecture/modules/home/presentation/views/widgets/similer_list_view_feature.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

class BookDetailBody extends StatelessWidget {
  const BookDetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomBookDetailAppBar(),
        20.sbh,
        ImageBookDetail(
          image: '',
        ).paddingSymmetric(horizontal: context.pw(0.2)),

        30.sbh,

        Text(
          'The Jungle Book',
          style: TextStyle(
            color: Colors.white,
            fontSize: 27,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Rudyard Kipling',
          style: TextStyle(
            color: Color(0xFF707070),
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        14.sbh,
        CustomRatingWidget(),
        20.sbh,
        CustomBestSellerButton(),
        Expanded(child: 50.sbh),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'You can also like',
            style: TextStyle(color: Colors.white),
          ),
        ),
        20.sbh,
        SimillerListViewFeature(),
      ],
    ).paddingSymmetric(horizontal: 30, vertical: 10);
  }
}
