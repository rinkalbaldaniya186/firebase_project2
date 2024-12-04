import 'package:e_commerce_app/screens/login/login_screen.dart';
import 'package:e_commerce_app/screens/onboarding/onboading_screen.dart';
import 'package:e_commerce_app/screens/sign_in/sign_in_screen.dart';
import 'package:e_commerce_app/screens/splash/spalsh_screen.dart';
import 'package:flutter/material.dart';

import '../screens/sign_up/sign_up_screen.dart';

class AppRoute{
  static const splashScreen = '/';
  static const onBoardingScreen = '/onBoarding';
  static const signInScreen = '/signIn';
  static const signUpScreen = '/signUp';

  static Route<dynamic>? generateRoute(RouteSettings settings){
    switch(settings.name){
      case splashScreen:
        return MaterialPageRoute(
          builder: (context) => SplashScreen(),
        );

      case onBoardingScreen:
        return MaterialPageRoute(
          builder: (context) => OnBoardingScreen(),
        );

      case signInScreen:
        return MaterialPageRoute(
          builder: (context) => SignInScreen(),
        );

      case signUpScreen:
        return MaterialPageRoute(
          builder: (context) => SignUpScreen(),
        );

    }
  }

}