import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:nomadai/widgets/home/popular_places_items.dart';
import 'popular_places_text.dart';

class PopularPlaces extends StatefulWidget {
  const PopularPlaces({super.key});

  @override
  State<PopularPlaces> createState() => _PopularPlacesState();
}

class _PopularPlacesState extends State<PopularPlaces> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 25),
        const PopularPlacesText().animate().fade(duration: 850.ms).slideX(
              begin: -0.5,
              duration: 850.ms,
              curve: Curves.easeInOutCubic,
            ),

        const PopularPlacesItems()
      ],


    );
  }
}
