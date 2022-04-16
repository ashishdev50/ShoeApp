import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, id;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "Shoe1",
    price: 234,
    description: dummyText,
    image: "assets/images/whiteshoe.jpg",
  ),
  Product(
    id: 2,
    title: "Belt Bag",
    price: 150,
    description: dummyText,
    image: "assets/images/jordansniker.jpg",
  ),
  Product(
    id: 3,
    title: "Hang Top",
    price: 50,
    description: dummyText,
    image: "assets/images/jordan-aerospace-720-shoe-MtlBtG_1.jpg",
  ),
  Product(
    id: 4,
    title: "Old Fashion",
    price: 40,
    description: dummyText,
    image: "assets/images/blueshoe.jpg",
  ),
  Product(
    id: 5,
    title: "Old Fashion",
    price: 300,
    description: dummyText,
    image: "assets/images/blueshoe.jpg",
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
