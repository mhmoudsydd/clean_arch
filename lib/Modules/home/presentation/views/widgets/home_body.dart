import 'package:clean_architecture/config/extentions/number_extension.dart';
import 'package:clean_architecture/config/extentions/widget_extension.dart';
import 'package:clean_architecture/modules/home/presentation/manager/cubit/feature_book_cubit.dart';
import 'package:clean_architecture/modules/home/presentation/views/widgets/best_seller_widget.dart';
import 'package:clean_architecture/modules/home/presentation/views/widgets/custom_appbar.dart';
import 'package:clean_architecture/modules/home/presentation/views/widgets/custom_best_seller_list_view.dart';
import 'package:clean_architecture/modules/home/presentation/views/widgets/custom_feature_listview_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
              CustomFeatureListViewBuilder(),
              20.sbh,
              BestSellerWidget(),
              10.sbh,
            ],
          ),
        ),
        SliverFillRemaining(
          child: CustomBestSellerListViewBuilder().paddingSymmetric(
            horizontal: 30,
          ),
        ),
      ],
    );
  }
}

class CustomBestSellerListViewBuilder extends StatelessWidget {
  const CustomBestSellerListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBookCubit, FeatureBookState>(
      builder: (context, state) {
        return CustomBestSellerListView();
      },
    );
  }
}
