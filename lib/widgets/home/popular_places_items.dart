import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:nomadai/constants/theme.dart';
import 'package:nomadai/model/places_model.dart';
import 'package:nomadai/screens/places_detail_screen.dart';

class PopularPlacesItems extends StatelessWidget {
  const PopularPlacesItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300, // Adjust the height as needed
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: places.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final destination = places[index];

          return GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => PlaceDetailScreen(place: destination),
                ),
              );
            },
            child: Container(
              width: 240,
              padding: const EdgeInsets.all(18),
              margin: const EdgeInsets.only(
                right: 20,
                top: 15,
                bottom: 15,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: primary.withOpacity(0.4),
                    offset: const Offset(5, 5),
                    blurRadius: 5,
                    spreadRadius: 2,
                  )
                ],
                image: DecorationImage(
                  image: AssetImage('${destination.imageUrl}'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: const Icon(
                          Icons.favorite_border_outlined,
                          size: 20,
                          color: primary,
                        )
                            .animate()
                            .shake(
                              delay: 1.seconds,
                              hz: 3,
                              duration: 1.seconds,
                            )
                            .scaleXY(
                              delay: 1.seconds,
                              end: 1.2,
                              duration: 300.ms,
                              curve: Curves.easeOut,
                            )
                            .then(delay: 150.ms)
                            .scaleXY(
                              end: 1 / 1.2,
                              curve: Curves.easeIn,
                            ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        destination.title!,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
              .animate()
              .fade(duration: 850.ms)
              .slideX(
                begin: 1,
                duration: 850.ms,
                curve: Curves.easeInOutCubic,
              )
              .then()
              .shimmer(duration: 2.seconds);
        },
      ),
    );
  }
}
