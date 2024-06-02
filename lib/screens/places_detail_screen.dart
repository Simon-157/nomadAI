import 'package:flutter/material.dart';
import 'package:nomadai/widgets/places_details/custom_text_button.dart';
import 'package:nomadai/widgets/places_details/detail_image.dart';
import 'package:nomadai/widgets/places_details/details_view.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../model/places_model.dart';

class PlaceDetailScreen extends StatelessWidget {
  final Place place;

  PlaceDetailScreen({required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text(place.title!),
        // ),
        body: Stack(
          children: [
            Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: DetailImage(
                  imgUrl: place.imageUrl!,
                  tag: place.tag!,
                  title: place.title!,
                )),
            Positioned(
              top: 400,
              left: 0,
              right: 0,
              child:  PlaceDetails(place: place),
            ),
          ],
        ),
        floatingActionButton: CustomTextButton(
          title: 'Plan Trip',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PlaceDetailScreen(place: place),
              ),
            );
          },
        ));
  }
}
