import 'package:flutter/material.dart';

import '../../src_feature.dart';

BoxDecoration decoration() {
  return BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: const Offset(0, 2),
      ),
    ],
    border: const Border.fromBorderSide(
        BorderSide(width: 1, color: HomeColors.borderSide)),
  );
}

BoxDecoration decorationCartProduct() {
  return BoxDecoration(
    color: Colors.grey.withOpacity(0.1),
    borderRadius: BorderRadius.circular(20),
    border: const Border.fromBorderSide(
        BorderSide(width: 1, color: HomeColors.borderSide)),
  );
}

BoxDecoration decorationButtonCart() {
  return BoxDecoration(
      border: const Border.fromBorderSide(
          BorderSide(width: 1, color: HomeColors.borderSide)),
      borderRadius: BorderRadius.circular(5));
}
