
import 'package:clubhouse/src/screens/catagories.dart';
import 'package:clubhouse/src/screens/homeScreen.dart';
import 'package:clubhouse/src/screens/login.dart';
import 'package:clubhouse/src/screens/signup.dart';
import 'package:clubhouse/src/screens/verfy.dart';
import 'package:clubhouse/src/screens/verfySuccessful.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static const String signupScreen = "/";
  static const String loginScreen = "/login";
  static const String verifyScreen = "/verify";
  static const String catagoryScreen = "/catagory";
  static const String verfySuccessScreen = "/verfySuccess";
  static const String homeScreen = "/homepage";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case signupScreen:
        return MaterialPageRoute(builder: (_) => SignupScreen());
      case loginScreen:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case verifyScreen:
        return MaterialPageRoute(builder: (_) => VerifyScreen());
      case catagoryScreen:
        return MaterialPageRoute(builder: (_) => CatagorieScreen());
      case verfySuccessScreen:
        return MaterialPageRoute(builder: (_) => VerfySuccessful());
      case homeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      default:
        throw FormatException("Route was not found");
    }
  }
}
