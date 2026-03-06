import 'package:clean_architecture/config/extentions/string_extentions.dart';
import 'package:clean_architecture/config/utils/go_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset('BOOKLY'.toSvg, height: 20),
        Spacer(),
        IconButton(
          onPressed: () {
            context.push(AppRouter.kSearch);
          },
          icon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
            color: Colors.white,
          ),
        ),
      ],
    ).paddingSymmetric(horizontal: 30, vertical: 10);
  }
}
