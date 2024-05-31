import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../src_feature.dart';

PreferredSizeWidget appBar(BuildContext context) {
  return AppBar(
    backgroundColor: HomeColors.colorApp,
    title: const Text(StrHome.home, style: TextStyle(color: HomeColors.white)),
    actions: [
      BlocBuilder<CartBloc, CardState>(
        builder: (context, state) {
          int count = state.cartItem.length;
          return Padding(
            padding: const EdgeInsets.only(right: HomeDimens.paddingMedium),
            child: Stack(
              children: [
                GestureDetector(
                  child: const Icon(
                    Icons.shopping_cart_outlined,
                    color: HomeColors.white,
                    size: 30,
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const CartScreen()));
                  },
                ),
                Positioned(child: Container(
                  padding: const EdgeInsets.all(HomeDimens.paddingSmall),
                  decoration: BoxDecoration(
                    color: HomeColors.red,
                    borderRadius: BorderRadius.circular(HomeDimens.radius20),
                  ),
                  constraints: const BoxConstraints(
                    minHeight: 15,
                    minWidth: 10,
                  ),
                  child: Text('$count',style: TextStyle(color: HomeColors.white,fontSize: 8),textAlign: TextAlign.center,),
                ),),
              ],
            ),
          );
        },
      )
    ],
  );
}

PreferredSizeWidget appBarCart(BuildContext context) {
  return AppBar(
    backgroundColor: HomeColors.colorApp,
    title: const Text(StrHome.cart, style: TextStyle(color: HomeColors.white)),
  );
}
