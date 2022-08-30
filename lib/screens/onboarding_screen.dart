import 'package:flutter/material.dart';
import 'package:pageview/screens/screen1.dart';
import 'package:pageview/screens/screen2.dart';
import 'package:pageview/screens/screen3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController controller = PageController(initialPage: 0);
  int currentPageIndex = 0;
  List<Widget> screens = const [
    ScreenOne(),
    ScreenTwo(),
    ScreenThree(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF037EEE),
      body: SafeArea(
          child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              child: PageView(
                physics: const BouncingScrollPhysics(),
                controller: controller,
                children: screens,
              ),
            ),
            SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: const ScrollingDotsEffect(
                    activeStrokeWidth: 2.6,
                    activeDotScale: 1.3,
                    maxVisibleDots: 5,
                    radius: 8,
                    spacing: 10,
                    dotHeight: 12,
                    dotWidth: 12,
                    dotColor: Colors.grey,
                    activeDotColor: Colors.blue),
                onDotClicked: (currentPageIndex) {
                  controller.animateToPage(currentPageIndex,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                }),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      )),
    );
  }
}
