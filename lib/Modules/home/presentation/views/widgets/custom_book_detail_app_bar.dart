import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBookDetailAppBar extends StatelessWidget {
  const CustomBookDetailAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(FontAwesomeIcons.x, color: Colors.white),
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(FontAwesomeIcons.cartShopping, color: Colors.white),
        ),
      ],
    );
  }
}
