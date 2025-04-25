import 'package:clean_architecture/config/resource/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'modules/splash/presentation/views/splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
         scaffoldBackgroundColor: AppColors.kPrimaryColor,
      ),
      home:  SplashScreen(), // Replace with your actual splash screen widget
    ); 
     }
}

