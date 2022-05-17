import 'package:animate_do/animate_do.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/core/lang/locale_keys.g.dart';
import 'package:meal_monkey/screens/login/view.dart';
import 'package:meal_monkey/screens/sign_up/view.dart';

import '../../gen/assets.gen.dart';

class AfterBoardingScreen extends StatefulWidget {
  const AfterBoardingScreen({Key? key}) : super(key: key);

  @override
  State<AfterBoardingScreen> createState() => _AfterBoardingScreenState();
}

class _AfterBoardingScreenState extends State<AfterBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeInRightBig(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 500,
                child: Stack(
                  children: [
                    Image.asset(Assets.images.topShape.path,
                      width: double.infinity.w,
                      height: 382.h,
                      fit: BoxFit.fill,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Image.asset(Assets.images.logo.path,
                        width: 218.w,
                        height: 185.h,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 44.h,
              ),
              Text(LocaleKeys.loginHint.tr(),
                maxLines: 2,
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xFF7C7D7E)),
              ),
              SizedBox(
                height: 36.h,
              ),
              Container(
                width: 307.w,
                height: 56.h,
                padding: EdgeInsets.only(right: 34.h, left: 34.h),
                child: ElevatedButton(
                  onPressed: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                  },
                  child: Text(LocaleKeys.login.tr(),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                width: 307.w,
                height: 56.h,
                padding: EdgeInsets.only(right: 34.h, left: 34.h),
                child: OutlinedButton(
                  onPressed: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                  },
                  child: Text(
                    LocaleKeys.createAnAccount.tr(),
                  ),
                ),
              ),
              SizedBox(height: 20.h,)
            ],
          ),
        ),
      ),
    );
  }
}
