import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

import 'my_painter.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({Key? key}) : super(key: key);

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
                          lineY: 0.45,
                          x1: 0.4,
                          y1: 0.7,
                          x2: 0.7,
                          y2: 1,
                          y3: 0.9),
                      size: const Size(double.infinity, 400),
                    ),
                  ),
                ),
                Positioned(
                    top: 50,
                    right: 30,
                    child: SvgPicture.asset(
                      "assets/svg/icon.svg",
                      width: 55,
                      height: 42,
                    )),
                const Positioned(
                  top: 100,
                  right: 30,
                  child: Text(
                    "eCommerce Shop",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Positioned(
                  top: 150,
                  right: 30,
                  child: Container(
                    color: Colors.white,
                    height: 1,
                    width: 233,
                  ),
                ),
                const Positioned(
                  top: 170,
                  right: 30,
                  child: Text(
                    "Professional App for your\neCommerce business",
                    style: TextStyle(
                        color: Colors.white,
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
                    "assets/lottie/third.json",
                    width: double.infinity,
                    height: 250,
                  ),
                  const Text(
                    "Get your order !!",
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
            )),
          ],
        ),
      ),
    );
  }
}
