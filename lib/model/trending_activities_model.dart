class Activities {
  final String icon;
  final String title;
  Activities({
    required this.icon,
    required this.title,
  });
}

List<Activities> trending_activities = [
  Activities(
    icon: 'racing-car.svg',
    title: 'Racing',
  ),
  Activities(
    icon: 'swimming.svg',
    title: 'Swimming',
  ),
  Activities(
    icon: 'parachute.svg',
    title: 'Parachute',
  ),
  Activities(
    icon: 'canoeing.svg',
    title: 'Canoeing',
  ),
  Activities(
    icon: 'volleyball-beach.svg',
    title: 'Volleyball Beach',
  ),
];
