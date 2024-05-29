import 'package:flutter/material.dart';

import '../../src_feature.dart';

class AllProduct extends StatelessWidget {
  AllProduct({super.key});
  
  // tạm data dựng UI
  final List<Product> list = [
    Product(name: 'Product #0', image: 'images/assets/product_0.jpg', price: 160000.0),
    Product(name: 'Product #1', image: 'images/assets/product_1.jpg', price: 180000.0),
    Product(name: 'Product #2', image: 'images/assets/product_2.jpg', price: 600000.0),
    Product(name: 'Product #3', image: 'images/assets/product_3.jpg', price: 260000.0),
    Product(name: 'Product #4', image: 'images/assets/product_4.jpg', price: 100000.0),
    Product(name: 'Product #5', image: 'images/assets/product_5.jpg', price: 650900.0),
    Product(name: 'Product #6', image: 'images/assets/product_6.jpg', price: 214040.0),
    Product(name: 'Product #7', image: 'images/assets/product_7.jpg', price: 352100.0),
    Product(name: 'Product #8', image: 'images/assets/product_8.jpg', price: 445700.0),
    Product(name: 'Product #9', image: 'images/assets/product_9.jpg', price: 994300.0),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1000,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          childAspectRatio: 0.75,
          mainAxisSpacing: 2,
        ),
        itemCount: list.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          final product = list[index];
          return Padding(
            padding: const EdgeInsets.all(HomeDimens.radiusDefault),
            child: Container(
              decoration: BoxDecoration(
                  border: const Border.fromBorderSide(
                      BorderSide(width: 1, color: HomeColors.borderSide)),
                  borderRadius: BorderRadius.circular(HomeDimens.radius10),
                  color: HomeColors.white),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(HomeDimens.radiusDefault),
                        topRight: Radius.circular(HomeDimens.radiusDefault)),
                    child: Image.asset(
                      product.image,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: HomeDimens.paddingDefault),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              product.name,
                              style: const TextStyle(
                                  color: HomeColors.black,
                                  fontSize: HomeDimens.sizeTextMedium,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '${product.price}đ',
                              style: const TextStyle(color: HomeColors.amber),
                            )
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.add_shopping_cart_outlined),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
