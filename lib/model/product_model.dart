import "package:flutter/material.dart";


class Product {
  final String image, title;
  final int id, subject;
  final Color color;


  Product({
    required this.image,
    required this.title,
    required this.subject,
    required this.color,
    required this.id,

  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "1st Sem",
    image: "assets/images/graphics.png",
    color: const Color(0xFF71b8ff),
    subject: 5,
  ),


  Product(
    id: 2,
    title: "2nd Sem",
    image: "assets/images/programming.png",
    color: const Color(0xFFff6374),
    subject: 5,
  ),
  Product(
    id: 3,
    title: "3rd Sem",
    image: "assets/images/finance.png",
    color: const Color(0xFFffaa5b),
    subject: 6,
  ),
  Product(
    id: 4,
    title: "4th Sem",
    image: "assets/images/ux.png",
    color: const Color(0xFF9ba0fc),
    subject: 6,

  ),
  Product(
    id: 5,
    title: "5th Sem",
    image: "assets/images/5th.png",
    color: const Color(0xFFD84315),
    subject: 6,
),
  Product(
    id: 6,
    title: "6th Sem",
    image: "assets/images/6th.png",
    color: const Color(0xFFCDDC39),
    subject: 6,
  ),
  Product(
    id: 7,
    title: "7th Sem",
    image: "assets/images/7th.png",
    color: const Color(0xFF3F51B5),
    subject: 6,
  ),
  Product(
    id: 8,
    title: "8th Sem",
    image: "assets/images/8th.png",
    color: const Color(0xFF9C27B0),
    subject: 6,
  ),
];
