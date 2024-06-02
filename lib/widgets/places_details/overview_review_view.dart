import 'package:flutter/material.dart';
import 'package:nomadai/model/places_model.dart';
import 'package:nomadai/widgets/places_details/info_panel_view.dart';
import 'package:nomadai/widgets/places_details/review_panel_view.dart';


class OverviewReviewView extends StatelessWidget {
  final TabController? controller;
  final String? duration;
  final String? rating;
  final String? description;
  final String? price;
  final Place place;
  const OverviewReviewView({
    super.key,
    required this.controller,
    this.duration,
    this.rating,
    this.description,
    this.price, required this.place
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: const EdgeInsets.only(
        top: 15,
        right: 5,
      ),
      padding: const EdgeInsets.only(left: 5),
      child: TabBarView(
        controller: controller,
        children: [
          PlaceInfoPanel(
            duration: duration,
            rating: rating,
            description: description,
            price: price,
          ),
           PlaceReviewsPanel(place: place,),
        ],
      ),
    );
  }
}
