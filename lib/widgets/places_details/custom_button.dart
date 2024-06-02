import 'package:flutter/material.dart';
import 'package:nomadai/constants/theme.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onTap;
  final IconData? icon;
  const CustomButton({
    super.key,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CircleAvatar(
        radius: 20,
        backgroundColor: Colors.white.withOpacity(0.7),
        child: CircleAvatar(
          radius: 17,
          backgroundColor: Colors.white,
          child: Icon(
            icon,
            color: primary,
            size: 20,
          ),
        ),
      ),
    );
  }
}
