import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/screens/after_boarding/view.dart';
import 'package:meal_monkey/screens/login/view.dart';
import 'package:animate_do/animate_do.dart';
import 'package:meal_monkey/screens/on_boarding/view.dart';

import '../../gen/assets.gen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => OnBoardingScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FadeInDownBig(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              Assets.images.bg.path,
            ),
          ),
        ),
        child: Center(
          child: Image.asset(
            Assets.images.logo.path,
            width: 218.w,
            height: 185.h,
          ),
        ),
      ),
    ));
  }
}
