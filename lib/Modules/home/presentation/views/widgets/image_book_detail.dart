import 'package:cached_network_image/cached_network_image.dart';
import 'package:clean_architecture/config/extentions/context_extension.dart';
import 'package:flutter/material.dart';

class ImageBookDetail extends StatelessWidget {
  const ImageBookDetail({
    super.key,
    this.isExistButton = true,
    required this.image,
  });
  final bool isExistButton;
  final String image;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 4,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: CachedNetworkImage(imageUrl: image, fit: BoxFit.cover,height: context.ph(0.25),),
          ),
        ],
      ),
    );
  }
}
