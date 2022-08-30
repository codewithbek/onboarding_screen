import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

import 'my_painter.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF037EEE),
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 350,
                    color: Colors.white,
                    child: CustomPaint(
                      foregroundPainter: MyPainter(
                          lineY: 0.39,
                          x1: 0.3,
                          y1: 0.2,
                          x2: 0.5,
                          y2: 0.1,
                          y3: 0.45),
                      size: const Size(double.infinity, 400),
                    ),
                  ),
                ),
                Positioned(
                    top: 140,
                    left: 30,
                    child: SvgPicture.asset(
                      "assets/svg/icon.svg",
                      width: 55,
                      height: 42,
                      color: const Color(0XFF037EEE),
                    )),
                const Positioned(
                  top: 180,
                  left: 30,
                  child: Text(
                    "eCommerce Shop",
                    style: TextStyle(
                        color: Color(0XFF037EEE),
                        fontSize: 28,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Positioned(
                  top: 220,
                  left: 30,
                  child: Container(
                    color: Colors.black,
                    height: 1,
                    width: 233,
                  ),
                ),
                const Positioned(
                  top: 230,
                  left: 30,
                  child: Text(
                    "Professional App for your\neCommerce business",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
            Expanded(
                child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  Lottie.asset(
                    "assets/lottie/second.json",
                    width: double.infinity,
                    height: 280,
                  ),
                  const Text(
                    "Track order !!",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing,\nsed do eiusmod tempor ut labore",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
