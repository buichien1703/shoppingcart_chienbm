import 'package:flutter/material.dart';

import '../../src_feature.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              textItem(StrHome.hotProduct),
              listViewHorizontal(Product.products.length),
              textItem(StrHome.allProduct),
              gridViewProduct(Product.products.length),
            ],
          ),
        ),
      ),
    );
  }
}
