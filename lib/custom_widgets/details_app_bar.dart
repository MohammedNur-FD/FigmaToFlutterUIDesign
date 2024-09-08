import 'package:flutter/material.dart';

class DetailsAppBar extends StatelessWidget {
  const DetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      foregroundColor: Colors.white,
      pinned: true,
      backgroundColor: Colors.red.shade400,
      title: const Text(
        'Vacation Details',
        style: TextStyle(color: Colors.white),
      ),
      expandedHeight: 400.0,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
          'assets/images/tajmahal.png',
          width: double.maxFinite,
          fit: BoxFit.cover,
        ),
      ),
      bottom: PreferredSize(
          preferredSize: const Size.fromHeight(30),
          child: Container(
            height: 35,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(35),
                    topLeft: Radius.circular(35))),
          )),
    );
  }
}
