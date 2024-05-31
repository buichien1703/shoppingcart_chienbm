import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../src_feature.dart';

class HotProduct extends StatelessWidget {
  final Product products;

  const HotProduct({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(HomeDimens.radiusDefault),
      child: Container(
        width: 160,
        decoration: BoxDecoration(
            border: const Border.fromBorderSide(
                BorderSide(width: 1, color: HomeColors.borderSide)),
            borderRadius: BorderRadius.circular(HomeDimens.radius10),
            color: Colors.white),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(HomeDimens.radiusDefault),
                  topRight: Radius.circular(HomeDimens.radiusDefault)),
              child: Stack(
                children: [
                  Image.asset(
                    products.image,
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
              padding: const EdgeInsets.only(top: HomeDimens.paddingDefault),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        products.name,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: HomeDimens.sizeTextMedium,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '${products.price}đ',
                        style: const TextStyle(color: Colors.amber),
                      )
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      final cartBloc = context.read<CartBloc>();
                      cartBloc.add(AddToCart(products));
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Add to card success"),
                        duration: Duration(seconds: 2),
                      ));
                    },
                    icon: const Icon(Icons.add_shopping_cart_outlined),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
