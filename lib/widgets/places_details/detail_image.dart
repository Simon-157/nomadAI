import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../shared/page_navigation.dart';
import 'custom_button.dart';

class DetailImage extends StatelessWidget {
  final String? imgUrl;
  final String? tag;
  final String? title;
  const DetailImage({
    super.key,
    this.imgUrl,
    this.tag,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420,
      padding: const EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
        bottom: 40,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imgUrl!),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButton(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PageNavigation(),
                    ),
                  );
                },
                icon: Icons.arrow_back_ios_new_rounded,
              ),
              const CustomButton(icon: Icons.favorite_border_rounded),
            ],
          ).animate().fade().slideY(
                begin: -1,
                duration: 850.ms,
                curve: Curves.easeInOutCubic,
              ),
          
        ],
      ),
    );
  }
}
