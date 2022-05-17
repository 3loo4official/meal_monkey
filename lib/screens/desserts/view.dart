import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/core/lang/locale_keys.g.dart';

import '../../gen/assets.gen.dart';

class DessertsScreen extends StatelessWidget {
  const DessertsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          iconSize: 16,
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xff4A4B4D),
          ),
          onPressed: () {},
        ),
        title: Align(
            alignment: Alignment.topLeft,
            child: Text(
              LocaleKeys.desserts.tr(),
              style: TextStyle(
                color: Color(0xff4A4B4D),
              ),
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart_rounded,
                color: Color(0xff4A4B4D),
              ))
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 21),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28.r),
                    color: Color(0xffF2F2F2)),
                width: double.infinity.w,
                height: 45.h,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        size: 16,
                      ),
                    ),
                    SizedBox(
                      width: 15.5.w,
                    ),
                    Text(
                      LocaleKeys.searchFood.tr(),
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Color(0xffB6B7B7),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 19.h,
            ),
            Column(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      Assets.images.products.frenchApplePie.path,
                      width: double.infinity.w,
                      height: 193.h,
                      fit: BoxFit.fill,
                    ),
                    Positioned(
                      bottom: 46,
                      left: 21,
                      right: 228,
                      child: Text(
                        LocaleKeys.frenchApplePie.tr(),
                        style: TextStyle(
                            color: Color(0xffffffff), fontSize: 16.sp),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 4.h,
                ),
                Stack(
                  children: [
                    Image.asset(
                      Assets.images.products.darkChocolateCake.path,
                      width: double.infinity.w,
                      height: 193.h,
                      fit: BoxFit.fill,
                    ),
                    Positioned(
                      bottom: 46,
                      left: 21,
                      right: 228,
                      child: Text(
                        LocaleKeys.darkChocolateCake.tr(),
                        style: TextStyle(
                            color: Color(0xffffffff), fontSize: 16.sp),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4.h,
                ),
                Stack(
                  children: [
                    Image.asset(
                      Assets.images.products.streetShake.path,
                      width: double.infinity.w,
                      height: 193.h,
                      fit: BoxFit.fill,
                    ),
                    Positioned(
                      bottom: 46,
                      left: 21,
                      right: 228,
                      child: Text(
                        LocaleKeys.streetShake.tr(),
                        style: TextStyle(
                            color: Color(0xffffffff), fontSize: 16.sp),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 4.h,
                ),
                Stack(
                  children: [
                    Image.asset(
                      Assets.images.products.fudgyChewyBrownies.path,
                      width: double.infinity.w,
                      height: 193.h,
                      fit: BoxFit.fill,
                    ),
                    Positioned(
                      bottom: 46,
                      left: 21,
                      right: 228,
                      child: Text(
                        LocaleKeys.fudgyChewyBrownies.tr(),
                        style: TextStyle(
                            color: Color(0xffffffff), fontSize: 16.sp),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 4.h,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
