import 'package:flutter/material.dart';
import 'info_panel_item.dart';

class PlaceInfoPanel extends StatelessWidget {
  final String? duration;
  final String? rating;
  final String? description;
  final String? price;
  const PlaceInfoPanel({
    super.key,
    this.duration,
    this.rating,
    this.description, this.price,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InfoPanelItem(
              type: 'duration',
              icon: 'clock.svg',
              info: '$duration',
            ),
            InfoPanelItem(
              type: 'rating',
              icon: 'star.svg',
              info: '$rating',
            ),
           
           const InfoPanelItem(
              type: 'price',
              icon: 'dollar.svg',
              info: 'GHS 10',
            )
          ],
        ),
        const SizedBox(
          height: 25.0,
        ),
        ShaderMask(
          shaderCallback: (rectangle) => const LinearGradient(
            colors: [Colors.black, Colors.transparent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ).createShader(
            Rect.fromLTRB(
              0,
              0,
              rectangle.width,
              rectangle.height,
            ),
          ),
          blendMode: BlendMode.dstIn,
          child: Text(
            '$description',
            textAlign: TextAlign.justify,
            style: const TextStyle(
              fontSize: 12.0,
            ),
          ),
        ),
      ],
    );
  }
}
