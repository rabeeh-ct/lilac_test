import 'package:flutter/cupertino.dart';

extension Gap on num {
  SizedBox get sBH => SizedBox(
        height: toDouble(),
      );

  SizedBox get sBW => SizedBox(
        width: toDouble(),
      );
}
