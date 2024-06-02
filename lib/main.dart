import 'package:flutter/material.dart';
import 'shared/page_navigation.dart';

void main() {
  runApp(const NomadAiApp());
}

class NomadAiApp extends StatelessWidget {
  const NomadAiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageNavigation(),
    );
  }
}
