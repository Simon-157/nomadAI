import 'package:flutter/material.dart';
import 'package:nomadai/model/trending_activities_model.dart';
import 'package:nomadai/widgets/home/featured_activities.dart';
import 'package:nomadai/widgets/home/popular_places.dart';
import 'package:nomadai/widgets/home/top_bar.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.withOpacity(0.1),
      body: SafeArea(
        child: ListView(
          children:  [
            const TopBar(),
            const PopularPlaces(),
            FeaturedActivities(activities: trending_activities),
          ],
        ),
      ),
    );
  }
}
