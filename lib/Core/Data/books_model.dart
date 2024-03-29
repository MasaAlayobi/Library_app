// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class BooksModel {
  int id;
  String name;
  String description;
  String image;
  int price;
  String quality;
  int quantity;
  String author;
  String status;
  List<dynamic> chain;
  List<dynamic> rent_chain;
  int owner_id;
  BooksModel({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.price,
    required this.quality,
    required this.quantity,
    required this.author,
    required this.status,
    required this.chain,
    required this.rent_chain,
    required this.owner_id,
  });
  

  BooksModel copyWith({
    int? id,
    String? name,
    String? description,
    String? image,
    int? price,
    String? quality,
    int? quantity,
    String? author,
    String? status,
    List<dynamic>? chain,
    List<dynamic>? rent_chain,
    int? owner_id,
  }) {
    return BooksModel(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      image: image ?? this.image,
      price: price ?? this.price,
      quality: quality ?? this.quality,
      quantity: quantity ?? this.quantity,
      author: author ?? this.author,
      status: status ?? this.status,
      chain: chain ?? this.chain,
      rent_chain: rent_chain ?? this.rent_chain,
      owner_id: owner_id ?? this.owner_id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'image': image,
      'price': price,
      'quality': quality,
      'quantity': quantity,
      'author': author,
      'status': status,
      'chain': chain,
      'rent_chain': rent_chain,
      'owner_id': owner_id,
    };
  }

  factory BooksModel.fromMap(Map<String, dynamic> map) {
    return BooksModel(
      id: map['id'] as int,
      name: map['name'] as String,
      description: map['description'] as String,
      image: map['image'] as String,
      price: map['price'] as int,
      quality: map['quality'] as String,
      quantity: map['quantity'] as int,
      author: map['author'] as String,
      status: map['status'] as String,
      chain: List<dynamic>.from((map['chain'] as List<dynamic>)),
      rent_chain: List<dynamic>.from((map['rent_chain'] as List<dynamic>)),
      owner_id: map['owner_id'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory BooksModel.fromJson(String source) => BooksModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'BooksModel(id: $id, name: $name, description: $description, image: $image, price: $price, quality: $quality, quantity: $quantity, author: $author, status: $status, chain: $chain, rent_chain: $rent_chain, owner_id: $owner_id)';
  }

  @override
  bool operator ==(covariant BooksModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      other.description == description &&
      other.image == image &&
      other.price == price &&
      other.quality == quality &&
      other.quantity == quantity &&
      other.author == author &&
      other.status == status &&
      listEquals(other.chain, chain) &&
      listEquals(other.rent_chain, rent_chain) &&
      other.owner_id == owner_id;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      description.hashCode ^
      image.hashCode ^
      price.hashCode ^
      quality.hashCode ^
      quantity.hashCode ^
      author.hashCode ^
      status.hashCode ^
      chain.hashCode ^
      rent_chain.hashCode ^
      owner_id.hashCode;
  }
}
