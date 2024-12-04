import 'package:e_commerce_app/constant.dart';
import 'package:flutter/material.dart';

class LayoutHeader extends StatelessWidget {
  const LayoutHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "Register Account",
          style: headingStyle,
        ),
        SizedBox(height: 8,),
        Text(
          "Complete your details or continue\nwith social media",
          textAlign: TextAlign.center,

        ),
      ],
    );
  }
}
