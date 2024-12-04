import 'package:e_commerce_app/screens/sign_up/componets/header.dart';
import 'package:e_commerce_app/screens/sign_up/componets/sign_up_form.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: [
              AppBar(),
               LayoutHeader(),
              SizedBox(
                height: 24,
              ),
              SignUpForm(),
            ],
          ),
        ),
      ),
    );
  }
}
