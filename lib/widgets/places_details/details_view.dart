import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:nomadai/constants/theme.dart';
import 'package:nomadai/model/places_model.dart';
import 'overview_review_view.dart';
// import 'dt_bottom_title_price.dart';

class PlaceDetails extends StatefulWidget {
  final Place place;

  const PlaceDetails({super.key, required this.place});

  @override
  State<PlaceDetails> createState() => _PlaceDetailsState();
}

class _PlaceDetailsState extends State<PlaceDetails>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 350,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: ListView(
        children: [
          Center(
            child: Text(
              widget.place.title!,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ).animate().fade(duration: 850.ms).slideY(
                  begin: -0.5,
                  duration: 850.ms,
                  curve: Curves.easeInOutCubic,
                ),
          ),

          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: OverviewReviewTabBar(controller: _tabController)
                .animate()
                .fade(duration: 850.ms)
                .slideY(
                  begin: 0.5,
                  duration: 850.ms,
                  curve: Curves.easeInOutCubic,
                ),
          ),
          OverviewReviewView(
            controller: _tabController,
            duration: widget.place.duration.toString(),
            rating: widget.place.reviewScore.toString(),
            description: widget.place.details,
            price: widget.place.toString(),
            place: widget.place,
          ).animate().fade(duration: 850.ms).slideY(
                begin: 0.5,
                duration: 850.ms,
                curve: Curves.easeInOutCubic,
              ),
          const SizedBox(height: 45),
        ],
      ),
    );
  }
}

class OverviewReviewTabBar extends StatelessWidget {
  final TabController? controller;
  const OverviewReviewTabBar({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: TabBar(
        controller: controller,
        indicator: const BoxDecoration(
          color: Colors.transparent,
        ),
        dividerColor: Colors.transparent,
        isScrollable: true,
        labelColor: primary,
        labelStyle: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        physics: const BouncingScrollPhysics(),
        tabs: const [
          Tab(text: 'Overview'),
          Tab(text: 'Reviews'),
        ],
      ),
    );
  }
}




