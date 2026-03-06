import 'package:clean_architecture/modules/home/presentation/views/widgets/custom_book_button.dart';
import 'package:flutter/material.dart';

class CustomBestSellerButton extends StatelessWidget {
  const CustomBestSellerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomBookButton(
            backgroundColor: Colors.white,
            border: BorderRadius.only(
              topLeft: Radius.circular(15),
              bottomLeft: Radius.circular(15),
            ),
            textColor: Colors.black,
            text: '19.99€',
          ),
        ),
        Expanded(
          child: CustomBookButton(
            backgroundColor: Color(0xFFEF8262),
            border: BorderRadius.only(
              topRight: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
            textColor: Colors.white,
            text: 'Free preview',
          ),
        ),
      ],
    );
  }
}
