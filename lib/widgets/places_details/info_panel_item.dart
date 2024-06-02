import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/theme.dart';

class InfoPanelItem extends StatelessWidget {
  final String? type;
  final String? icon;
  final String? info;

  const InfoPanelItem({
    super.key,
    required this.type,
    required this.icon,
    required this.info,
  });
 
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 30,
          width: 30,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                offset: const Offset(2, 3),
                blurRadius: 3,
                spreadRadius: 0.5,
              ),
            ],
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: SvgPicture.asset(
            'assets/icons/$icon',
            color: primary,
          ),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              type == 'duration' ? 'Duration' : type == 'rating' ? 'Rating' : type == 'price' ? 'Price' : '',
              style: const TextStyle(
              fontSize: 9,
              color: Colors.grey,
              ),
            ),
            Text(
              info ?? "info",
              style: const TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
