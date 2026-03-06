import 'package:clean_architecture/modules/home/presentation/views/widgets/book_detail_body.dart';
import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: BookDetailBody()));
  }
}
