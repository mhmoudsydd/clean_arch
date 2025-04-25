import 'package:clean_architecture/modules/home/presentation/views/widgets/home_body.dart' show HomeBody;
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 
      body: SafeArea(child: const HomeBody()),
    );
  }
}