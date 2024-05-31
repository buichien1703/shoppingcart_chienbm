part of 'add_to_card_bloc.dart';

abstract class CardEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class AddToCart extends CardEvent {
  final Product product;
  AddToCart(this.product);

  @override
  List<Object> get props => [product];
}

class RemoveToCart extends CardEvent {
  final Product product;
  RemoveToCart(this.product);

  @override
  List<Object> get props => [product];
}

class RemoveToCartAll extends CardEvent {
  final Product product;
  RemoveToCartAll(this.product);

  @override
  List<Object> get props => [product];
}

class Order extends CardEvent {
  final Product product;
  Order(this.product);

  @override
  List<Object> get props => [product];
}
