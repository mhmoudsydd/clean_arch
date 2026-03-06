import 'package:clean_architecture/config/extentions/number_extension.dart';
import 'package:clean_architecture/modules/home/presentation/views/widgets/best_seller_widget.dart';
import 'package:clean_architecture/modules/home/presentation/views/widgets/custom_appbar.dart';
import 'package:clean_architecture/modules/home/presentation/views/widgets/custom_best_seller_list_view.dart';
import 'package:clean_architecture/modules/home/presentation/views/widgets/custom_feature_list.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              25.sbh,
              CustomFeatureListView(),
              40.sbh,
              BestSellerWidget(),
              10.sbh,
            ],
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          sliver: CustomBestSellerListView(),
        ),
      ],
    );
  }
}
