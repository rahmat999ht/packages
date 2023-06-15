import 'package:flutter/widgets.dart';

extension SizeEx on num {
  SizedBox get sH => SizedBox(height: toDouble());
  SizedBox get sW => SizedBox(width: toDouble());
}
