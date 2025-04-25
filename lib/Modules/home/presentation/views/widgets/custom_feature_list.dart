import 'package:clean_architecture/config/extentions/context_extension.dart';
import 'package:clean_architecture/modules/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomFeatureListView extends StatelessWidget {
  const CustomFeatureListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.ph(0.25),
      child: ListView.builder(
        itemCount: 10,
        
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CustomListViewItem(index: index).paddingOnly(
            left: index == 0 ? 30 : 0,
            right: 20,
           
          );
        },
      ),
    );
  }
}
