import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../src_feature.dart';

class BodyCart extends StatelessWidget {
  const BodyCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CardState>(
      builder: (context, state) {
        if (state.cartItem.isEmpty) {
          return const Center(
            child: Text(
              StrHome.noData,
              style: TextStyle(color: Colors.black),
            ),
          );
        } else {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: state.cartItem.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(HomeDimens.paddingDefault),
                      child: Container(
                        decoration: decorationCartProduct(),
                        height: HomeDimens.height120,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(
                                  HomeDimens.paddingMedium),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(HomeDimens.radius10),
                                child: Image.asset(
                                  state.cartItem[index].image,
                                  width: HomeDimens.widthImage,
                                  height: HomeDimens.heightImage,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            sizedBoxWidth(),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  state.cartItem[index].name,
                                  style: const TextStyle(
                                      fontSize: HomeDimens.sizeTextMedium,
                                      color: Colors.black),
                                ),
                                Container(
                                  width: HomeDimens.width120,
                                  decoration: decorationButtonCart(),
                                  child: Center(
                                    child: IntrinsicHeight(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              final cartBloc =
                                                  BlocProvider.of<CartBloc>(
                                                      context);
                                              cartBloc.add(RemoveToCart(
                                                  state.cartItem[index]));
                                            },
                                            child: const SizedBox(
                                              width: HomeDimens.width20,
                                              child: Icon(Icons.remove),
                                            ),
                                          ),
                                          const VerticalDivider(
                                            color: HomeColors.borderSide,
                                            thickness: 1,
                                          ),
                                          SizedBox(
                                            width: HomeDimens.width40,
                                            child: Text(
                                              state.cartItem[index].quantity
                                                  .toString(),
                                              style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: HomeDimens
                                                      .sizeTextDefault),
                                            ),
                                          ),
                                          const VerticalDivider(
                                            color: HomeColors.borderSide,
                                            thickness: 1,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              final cartBloc =
                                                  BlocProvider.of<CartBloc>(
                                                      context);
                                              cartBloc.add(AddToCart(
                                                  state.cartItem[index]));
                                            },
                                            child: const SizedBox(
                                                width: HomeDimens.width20,
                                                child: Icon(Icons.add)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            sizedBoxWidth(),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    final cartBloc =
                                        BlocProvider.of<CartBloc>(context);
                                    cartBloc.add(
                                        RemoveToCartAll(state.cartItem[index]));
                                  },
                                  icon: const Icon(Icons.delete),
                                ),
                                sizedBoxHeight(),
                                Text(
                                  '${state.cartItem[index].price}'+ StrHome.vnd,
                                  style: const TextStyle(
                                      fontSize: HomeDimens.sizeTextMedium,
                                      color: HomeColors.colorApp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                decoration: decoration(),
                height: HomeDimens.height150,
                child: Padding(
                  padding: const EdgeInsets.all(HomeDimens.paddingMedium),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            StrHome.total,
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                              '${state.cartItem.fold(0.0, (previousValue, element) => previousValue + element.total)}'+ StrHome.vnd,
                              style: const TextStyle(color: Colors.black)),
                        ],
                      ),
                      GestureDetector(
                        child: Container(
                          height: HomeDimens.height80,
                          width: HomeDimens.width400,
                          decoration: BoxDecoration(
                              color: HomeColors.colorApp,
                              borderRadius: BorderRadius.circular(20)),
                          child: const Center(
                              child: Text(
                            StrHome.order,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: HomeDimens.sizeTextLarge),
                          )),
                        ),
                        onTap: () {
                          // ?
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        }
      },
    );
  }
}
