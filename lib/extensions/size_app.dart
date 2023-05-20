import 'package:flutter/widgets.dart';

extension SizeEx on num {
  SizedBox get sizeHeight => SizedBox(height: toDouble());
  SizedBox get sizeWidth => SizedBox(width: toDouble());
}
