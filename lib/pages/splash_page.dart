import 'dart:async';
import 'home_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  static const id = "/splash_page";

  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  _initTimer() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, HomePage.id);
    });
  }

  @override
  initState() {
    super.initState();
    _initTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3AA04),
      body: Column(
        children: [
          // #My Task
          Container(
            padding: const EdgeInsets.only(top: 30, left: 10),
            alignment: Alignment.topCenter,
            child: const Text(
              "My Tasks",
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(height: 10),

          // #image 1
          Image.asset("assets/images/im_2.png", height: 37, width: 110),
          const SizedBox(height: 20),

          // #image 2
          Image.asset("assets/images/im_1.png", height: 325, width: 345),
          const SizedBox(height: 60),

          // #image 3
          Image.asset("assets/images/im_4.png"),
          const SizedBox(height: 30),

          // #good
          Container(
            padding: const EdgeInsets.only(left: 51, top: 44),
            alignment: Alignment.bottomLeft,
            child: const Text(
              "Good",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w800),
            ),
          ),

          // #Consistancy
          Container(
            padding: const EdgeInsets.only(right: 200),
            child: const Text(
              "Consistancy",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w800),
            ),
          ),
          const SizedBox(height: 0),

          // #image 4
          Container(
            padding: const EdgeInsets.only(left: 320),
            child: Image.asset(
              "assets/images/im_3.png",
              height: 40,
              width: 40,
            ),
          )
        ],
      ),
    );
  }
}
