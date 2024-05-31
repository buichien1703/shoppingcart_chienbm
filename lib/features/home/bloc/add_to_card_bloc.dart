import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../src_feature.dart';

part 'add_to_card_event.dart';
part 'add_to_card_state.dart';

class CartBloc extends Bloc<CardEvent, CardState> {
  CartBloc() : super(CardState([])) {
    on<CardEvent>(_mapEventToState);
  }
  Future<void> _mapEventToState(
      CardEvent event, Emitter<CardState> emit) async {
    if (event is AddToCart) {
      int productIndex = state.cartItem
          .indexWhere((element) => element.name == event.product.name);
      var listProduct = state.cartItem;
      if (productIndex != -1) {
        listProduct[productIndex] = listProduct[productIndex]
            .copyWith(quantity: listProduct[productIndex].quantity + 1);
      } else {
        listProduct.add(event.product);
      }
      emit(CardState(listProduct));

      //thêm đây
    } else if (event is RemoveToCart) {
      int productIndex = state.cartItem
          .indexWhere((element) => element.name == event.product.name);
      var listProduct = state.cartItem;
      if (productIndex != -1 && listProduct[productIndex].quantity >= 1) {
        listProduct[productIndex] = listProduct[productIndex]
            .copyWith(quantity: listProduct[productIndex].quantity - 1);
      } else {
        listProduct.remove(event.product);
      }
      emit(CardState(listProduct));
    } else if (event is RemoveToCartAll) {
      final updateCart = List<Product>.from(state.cartItem)
        ..remove(event.product);
      emit(CardState(updateCart));
    } else if (event is Order) {
      var listProduct = state.cartItem;
      final doneCart = List<Product>.from(listProduct)..remove(event.product);
      emit(CardState(doneCart));
    }
  }
}
