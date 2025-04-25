import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  
  double get h =>MediaQuery.sizeOf(this).height;
  double get w =>MediaQuery.sizeOf(this).width;
  double  ph(double percentage) =>MediaQuery.sizeOf(this).height * percentage;
  double  pw(double percentage) =>MediaQuery.sizeOf(this).width * percentage;
  
  // TextStyle get bodyMedium => Theme.of(this).textTheme.bodyMedium!;
  // TextStyle get bodyLarge => Theme.of(this).textTheme.bodyLarge!;
  // TextStyle get bodySmall => Theme.of(this).textTheme.bodySmall!;
  // TextStyle get labelLarge => Theme.of(this).textTheme.labelLarge!;
  // TextStyle get labelMedium => Theme.of(this).textTheme.labelMedium!;
  // TextStyle get labelSmall => Theme.of(this).textTheme.labelSmall!;
  // TextStyle get titleLarge => Theme.of(this).textTheme.titleLarge!;
  // TextStyle get titleMedium => Theme.of(this).textTheme.titleMedium!;
  // TextStyle get titleSmall => Theme.of(this).textTheme.titleSmall!;
  // TextStyle get headlineLarge => Theme.of(this).textTheme.headlineLarge!;
  // TextStyle get headlineMedium => Theme.of(this).textTheme.headlineMedium!;
  // TextStyle get headlineSmall => Theme.of(this).textTheme.headlineSmall!;
  // TextStyle get displayLarge => Theme.of(this).textTheme.displayLarge!;
  // TextStyle get displayMedium => Theme.of(this).textTheme.displayMedium!;
  // TextStyle get displaySmall => Theme.of(this).textTheme.displaySmall!;
  //  void snack(
  //   String message, {
  //   AnimatedSnackBarType? type,
  //   MobileSnackBarPosition? position,
  //   double? borderRadius,
  // }) {
  //   AnimatedSnackBar.material(message,
  //           type: type ?? AnimatedSnackBarType.error,
  //           borderRadius: BorderRadius.circular(borderRadius ?? 12),
  //           mobileSnackBarPosition: position ?? MobileSnackBarPosition.bottom)
  //       .show(
  //     this,
  //   );
  // }
}