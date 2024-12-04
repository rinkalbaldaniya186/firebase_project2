import 'package:e_commerce_app/routes/app_routes.dart';
import 'package:flutter/material.dart';

import '../../sign_up/sign_up_screen.dart';

class LayoutFooter extends StatelessWidget {
  const LayoutFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Don\'t have an account?'),
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRoute.signUpScreen);
            },
            child: Text('Sign Up'),
        )
      ],
    );
  }
}
