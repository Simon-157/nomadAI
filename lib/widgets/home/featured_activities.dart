import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nomadai/constants/theme.dart';
import 'package:nomadai/model/trending_activities_model.dart';

class FeaturedActivities extends StatelessWidget {
  final List<Activities> activities;
  const FeaturedActivities({super.key, required this.activities});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 25,
      ),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Trending featured tour activities",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ).animate().fade(duration: 850.ms).slideX(
                    begin: -0.5,
                    duration: 850.ms,
                    curve: Curves.easeInOutCubic,
                  ),
              const Text(
                "Show All",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: primary,
                ),
              ).animate().fade(duration: 850.ms).slideX(
                    begin: 0.5,
                    duration: 850.ms,
                    curve: Curves.easeInOutCubic,
                  ),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            height: 80,
            padding: const EdgeInsets.only(
              top: 7,
              bottom: 7,
            ),
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: activities.length,
              itemBuilder: (context, index) {
                final activity = activities[index];
                return Container(
                  margin: const EdgeInsets.only(
                    right: 25,
                  ),
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/${activity.icon}',
                        height: 35,
                        color: primary,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        activity.title,
                        style: const TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ).animate().fade(duration: 850.ms).slideX(
                begin: -0.5,
                duration: 850.ms,
                curve: Curves.easeInOutCubic,
              ),
        ],
      ),
    );
  }
}
