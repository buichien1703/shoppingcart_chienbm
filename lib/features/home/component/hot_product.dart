import 'package:flutter/material.dart';

import '../../src_feature.dart';

class HotProduct extends StatelessWidget {
  HotProduct({super.key});
  
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
      height: 250,
      child: ListView.builder(
        itemCount: list.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final product = list[index];
          return Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              width: 160,
              decoration: BoxDecoration(
                  border: Border.fromBorderSide(
                      BorderSide(width: 1, color: Colors.blueGrey.shade100)),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8)),
                    child: Stack(
                      children: [
                        Image.asset(
                          product.image,
                          fit: BoxFit.fill,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(HomeDimens.paddingDefault),
                          child: Image.asset(ImageHome.iconFire),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              product.name,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '${product.price}đ',
                              style: const TextStyle(color: Colors.amber),
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
