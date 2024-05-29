import 'package:flutter/material.dart';

import '../../src_feature.dart';

PreferredSizeWidget appBar(BuildContext context) {
  return AppBar(
    backgroundColor: HomeColors.orange,
    title: const Text(StrHome.home, style: TextStyle(color: HomeColors.white)),
    actions:[
      Padding(
        padding: const  EdgeInsets.only(right: HomeDimens.paddingMedium),
        child: GestureDetector(
          child: const Icon(
            Icons.shopping_cart_outlined,
            color: HomeColors.white,
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder:(context) => Container(),));
          },
        ),
      )
    ],
  );
}
