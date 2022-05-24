import 'package:flutter/material.dart';
import 'Theme.dart';
import 'login_page.dart';
import 'sliderONB.dart';

class onboardingpage extends StatefulWidget {
  const onboardingpage({Key? key}) : super(key: key);

  @override
  State<onboardingpage> createState() => _onboardingpageState();
}

class _onboardingpageState extends State<onboardingpage> {
  int curentindex = 0;
  final controller = PageController();
  List ONBpage = [
    slideronb(
      tittle: "Create Your Own Outfit",
      images: "Assets/images/ONB 1.png",
    ),
    slideronb(
      tittle: "Organized Your Outfit",
      images: "Assets/images/ONB 2.png",
    ),
    slideronb(
      tittle: "Find Your Own Style",
      images: "Assets/images/ONB 3.png",
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
