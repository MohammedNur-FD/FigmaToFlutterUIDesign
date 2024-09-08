import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ImageContainer extends StatelessWidget {
  String assetsImage;
  String title;
  ImageContainer({super.key, required this.assetsImage, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        padding: const EdgeInsets.all(20),
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color.fromARGB(255, 230, 228, 228),
        ),
        child: Image.asset(assetsImage),
      ),
      const SizedBox(
        height: 20,
      ),
      Text(
        title,
        style: const TextStyle(
            fontSize: 18, color: Colors.grey, fontWeight: FontWeight.bold),
      ),
    ]);
  }
}
