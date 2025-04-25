import 'package:clean_architecture/config/constant.dart';
import 'package:clean_architecture/config/extentions/number_extension.dart';
import 'package:clean_architecture/config/extentions/string_extentions.dart';
import 'package:clean_architecture/modules/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> offsetAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  

  
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
      
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SvgPicture.asset(
          'BOOKLY'.toSvg,
          height: 50,
        ).paddingSymmetric(horizontal: 50),
        10.sbh,
        SlideTransition(
          position: offsetAnimation, 
          child: Text(
            'Read Free Books',
          
            style: TextStyle(fontSize: 18,),
            textAlign: TextAlign.center,
          ).paddingSymmetric(horizontal: 50),
        ),
      ],
    );
  }
  void initSlidingAnimation() {
     _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    offsetAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
    _controller.forward();
  }
  void navigateToHome() {
       Future.delayed(Duration(seconds: 3), () {
     Get.to(()=>HomeView(), transition: Transition.fade, duration: kTransitionDuration,); 
    });
  }
}

