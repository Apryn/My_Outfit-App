import 'dart:ffi';

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

  onchanged(int index) {
    setState(() {
      curentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: controller,
            itemCount: ONBpage.length,
            onPageChanged: onchanged,
            itemBuilder: (BuildContext context, int index) {
              return ONBpage[index];
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              (curentindex == (ONBpage.length - 1))
                  ? ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                        primary: Red,
                      ),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => login_page()));
                      },
                      child: Text(
                        "Get Started",
                        style: Regular.copyWith(color: Colors.white),
                      ))
                  : ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                        primary: Red,
                      ),
                      onPressed: () {
                        controller.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut);
                      },
                      child: Text(
                        "Continue",
                        style: Regular.copyWith(color: Colors.white),
                      )),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(ONBpage.length, (int index) {
                    return AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      height: 10,
                      width: (index == curentindex) ? 10 : 10,
                      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: (index == curentindex)
                            ? Colors.white
                            : Colors.white.withOpacity(0.2),
                      ),
                    );
                  })),
            ],
          )
        ],
      )),
    );
  }
}
