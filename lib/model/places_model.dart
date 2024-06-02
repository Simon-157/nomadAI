import 'package:nomadai/model/review_model.dart';

class Place {
  final String? imageUrl;
  final String? title;
  final double? cost;
  final double? duration;
  final double? reviewScore;
  final String? tag;
  final String? details;
  final String? location;
  final double? latitude;
  final double? longitude;
  final List<Review> reviews;

  Place(
      {required this.imageUrl,
      required this.title,
      required this.cost,
      required this.duration,
      required this.reviewScore,
      required this.tag,
      required this.details,
      required this.location,
      required this.latitude,
      required this.longitude,
      required this.reviews});
}

List<Place> places = [
  Place(
    imageUrl: 'assets/images/elmina_castle.jpg',
    title: 'Cape Coast Castle',
    cost: 20,
    duration: 2,
    reviewScore: 4.7,
    tag: 'cape_coast_castle',
    details:
        "Cape Coast Castle is a historical site and a poignant reminder of the transatlantic slave trade. It offers a powerful tour that walks you through the dark history while providing stunning views of the Atlantic Ocean.",
    location: 'Cape Coast, Central Region',
    latitude: 5.1053,
    longitude: -1.2466,
    reviews: [
      Review(
          reviewerName: 'John Doe',
          rating: 4.5,
          comment: 'A very moving experience.'),
      Review(
          reviewerName: 'Jane Smith',
          rating: 4.8,
          comment: 'Beautiful views and very educational.'),
    ],
  ),
  Place(
    imageUrl: 'assets/images/kakum_national_park.jpg',
    title: 'Kakum National Park',
    cost: 15,
    duration: 5,
    reviewScore: 4.5,
    tag: 'kakum_national_park',
    details:
        "Kakum National Park is famous for its canopy walkway, which offers breathtaking views of the rainforest. Visitors can also enjoy guided tours and explore the rich biodiversity of the park.",
    location: 'Near Cape Coast, Central Region',
    latitude: 5.4141,
    longitude: -1.3201,
    reviews: [
      Review(
          reviewerName: 'Alice Johnson',
          rating: 4.6,
          comment: 'The canopy walkway is amazing!'),
      Review(
          reviewerName: 'Bob Brown',
          rating: 4.4,
          comment: 'Great place for a day trip.'),
    ],
  ),
  Place(
    imageUrl: 'assets/images/mole_national_park.jpg',
    title: 'Mole National Park',
    cost: 25,
    duration: 8,
    reviewScore: 4.8,
    tag: 'mole_national_park',
    details:
        "Mole National Park is the largest wildlife refuge in Ghana, home to elephants, antelopes, and numerous bird species. Safaris and walking tours provide an up-close experience with the wildlife and natural beauty of the park.",
    location: 'Northern Region',
    latitude: 9.7038,
    longitude: -1.8236,
    reviews: [
      Review(
          reviewerName: 'Carlos Rivera',
          rating: 4.9,
          comment: 'Saw so many elephants!'),
      Review(
          reviewerName: 'Samantha Lee',
          rating: 4.7,
          comment: 'A must-visit for wildlife enthusiasts.'),
    ],
  ),
  Place(
    imageUrl: 'assets/images/lake_volta.jpg',
    title: 'Lake Volta',
    cost: 10,
    duration: 3,
    reviewScore: 4.3,
    tag: 'lake_volta',
    details:
        "Lake Volta is one of the largest man-made lakes in the world. It's a great spot for fishing, boat cruises, and exploring the small islands scattered across the lake. The serene environment is perfect for relaxation and nature activities.",
    location: 'Eastern Ghana',
    latitude: 6.4085,
    longitude: -0.0496,
    reviews: [
      Review(
          reviewerName: 'Diane Young',
          rating: 4.5,
          comment: 'Relaxing boat cruise.'),
      Review(
          reviewerName: 'Michael Green',
          rating: 4.0,
          comment: 'Beautiful and peaceful.'),
    ],
  ),
  Place(
    imageUrl: 'assets/images/wli_waterfalls.jpg',
    title: 'Wli Waterfalls',
    cost: 10,
    duration: 4,
    reviewScore: 4.6,
    tag: 'wli_waterfalls',
    details:
        "Wli Waterfalls, the highest waterfall in West Africa, is a must-visit destination. Surrounded by lush greenery and rich biodiversity, the falls offer a refreshing escape and a picturesque setting for nature lovers.",
    location: 'Volta Region',
    latitude: 7.1428,
    longitude: 0.5576,
    reviews: [
      Review(
          reviewerName: 'Emily Davis',
          rating: 4.7,
          comment: 'Absolutely stunning!'),
      Review(
          reviewerName: 'Mark Wilson',
          rating: 4.5,
          comment: 'A beautiful place to hike and relax.'),
    ],
  ),
  Place(
    imageUrl: 'assets/images/elmina_castle.jpg',
    title: 'Elmina Castle',
    cost: 15,
    duration: 2,
    reviewScore: 4.7,
    tag: 'elmina_castle',
    details:
        "Elmina Castle is another significant historical site related to the transatlantic slave trade. Located in Elmina, it offers educational tours that provide deep insights into Ghana's history.",
    location: 'Elmina, Central Region',
    latitude: 5.0843,
    longitude: -1.3507,
    reviews: [
      Review(
          reviewerName: 'Oliver King',
          rating: 4.8,
          comment: 'Very informative and touching.'),
      Review(
          reviewerName: 'Sophia Martinez',
          rating: 4.6,
          comment: 'Well-preserved and educational.'),
    ],
  ),
  Place(
    imageUrl: 'assets/images/kwame_nkrumah_mausoleum.jpg',
    title: 'Kwame Nkrumah Mausoleum',
    cost: 5,
    duration: 1.5,
    reviewScore: 4.4,
    tag: 'kwame_nkrumah_mausoleum',
    details:
        "The Kwame Nkrumah Mausoleum is a memorial dedicated to the prominent Ghanaian leader, Kwame Nkrumah. It features a museum and the final resting place of Nkrumah, surrounded by beautiful gardens.",
    location: 'Accra, Greater Accra Region',
    latitude: 5.5471,
    longitude: -0.2012,
    reviews: [
      Review(
          reviewerName: 'William Harris',
          rating: 4.3,
          comment: 'A nice tribute to a great leader.'),
      Review(
          reviewerName: 'Isabella Clark',
          rating: 4.5,
          comment: 'Beautifully maintained and peaceful.'),
    ],
  ),
  Place(
    imageUrl: 'assets/images/ankasa_conservation_area.jpeg',
    title: 'Ankasa Conservation Area',
    cost: 20,
    duration: 6,
    reviewScore: 4.5,
    tag: 'ankasa_conservation_area',
    details:
        "Ankasa Conservation Area is a protected region in Ghana known for its dense rainforest and diverse wildlife. It's an excellent destination for ecotourism and bird watching.",
    location: 'Western Region',
    latitude: 5.2833,
    longitude: -2.6333,
    reviews: [
      Review(
          reviewerName: 'James Allen',
          rating: 4.6,
          comment: 'Great for nature lovers.'),
      Review(
          reviewerName: 'Mia Robinson',
          rating: 4.4,
          comment: 'A fantastic place for bird watching.'),
    ],
  ),
  Place(
    imageUrl: 'assets/images/aburi_botanical_gardens.jpg',
    title: 'Aburi Botanical Gardens',
    cost: 5,
    duration: 2,
    reviewScore: 4.3,
    tag: 'aburi_botanical_gardens',
    details:
        "Aburi Botanical Gardens, located in the Eastern Region, offer a peaceful retreat with a wide variety of plant species. It's a great place for a relaxing walk and learning about tropical plants.",
    location: 'Aburi, Eastern Region',
    latitude: 5.8482,
    longitude: -0.1754,
    reviews: [
      Review(
          reviewerName: 'Liam Thompson',
          rating: 4.2,
          comment: 'Very relaxing and beautiful.'),
      Review(
          reviewerName: 'Emma Scott',
          rating: 4.4,
          comment: 'Lovely gardens with lots to see.'),
    ],
  ),
  Place(
    imageUrl: 'assets/images/paga_crocodile_pond.jpg',
    title: 'Paga Crocodile Pond',
    cost: 8,
    duration: 2,
    reviewScore: 4.2,
    tag: 'paga_crocodile_pond',
    details:
        "Paga Crocodile Pond is a unique site where visitors can interact with tame crocodiles. The pond is considered sacred, and the crocodiles are believed to be friendly to humans.",
    location: 'Paga, Upper East Region',
    latitude: 10.9827,
    longitude: -1.1101,
    reviews: [
      Review(
          reviewerName: 'Daniel White',
          rating: 4.0,
          comment: 'An interesting experience.'),
      Review(
          reviewerName: 'Sophie Turner',
          rating: 4.4,
          comment: 'The crocodiles are fascinating!'),
    ],
  ),
];
