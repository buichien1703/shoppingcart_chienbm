import 'package:flutter/material.dart';

import '../../src_feature.dart';

Widget gridViewProduct(int int) {
  return SizedBox(
      height: 1000,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          childAspectRatio: 0.75,
          mainAxisSpacing: 2,
        ),
        itemCount: int,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return GridviewProduct(products: Product.products[index],);
        },
      ),
    );
}
