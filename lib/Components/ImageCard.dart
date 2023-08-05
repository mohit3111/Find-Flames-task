import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Helper/AppColoes.dart';

class ImageCard extends StatelessWidget {
  final double height;
  final double width;
  const ImageCard({required this.height, required this.width, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Container(
        decoration: const BoxDecoration(
            color: AppColors.secondary,
            borderRadius: BorderRadius.all(Radius.circular(12))),
        height: height,
        width: width,
        child: const Center(
          child: Icon(Icons.add_circle_outline_sharp, color: AppColors.primary),
        ),
      ),
    );
  }
}
