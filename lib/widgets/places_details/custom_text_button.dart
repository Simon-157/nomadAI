import 'package:flutter/material.dart';
import 'package:nomadai/constants/theme.dart';
import 'package:flutter_animate/flutter_animate.dart';

class CustomTextButton extends StatelessWidget {
  final void Function()? onTap;
  final String title;
  const CustomTextButton({super.key, this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(
          left: 40,
          right: 8,
        ),
        height: 55,
        decoration: const BoxDecoration(
          color: primary,
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(width: 18),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            const Icon(
              Icons.arrow_forward_rounded,
              size: 20,
              color: Colors.white,
            ).animate().fade(duration: 850.ms).slideX(
              begin: 0.5,
              duration: 850.ms,
              curve: Curves.easeInOutCubic,
            )
          ],
        ),
      ),
    ).animate().fade().slideY(
      begin: 1,
      duration: 850.ms,
      curve: Curves.easeInOutCubic,
    );
  }
}
