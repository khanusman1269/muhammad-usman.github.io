
import 'package:flutter/cupertino.dart';

extension SizeExtension on BuildContext {
  double get screenWidth => MediaQuery.sizeOf(this).width;
  double get screenHeight => MediaQuery.sizeOf(this).height;
}