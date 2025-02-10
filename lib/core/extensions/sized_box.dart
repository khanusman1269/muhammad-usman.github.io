
import 'package:flutter/material.dart';

extension NumSizedBoxExtension on num {
  Widget get width => SizedBox(width: toDouble());
  Widget get height => SizedBox(height: toDouble());
}
