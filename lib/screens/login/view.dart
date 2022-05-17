import 'package:animate_do/animate_do.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/core/lang/locale_keys.g.dart';
import 'package:meal_monkey/screens/reset_password/view.dart';
import 'package:meal_monkey/screens/sign_up/view.dart';

import '../../gen/assets.gen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeInRightBig(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 60.h, right: 150.w, left: 150.w),
                child: Text(
                  LocaleKeys.login.tr(),
                  style: TextStyle(color: Color(0xFF4A4B4D), fontSize: 30),
                ),
              ),
              SizedBox(height: 12.h),
              Text(
                LocaleKeys.addYourDetailsToLogin.tr(),
                style: TextStyle(fontSize: 14.sp, color: Color(0xFF7C7D7E)),
              ),
              SizedBox(height: 36.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 34.w),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: LocaleKeys.yourEmail.tr(),
                  ),
                ),
              ),
              SizedBox(height: 28.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 34.w),
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText:
                    LocaleKeys.password.tr(),
                  ),
                ),
              ),
              SizedBox(height: 28.h),
              Container(
                width: double.infinity.w,
                height: 56.h,
                padding: EdgeInsets.only(right: 34.w, left: 34.w),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    LocaleKeys.login.tr(),
                  ),
                ),
              ),
              SizedBox(height: 24.h),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResetPassword()));
                  },
                  child: Text(
                    LocaleKeys.forgotYourPassword.tr(),
                      style:
                          TextStyle(fontSize: 14.sp, color: Color(0xFF7C7D7E)))),
              // 'Forgot your password?',
              // style: TextStyle(fontSize: 14, color: Color(0xFF7C7D7E)),

              SizedBox(height: 49.h),
              Text(
                LocaleKeys.orLoginWith.tr(),
                style: TextStyle(fontSize: 14.sp, color: Color(0xFF7C7D7E)),
              ),
              SizedBox(height: 46.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Container(
                  width: double.infinity,
                  height: 55.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28.r),
                    color: Color(0xFF367FC0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        Assets.icons.fb.path,
                      ),
                      SizedBox(width: 32.4.w),
                      Text(
                        LocaleKeys.loginWithFacebook.tr(),
                        style: TextStyle(color: Colors.white, fontSize: 12.sp),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 28.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Container(
                  width: double.infinity.w,
                  height: 55.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28.r),
                    color: Color(0xFFDD4B39),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        Assets.icons.google.path,
                      ),
                      SizedBox(width: 32.4.w),
                      Text(
                        LocaleKeys.loginWithGoogle.tr(),
                        style: TextStyle(color: Colors.white, fontSize: 12.sp),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 83.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                            'Dont Have AnAccount? ',
                    style: TextStyle(fontSize: 14.sp, color: Color(0xFF7C7D7E)),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen()));
                      },
                      child: Text(
                        LocaleKeys.signUp.tr(),
                        style: TextStyle(fontSize: 14.sp),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
