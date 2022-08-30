import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:pageview/screens/my_painter.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

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
                          lineY: 0.65,
                          x1: 0.2,
                          y1: 0.8,
                          x2: 1,
                          y2: 0.4,
                          y3: 0.39),
                      size: const Size(double.infinity, 400),
                    ),
                  ),
                ),
                Positioned(
                    top: 50,
                    left: 30,
                    child: SvgPicture.asset(
                      "assets/svg/icon.svg",
                      width: 55,
                      height: 42,
                    )),
                const Positioned(
                  top: 100,
                  left: 30,
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
                  left: 30,
                  child: Container(
                    color: Colors.white,
                    height: 1,
                    width: 233,
                  ),
                ),
                const Positioned(
                  top: 170,
                  left: 30,
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
              color: Colors.white,
              width: double.infinity,
              child: Column(
                children: [
                  Lottie.asset("assets/lottie/first.json",
                      height: 280, width: double.infinity),
                  const Text(
                    "Purchase Online !!",
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

class MyCircle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = Colors.white;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
