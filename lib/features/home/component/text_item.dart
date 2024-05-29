import 'package:flutter/material.dart';

import '../../src_feature.dart';

Widget textItem(String text) {
  return Padding(
    padding:const EdgeInsets.all(HomeDimens.paddingSmall),
    child: Text(
      text,
      style: const TextStyle(
          color: HomeColors.orange, fontWeight: FontWeight.bold, fontSize: HomeDimens.sizeTextLarge),
    ),
  );
}
