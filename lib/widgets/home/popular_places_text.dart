import 'package:flutter/material.dart';

class PopularPlacesText extends StatelessWidget {
  const PopularPlacesText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 28),
      child: Text(
        "All popular destinations in Ghana",
        style: TextStyle(
          fontSize: 13.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
