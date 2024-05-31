import 'package:flutter/material.dart';
import '../../src_feature.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: appBarCart(context),
    body: const BodyCart(),
  );
  }
}




