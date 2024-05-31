import 'package:flutter/material.dart';

import '../src_feature.dart';


Widget textSplash(String text) {
  return Padding(
    padding:const EdgeInsets.only(bottom:HomeDimens.paddingLargest),
    child: Text(
      text,
      style: const TextStyle(
          color: HomeColors.black, fontSize: HomeDimens.sizeTextLarge),
    ),
  );
}
