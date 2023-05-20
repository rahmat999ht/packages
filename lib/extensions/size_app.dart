import 'package:flutter/widgets.dart';

extension SizeEx on num {
  SizedBox get sH => SizedBox(height: toDouble());
  SizedBox get sW => SizedBox(width: toDouble());
}

class SizeApp {
  SizeApp.isWidth(this.width) : height = null;
  SizeApp.isHeight(this.height) : width = null;

  final double? height;
  final double? width;

  static const sizeHeight = double.infinity;
  static const sizeWidth = double.infinity;

  SizedBox get sH => SizedBox(height: height);
  SizedBox get sW => SizedBox(width: width);
}
