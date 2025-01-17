import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:nomadai/model/places_model.dart';
import 'package:nomadai/screens/ai_chat_screen.dart';
import 'package:nomadai/screens/home_screen.dart';
import 'package:nomadai/screens/places_screen.dart';
import 'package:nomadai/screens/setting_screen.dart';
import 'package:nomadai/shared/bottom_snake_bar.dart';


class BottomNavWrapper extends StatefulWidget {
  const BottomNavWrapper({super.key});

  @override
  State<BottomNavWrapper> createState() => _BottomNavWrapperState();
}

class _BottomNavWrapperState extends State<BottomNavWrapper> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions =  <Widget>[
    const HomeView(),
    PlacesScreen(places: places,),
     AIChatScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomSnakeBar(
        selectedIndex: _selectedIndex,
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
      ).animate().fade(duration: 850.ms).slideY(
            begin: 0.5,
            duration: 850.ms,
            curve: Curves.easeInOutCubic,
          ),
    );
  }
}
