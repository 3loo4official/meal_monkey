import 'package:animate_do/animate_do.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/core/lang/locale_keys.g.dart';
import 'package:meal_monkey/screens/after_boarding/view.dart';
import 'package:meal_monkey/screens/on_boarding/controller.dart';

import '../../gen/assets.gen.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = OnBoardingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeInRightBig(
        child: Padding(
          padding: const EdgeInsets.all(34),
          child: ListView(
            children: [
              SizedBox(
                height: 80.h,
              ),
              Container(
                height: 294.h,
                width: 225.w,
                child: PageView(
                  onPageChanged: (value) {
                    controller.changeController(value);
                    setState(() {});
                  },
                  children: List.generate(
                    controller.images.length,
                    (index) => Image.asset(
                      "assets/images/on_boarding_screen/" +
                          controller.images[controller.currentIndex],
                      width: 225.44.w,
                      height: 294.h,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  controller.images.length,
                  (index) => Container(
                    margin: EdgeInsetsDirectional.only(start: 5.w),
                    height: 8.h,
                    width: index == controller.currentIndex ? 8.w : 8.w,
                    decoration: BoxDecoration(
                      // shape: BoxShape.circle,
                      borderRadius: BorderRadius.circular(25.r),
                      color: Color(index == controller.currentIndex
                          ? 0xffFC6011
                          : 0xffD6D6D6),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Text(
                controller.label[controller.currentIndex],
                style: TextStyle(fontSize: 28.sp, color: Color(0xff4A4B4D)),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 33.h,
              ),
              Text(
                controller.hint[controller.currentIndex],
                style: TextStyle(fontSize: 13.sp, color: Color(0xff7C7D7E)),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40.h,
              ),
              controller.currentIndex == 2
                  ? Padding(
                      padding: EdgeInsets.symmetric(horizontal: 34.w),
                      child: Container(
                        width: 307.w,
                        height: 56.h,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        AfterBoardingScreen()));
                          },
                          child: Text(
                            LocaleKeys.finish.tr(),
                          ),
                        ),
                      ),
                    )
                  : SizedBox.shrink()
            ],
          ),
        ),
      ),
    );
  }
}
