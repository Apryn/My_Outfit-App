import 'package:flutter/material.dart';
import 'package:my_outfit/Theme.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'login_page.dart';

class onboarding_page extends StatefulWidget {
  const onboarding_page({Key? key}) : super(key: key);

  @override
  State<onboarding_page> createState() => _onboarding_pageState();
}

class _onboarding_pageState extends State<onboarding_page> {
  @override
  Widget build(BuildContext context) {
    var controller = PageController();
    int islastpage = 0;
    return Scaffold(
        body: SafeArea(
      child: Container(
        child: Stack(children: [
          PageView(
            controller: controller,
            onPageChanged: (index) {
              setState(() => islastpage = index);
            },
            children: [
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('Assets/images/ONB 1.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    decoration:
                        BoxDecoration(color: Colors.black.withOpacity(0.3)),
                  ),
                  Center(
                    child: Text("Create Your Own Outfit",
                        style: Regular.copyWith(color: Colors.white)),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('Assets/images/ONB 2.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    decoration:
                        BoxDecoration(color: Colors.black.withOpacity(0.3)),
                  ),
                  Center(
                    child: Text("Organized Your Outfit",
                        style: Regular.copyWith(color: Colors.white)),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('Assets/images/ONB 3.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    decoration:
                        BoxDecoration(color: Colors.black.withOpacity(0.3)),
                  ),
                  Center(
                    child: Text("Find Your Own Style",
                        style: Regular.copyWith(color: Colors.white)),
                  ),
                ],
              ),
            ],
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.only(left: 100, right: 100),
                          primary: Red,
                        ),
                        child: Text(
                            (islastpage == 2) ? "Get Started" : 'Continue'),
                        onPressed: () async {
                          // Navigator.of(context).pushReplacement(
                          //   MaterialPageRoute(
                          //       builder: (context) => login_page()),
                          // );
                        },
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: WormEffect(
                        dotHeight: 8,
                        dotWidth: 8,
                        radius: 12,
                        activeDotColor: Colors.white),
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    ));
  }
}
