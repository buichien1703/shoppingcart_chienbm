// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String image;
  final double price;
  final int quantity;

  const Product({
    required this.name,
    required this.image,
    required this.price,
    this.quantity = 1,
  });

  // Map productQuantity(products) {
  //   var quantity = Map();
  //   products.forEach((products) {
  //     if (!quantity.containsKey(products)) {
  //       quantity[products] = 1;
  //     } else {
  //       quantity[products] += 1;
  //     }
  //   });

  //   return quantity;
  // }

  double get total => price * quantity;

  

  @override
  List<Object?> get props => [products];

  static List<Product> products = const[
    Product(
        name: 'Product #0',
        image: 'images/assets/product_0.jpg',
        price: 160000.0),
    Product(
        name: 'Product #1',
        image: 'images/assets/product_1.jpg',
        price: 180000.0),
    Product(
        name: 'Product #2',
        image: 'images/assets/product_2.jpg',
        price: 600000.0),
    Product(
        name: 'Product #3',
        image: 'images/assets/product_3.jpg',
        price: 260000.0),
    Product(
        name: 'Product #4',
        image: 'images/assets/product_4.jpg',
        price: 100000.0),
    Product(
        name: 'Product #5',
        image: 'images/assets/product_5.jpg',
        price: 650900.0),
    Product(
        name: 'Product #6',
        image: 'images/assets/product_6.jpg',
        price: 214040.0),
    Product(
        name: 'Product #7',
        image: 'images/assets/product_7.jpg',
        price: 352100.0),
    Product(
        name: 'Product #8',
        image: 'images/assets/product_8.jpg',
        price: 445700.0),
    Product(
        name: 'Product #9',
        image: 'images/assets/product_9.jpg',
        price: 994300.0),
  ];

  Product copyWith({
    String? name,
    String? image,
    double? price,
    int? quantity,
  }) {
    return Product(
      name: name ?? this.name,
      image: image ?? this.image,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
    );
  }
}
