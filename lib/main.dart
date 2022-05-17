import 'dart:js';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/screens/after_boarding/view.dart';
import 'package:meal_monkey/screens/desserts/view.dart';
import 'package:meal_monkey/screens/login/view.dart';
import 'package:meal_monkey/screens/on_boarding/view.dart';
import 'package:meal_monkey/screens/on_boarding/view.dart';
import 'package:meal_monkey/screens/pincode/view.dart';
import 'package:meal_monkey/screens/reset_password/view.dart';
import 'package:meal_monkey/screens/sign_up/view.dart';
import 'package:meal_monkey/screens/splash/view.dart';
import 'package:meal_monkey/screens/home/view.dart';

import 'generated/codegen_loader.g.dart';
import 'helper/color.dart';
import 'screens/home/pages/view.dart';
import 'screens/new_password/view.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: [Locale('ar'),Locale('en')],
        path:'assets/langs',
        fallbackLocale: Locale('en'),
        assetLoader: CodegenLoader(),
        startLocale: Locale('en'),
        saveLocale: true,
        child: ScreenUtilInit(
      builder: (context) => MyApp(),
    )),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        theme: ThemeData(
          primarySwatch: buildMaterialColor(
            Color(0xFFFC6011),
          ),
          platform: TargetPlatform.iOS,
          inputDecorationTheme: InputDecorationTheme(
            contentPadding:
            const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            filled: true,
            fillColor: Color(0xFFF2F2F2),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: BorderSide.none,
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28),
              ),
            ),
          ),
          outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
              side: BorderSide(
                color: Color(0xFFFC6011),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28),
              ),
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
        home:
        Pages()
        // SignUpScreen()
        // WelcomeScreen()
        // SplashScreen(),
        // LoginScreen(),
        // PageView(
        // children: [
        // HomeScreen(),
        // PinCodeVerificationScreen()
        // AfterBoardingScreen(),
        // SplashScreen(),
        // OnBoardingScreen()
        // ResetPassword()
        //   DessertsScreen()
        // ],
        // ),
        );
  }
}
