import 'package:flutter/material.dart';

class PetContentScreen extends StatelessWidget {
  const PetContentScreen(
      {super.key,
      required this.content,
      required this.imageUrl,
      required this.readTime,
      required this.title});

  final String imageUrl;
  final String title;
  final int readTime;
  final String content;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
