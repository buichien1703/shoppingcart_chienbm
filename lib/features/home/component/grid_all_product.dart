import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../src_feature.dart';

class GridviewProduct extends StatelessWidget {
  final Product products;

  const GridviewProduct({
    super.key,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
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
                products.image,
                fit: BoxFit.fill,
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
                            color: HomeColors.black,
                            fontSize: HomeDimens.sizeTextMedium,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '${products.price}đ',
                        style: const TextStyle(color: HomeColors.amber),
                      ),
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
                  // IconButton(
                  //   onPressed: () {
                  //     showModalBottomSheet(
                  //         context: context,
                  //         builder: (ctx) {
                  //           return Container(
                  //             height: 200,
                  //             decoration: const BoxDecoration(
                  //                 borderRadius: BorderRadius.only(
                  //                     topLeft: Radius.circular(20),
                  //                     topRight: Radius.circular(20))),
                  //             // child: BlocBuilder<CartBloc, CardState>(
                  //             //   builder: (context, state) {
                  //             //           return Padding(
                  //             //             padding: const EdgeInsets.all(
                  //             //                 HomeDimens.paddingDefault),
                  //             //             child: Container(
                  //             //               decoration: BoxDecoration(
                  //             //                 color:
                  //             //                     Colors.grey.withOpacity(0.1),
                  //             //                 borderRadius:
                  //             //                     BorderRadius.circular(20),
                  //             //                 border:
                  //             //                     const Border.fromBorderSide(
                  //             //                         BorderSide(
                  //             //                             width: 1,
                  //             //                             color: HomeColors
                  //             //                                 .borderSide)),
                  //             //               ),
                  //             //               height: 120,
                  //             //               child: Row(
                  //             //                 children: [
                  //             //                   Padding(
                  //             //                     padding: const EdgeInsets.all(
                  //             //                         HomeDimens.paddingMedium),
                  //             //                     child: ClipRRect(
                  //             //                       borderRadius:
                  //             //                           BorderRadius.circular(
                  //             //                               HomeDimens
                  //             //                                   .radius10),
                  //             //                       child: Image.asset(
                  //             //                         products.image,
                  //             //                         width: 90,
                  //             //                         height: 90,
                  //             //                         fit: BoxFit.fill,
                  //             //                       ),
                  //             //                     ),
                  //             //                   ),
                  //             //                   const SizedBox(
                  //             //                     width: 10,
                  //             //                   ),
                  //             //                   Column(
                  //             //                     mainAxisAlignment:
                  //             //                         MainAxisAlignment.center,
                  //             //                     children: [
                  //             //                       Text(
                  //             //                         products.name,
                  //             //                         style: const TextStyle(
                  //             //                             fontSize: HomeDimens
                  //             //                                 .sizeTextMedium,
                  //             //                             color: Colors.black),
                  //             //                       ),
                  //             //                       Container(
                  //             //                         width: 120,
                  //             //                         decoration: BoxDecoration(
                  //             //                             border: const Border
                  //             //                                 .fromBorderSide(
                  //             //                                 BorderSide(
                  //             //                                     width: 1,
                  //             //                                     color: HomeColors
                  //             //                                         .borderSide)),
                  //             //                             borderRadius:
                  //             //                                 BorderRadius
                  //             //                                     .circular(5)),
                  //             //                         child: Center(
                  //             //                           child: IntrinsicHeight(
                  //             //                             child: Row(
                  //             //                               mainAxisAlignment:
                  //             //                                   MainAxisAlignment
                  //             //                                       .center,
                  //             //                               children: [
                  //             //                                 GestureDetector(
                  //             //                                   onTap: () {
                  //             //                                     //giamr so luong item
                  //             //                                     final cartBloc =
                  //             //                                         BlocProvider.of<
                  //             //                                                 CartBloc>(
                  //             //                                             context);
                  //             //                                     cartBloc.add(
                  //             //                                         RemoveToCart(
                  //             //                                             state.cartItem[
                  //             //                                                 index]));
                  //             //                                   },
                  //             //                                   child:
                  //             //                                       const SizedBox(
                  //             //                                     width: 20,
                  //             //                                     child: Icon(Icons
                  //             //                                         .remove),
                  //             //                                   ),
                  //             //                                 ),
                  //             //                                 const VerticalDivider(
                  //             //                                   color: HomeColors
                  //             //                                       .borderSide,
                  //             //                                   thickness: 1,
                  //             //                                 ),
                  //             //                                 SizedBox(
                  //             //                                   width: 40,
                  //             //                                   child: Text(
                  //             //                                     state
                  //             //                                         .cartItem[
                  //             //                                             index]
                  //             //                                         .quantity
                  //             //                                         .toString(),
                  //             //                                     style: const TextStyle(
                  //             //                                         color: Colors
                  //             //                                             .black,
                  //             //                                         fontSize:
                  //             //                                             HomeDimens
                  //             //                                                 .sizeTextDefault),
                  //             //                                   ),
                  //             //                                 ),
                  //             //                                 const VerticalDivider(
                  //             //                                   color: HomeColors
                  //             //                                       .borderSide,
                  //             //                                   thickness: 1,
                  //             //                                 ),
                  //             //                                 GestureDetector(
                  //             //                                   onTap: () {
                  //             //                                     final cartBloc =
                  //             //                                         BlocProvider.of<
                  //             //                                                 CartBloc>(
                  //             //                                             context);
                  //             //                                     cartBloc.add(
                  //             //                                         AddToCart(
                  //             //                                             state.cartItem[
                  //             //                                                 index]));
                  //             //                                   },
                  //             //                                   child: const SizedBox(
                  //             //                                       width: 20,
                  //             //                                       child: Icon(
                  //             //                                           Icons
                  //             //                                               .add)),
                  //             //                                 ),
                  //             //                               ],
                  //             //                             ),
                  //             //                           ),
                  //             //                         ),
                  //             //                       ),
                  //             //                     ],
                  //             //                   ),
                  //             //                   sizedBoxWidth(),
                  //             //                   Column(
                  //             //                     mainAxisAlignment:
                  //             //                         MainAxisAlignment.center,
                  //             //                     children: [
                  //             //                       IconButton(
                  //             //                         onPressed: () {
                  //             //                           final cartBloc =
                  //             //                               BlocProvider.of<
                  //             //                                       CartBloc>(
                  //             //                                   context);
                  //             //                           cartBloc.add(
                  //             //                               RemoveToCartAll(
                  //             //                                   state.cartItem[
                  //             //                                       index]));
                  //             //                         },
                  //             //                         icon: const Icon(
                  //             //                             Icons.delete),
                  //             //                       ),
                  //             //                       sizedBoxHeight(),
                  //             //                       Text(
                  //             //                         '${state.cartItem[index].price} vnd',
                  //             //                         style: const TextStyle(
                  //             //                             fontSize: HomeDimens
                  //             //                                 .sizeTextMedium,
                  //             //                             color: Colors.orange,
                  //             //                             fontWeight:
                  //             //                                 FontWeight.bold),
                  //             //                       ),
                  //             //                     ],
                  //             //                   ),
                  //             //                 ],
                  //             //               ),
                  //             //             ),
                  //             //           );
                  //             //         },
                  //             // ),
                  //           );
                  //         });
                    
                  //   },
                  //   icon: const Icon(Icons.add_shopping_cart_outlined),
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
