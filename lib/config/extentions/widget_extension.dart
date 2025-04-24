import 'package:flutter/material.dart';

extension WidgetExtension on Widget{
  Padding paddingAll(double? padding)=> Padding(
    padding: EdgeInsets.all(padding??0),
    child: this,
  );
  Padding paddingOnly({
    double? bottom,
    double? top,
    double? left,
    double? right,
  }) =>
      Padding(
        padding: EdgeInsets.only(
          bottom: bottom ?? 0.0,
          top: top ?? 0.0,
          left: left ?? 0.0,
          right: right ?? 0.0,
        ),
        child: this,
      );
 Padding paddingSymmetric({double? vertical, double? horizontal}) => Padding(
        padding: EdgeInsets.symmetric(
          vertical: vertical ?? 0.0,
          horizontal: horizontal ?? 0.0,
        ),
        child: this,
      );

  Align align(Alignment alignment) => Align(alignment: alignment, child: this);

}