import 'package:flutter/material.dart';

import '../../src_feature.dart';

Widget listViewHorizontal(int int) {
  return SizedBox(
      height: 250,
      child: ListView.builder(
          itemCount: int,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return HotProduct(products: Product.products[index]);
          }));
}