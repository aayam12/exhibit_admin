/*import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class Order extends Equatable {
  final int id;
  final int CustomerId;
  final List<int> productsIds;
  final double deliveryFee;
  final double subtotal;
  final double total;
  final bool isAccepted;
  final bool isDelivered;
  final DateTime createdAt;
  Order({
    required this.id,
    required this.CustomerId,
    required this.productsIds,
    required this.deliveryFee,
    required this.subtotal,
    required this.total,
    required this.isAccepted,
    required this.isDelivered,
    required this.createdAt,
  });

  Order copyWith({
    int? id,
    int? CustomerId,
    List<int>? productsIds,
    double? deliveryFee,
    double? subtotal,
    double? total,
    bool? isAccepted,
    bool? isDelivered,
    DateTime? createdAt,
  }) {
    return Order(
      id: id ?? this.id,
      CustomerId: CustomerId ?? this.CustomerId,
      productsIds: productsIds ?? this.productsIds,
      deliveryFee: deliveryFee ?? this.deliveryFee,
      subtotal: subtotal ?? this.subtotal,
      total: total ?? this.total,
      isAccepted: isAccepted ?? this.isAccepted,
      isDelivered: isDelivered ?? this.isDelivered,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'CustomerId': CustomerId});
    result.addAll({'productsIds': productsIds});
    result.addAll({'deliveryFee': deliveryFee});
    result.addAll({'subtotal': subtotal});
    result.addAll({'total': total});
    result.addAll({'isAccepted': isAccepted});
    result.addAll({'isDelivered': isDelivered});
    result.addAll({'createdAt': createdAt.millisecondsSinceEpoch});

    return result;
  }

  factory Order.fromSnapshot(DocumentSnapshot snap) {
    return Order(
      id: snap['id']?.toInt() ?? 0,
      CustomerId: snap['CustomerId']?.toInt() ?? 0,
      productsIds: List<int>.from(snap['productsIds']),
      deliveryFee: snap['deliveryFee']?.toDouble() ?? 0.0,
      subtotal: snap['subtotal']?.toDouble() ?? 0.0,
      total: snap['total']?.toDouble() ?? 0.0,
      isAccepted: snap['isAccepted'] ?? false,
      isDelivered: snap['isDelivered'] ?? false,
      createdAt: DateTime.fromMillisecondsSinceEpoch(snap['createdAt']),
    );
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'Order(id: $id, CustomerId: $CustomerId, productsIds: $productsIds, deliveryFee: $deliveryFee, subtotal: $subtotal, total: $total, isAccepted: $isAccepted, isDelivered: $isDelivered, createdAt: $createdAt)';
  }

  @override
  List<Object> get props {
    return [
      id,
      CustomerId,
      productsIds,
      deliveryFee,
      subtotal,
      total,
      isAccepted,
      isDelivered,
      createdAt,
    ];
  }

  static List<Order> orders = [Order(
    id: 1,
    CustomerId: 234,
    productsIds: const [1,2],
    deliveryFee: 10,
    subtotal: 20,
    total: 30,
    isAccepted: false,
    isDelivered: false
    createdAt: 
  )];
}*/
