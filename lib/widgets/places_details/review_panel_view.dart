import 'package:flutter/material.dart';
import 'package:nomadai/model/places_model.dart';

class PlaceReviewsPanel extends StatelessWidget {
  final Place place;

  const PlaceReviewsPanel({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // const Text(
          //   "Reviews",
          //   style: TextStyle(
          //     fontSize: 20.0,
          //     fontWeight: FontWeight.bold,
          //   ),
          // ),
          // SizedBox(height: 16.0),
          if (place.reviews.isEmpty)
            Text("No reviews available.")
          else
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: place.reviews.map((review) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.person),
                        SizedBox(width: 8.0),
                        Text(
                          review.reviewerName,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "${review.rating} / 5",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4.0),
                    Text(review.comment),
                    Divider(),
                  ],
                );
              }).toList(),
            ),
        ],
      ),
    );
  }
}
