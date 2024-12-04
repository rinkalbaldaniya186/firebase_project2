import 'dart:async';
import 'package:e_commerce_app/constant.dart';
import 'package:e_commerce_app/routes/app_routes.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
        // Navigate to onboarding screen ofter 3 seconds
        Navigator.pushReplacementNamed(context, AppRoute.onBoardingScreen);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          // color: Colors.green,
          decoration: BoxDecoration(
            gradient: backgroundGradient,
          ),
        ),
        Center(
          child: Image.asset('assets/images/app_logo.png',
            height: 140,
            width: 140,
          ),
        )
      ],
    );
  }
}
