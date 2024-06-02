import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../constants/theme.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 18,
        right: 25,
        top: 25,
        bottom: 15,
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
          Icon(
            Icons.travel_explore,
            color: primary,
          ),
          Text(
            "nomadAi",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(118, 2, 52, 61),
            ),
          ),
          ]
              
          ),
          CircleAvatar(
            backgroundColor: primary,
            backgroundImage: AssetImage(
              'assets/images/profile.jpeg',
            ),
          ),
        ],
      ),
    ).animate().fade(duration: 850.ms).slideY(
          begin: -0.5,
          duration: 850.ms,
          curve: Curves.easeInOutCubic,
        );
  }
}
