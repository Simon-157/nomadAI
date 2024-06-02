import 'package:flutter/material.dart';
import '../model/places_model.dart';
import 'places_detail_screen.dart';

class PlacesScreen extends StatefulWidget {
  final List<Place> places;

  const PlacesScreen({super.key, required this.places});

  @override
  _PlacesScreenState createState() => _PlacesScreenState();
}

class _PlacesScreenState extends State<PlacesScreen> {
  late List<Place> filteredPlaces;

  @override
  void initState() {
    super.initState();
    filteredPlaces = widget.places;
  }

  void _filterPlaces(String query) {
    setState(() {
      filteredPlaces = widget.places
          .where((place) => place.title!.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Places in Ghana'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: TextField(
              onChanged: _filterPlaces,
              decoration: const InputDecoration(
                labelText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredPlaces.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PlaceDetailScreen(place: filteredPlaces[index]),
                      ),
                    );
                  },
                  child: Card(
                    margin: const EdgeInsets.all(8.0),
                    elevation: 4.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 200.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(filteredPlaces[index].imageUrl!),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                filteredPlaces[index].title!,
                                style: const TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 8.0),
                              Row(
                                children: [
                                  const Icon(Icons.location_on),
                                  const SizedBox(width: 4.0),
                                  Text(filteredPlaces[index].location!),
                                ],
                              ),
                              const SizedBox(height: 8.0),
                              Row(
                                children: [
                                  const Icon(Icons.monetization_on),
                                  const SizedBox(width: 4.0),
                                  Text('${filteredPlaces[index].cost.toString()} GHC'),
                                ],
                              ),
                              const SizedBox(height: 8.0),
                              Row(
                                children: [
                                  const Icon(Icons.access_time),
                                  const SizedBox(width: 4.0),
                                  Text('${filteredPlaces[index].duration.toString()} hours'),
                                ],
                              ),
                              const SizedBox(height: 8.0),
                              Row(
                                children: [
                                  const Icon(Icons.star),
                                  const SizedBox(width: 4.0),
                                  Text(filteredPlaces[index].reviewScore.toString()),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
