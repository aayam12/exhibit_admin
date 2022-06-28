//import 'dart:convert';
//import 'dart:html';
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final bool isRecommended;
  final bool isPopular;
  double price;

  static var products;
  Product({
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.isRecommended,
    required this.isPopular,
    required this.price,
  });
  //int quantity;

  @override
  List<Object> get props {
    return [
      name,
      category,
      imageUrl,
      isRecommended,
      isPopular,
      price,
    ];
  }

  Product copyWith({
    String? name,
    String? category,
    String? imageUrl,
    bool? isRecommended,
    bool? isPopular,
    double? price,
  }) {
    return Product(
      name: name ?? this.name,
      category: category ?? this.category,
      imageUrl: imageUrl ?? this.imageUrl,
      isRecommended: isRecommended ?? this.isRecommended,
      isPopular: isPopular ?? this.isPopular,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'name': name});
    result.addAll({'category': category});
    result.addAll({'imageUrl': imageUrl});
    result.addAll({'isRecommended': isRecommended});
    result.addAll({'isPopular': isPopular});
    result.addAll({'price': price});

    return result;
  }

  factory Product.fromSnapshot(DocumentSnapshot snap) {
    return Product(
      name: snap['name'] ?? '',
      category: snap['category'] ?? '',
      imageUrl: snap['imageUrl'] ?? '',
      isRecommended: snap['isRecommended'] ?? false,
      isPopular: snap['isPopular'] ?? false,
      price: snap['price']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'Product(name: $name, category: $category, imageUrl: $imageUrl, isRecommended: $isRecommended, isPopular: $isPopular, price: $price)';
  }
}

@override
bool get stringify => true;

List<Product> products = [
  Product(
      name: 'nnn',
      category: 'paintings',
      imageUrl:
          'https://images.unsplash.com/photo-1493612276216-ee3925520721?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80',
      isRecommended: true,
      isPopular: false,
      price: 200.00),
];
