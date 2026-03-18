import 'package:clean_architecture/modules/home/presentation/manager/cubit/feature_book_cubit.dart';
import 'package:clean_architecture/modules/home/presentation/views/widgets/custom_feature_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomFeatureListViewBuilder extends StatelessWidget {
  const CustomFeatureListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBookCubit, FeatureBookState>(
      builder: (context, state) {
        if(state is FeaturedBookSuccess){
          return CustomFeatureListView(bookList: state.bookList);
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
