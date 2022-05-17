import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/core/lang/locale_keys.g.dart';
import 'package:meal_monkey/gen/fonts.gen.dart';

import '../../gen/assets.gen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Align(
          alignment: Alignment.topLeft,
          child: Text(
            LocaleKeys.goodMorningAkila.tr(),
            style: TextStyle(
              fontSize: 20.sp,
              color: Color(0xff4A4B4D),
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart_rounded,
                color: Color(0xff4A4B4D),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  LocaleKeys.deliveringTo.tr(),
                  style: TextStyle(color: Color(0xffB6B7B7), fontSize: 11.sp),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Row(
                children: [
                  Text(
                    LocaleKeys.currentLocation.tr(),
                    style: TextStyle(
                        color: Color(0xff7C7D7E),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 45.w,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.keyboard_arrow_down_sharp,
                      color: Color(0xffFC6011),
                    ),
                  ),
                  // SizedBox(
                  //   width: 127,
                  // ),
                ],
              ),
              SizedBox(
                height: 34.h,
              ),
              // Container(
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(28.r),
              //       color: Color(0xffF2F2F2)),
              //   width: double.infinity.w,
              //   height: 45.h,
              //   child: Row(
              //     children: [
              //       IconButton(
              //         onPressed: () {},
              //         icon: Icon(
              //           Icons.search,
              //           size: 16,
              //         ),
              //       ),
              //       SizedBox(
              //         width: 15.5.w,
              //       ),
              //       Text(
              //         LocaleKeys.searchFood.tr(),
              //         style: TextStyle(
              //           fontSize: 14.sp,
              //           color: Color(0xffB6B7B7),
              //         ),
              //       )
              //     ],
              //   ),
              // ),
              TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.h),
                      child: Icon(
                        Icons.search,
                        color: Color(0xff7C7D7E),
                      ),
                    ),
                    labelText: 'Search food',
                    labelStyle: TextStyle(
                      color: Color(0xffB6B7B7),
                      fontSize: 14.sp,
                      fontFamily: FontFamily.metroRegular,
                    )),
              ),
              SizedBox(
                height: 30.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          Assets.images.products.offers.path,
                          width: 88.w,
                          height: 88.h,
                        ),
                        SizedBox(
                          height: 7.h,
                        ),
                        Text(
                          LocaleKeys.offers.tr(),
                          style: TextStyle(fontSize: 14.sp),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 18.w,
                    ),
                    Column(
                      children: [
                        Image.asset(
                          Assets.images.products.sriLankan.path,
                          width: 88.w,
                          height: 88.h,
                        ),
                        SizedBox(
                          height: 7.h,
                        ),
                        Text(
                          LocaleKeys.sriLankan.tr(),
                          style: TextStyle(fontSize: 14.sp),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 18.w,
                    ),
                    Column(
                      children: [
                        Image.asset(
                          Assets.images.products.italian.path,
                          width: 88.w,
                          height: 88.h,
                        ),
                        SizedBox(
                          height: 7.h,
                        ),
                        Text(
                          LocaleKeys.italian.tr(),
                          style: TextStyle(fontSize: 14.sp),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 18.w,
                    ),
                    Column(
                      children: [
                        Image.asset(
                          Assets.images.products.indian.path,
                          width: 88.w,
                          height: 88.h,
                        ),
                        SizedBox(
                          height: 7.h,
                        ),
                        Text(
                          LocaleKeys.indian.tr(),
                          style: TextStyle(fontSize: 14.sp),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 18.w,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 58.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        LocaleKeys.popularRestaurents,
                        style: TextStyle(
                          fontSize: 20.sp,
                          color: Color(0xff4A4B4D),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 118.w,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        LocaleKeys.viewAll.tr(),
                        style: TextStyle(
                            color: Color(0xffFC6011), fontSize: 13.sp),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Column(
                children: [
                  Image.asset(
                    Assets.images.products.minuteByTukTuk1.path,
                    width: double.infinity.w,
                    height: 193.h,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      LocaleKeys.minuteByTukTuk.tr(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.sp),
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Row(
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Icon(
                            Icons.star,
                            color: Color(0xffFC6011),
                          )),
                      SizedBox(width: 4.w),
                      Text(
                        '4.9',
                        style: TextStyle(
                            color: Color(0xffFC6011), fontSize: 11.sp),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        '124RatingsCaféWesternFood',
                        style: TextStyle(
                            color: Color(0xffB6B7B7), fontSize: 12.sp),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 32.h,
              ),
              Column(
                children: [
                  Image.asset(
                    Assets.images.products.cafeDeNoir.path,
                    width: double.infinity.w,
                    height: 193.h,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'caféDeNoir',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.sp),
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Row(
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Icon(
                            Icons.star,
                            color: Color(0xffFC6011),
                          )),
                      SizedBox(width: 4.w),
                      Text(
                        '4.9',
                        style: TextStyle(
                            color: Color(0xffFC6011), fontSize: 11.sp),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        'caféWesternFood',
                        style: TextStyle(
                            color: Color(0xffB6B7B7), fontSize: 12.sp),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 32.h,
              ),
              Column(
                children: [
                  Image.asset(
                    Assets.images.products.bakesByTella.path,
                    width: double.infinity.w,
                    height: 193.h,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      LocaleKeys.bakesByTella.tr(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.sp),
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Row(
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Icon(
                            Icons.star,
                            color: Color(0xffFC6011),
                          )),
                      SizedBox(width: 4.w),
                      Text(
                        '4.9',
                        style: TextStyle(
                            color: Color(0xffFC6011), fontSize: 11.sp),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        'caféWesternFood',
                        style: TextStyle(
                            color: Color(0xffB6B7B7), fontSize: 12.sp),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 64.h,
              ),
              Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      LocaleKeys.mostPopular.tr(),
                      style: TextStyle(
                        fontSize: 20.sp,
                        color: Color(0xff4A4B4D),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 118.w,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      LocaleKeys.viewAll.tr(),
                      style:
                          TextStyle(color: Color(0xffFC6011), fontSize: 13.sp),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 33.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          Assets.images.products.cafeDeBambaa.path,
                          width: 228.w,
                          height: 135.h,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'caféDeBambaa',textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 18.sp, color: Color(0xff4A4B4D)),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 19.w,
                    ),
                    Column(
                      children: [
                        Image.asset(
                          Assets.images.products.burgerByBella.path,
                          width: 228.w,
                          height: 135.h,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            LocaleKeys.burgerByBella.tr(),
                            style: TextStyle(
                                fontSize: 18.sp, color: Color(0xff4A4B4D)),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 37.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        LocaleKeys.recentItems.tr(),
                        style: TextStyle(
                          fontSize: 26.sp,
                          color: Color(0xff4A4B4D),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 118.w,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        LocaleKeys.viewAll.tr(),
                        style: TextStyle(
                            color: Color(0xffFC6011), fontSize: 13.sp),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 26.h,
              ),
              Row(
                children: [
                  Image.asset(
                    Assets.images.products.mulberryPizzaByJosh.path,
                    width: 75.w,
                    height: 75.h,
                  ),
                  SizedBox(
                    width: 22.w,
                  ),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        LocaleKeys.mulberryPizzaByJosh.tr(),
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: Color(0xff4A4B4D),
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'caféWesternFood',
                        style: TextStyle(
                            fontSize: 11.sp, color: Color(0xffB6B7B7)),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Color(0xffFC6011),
                          ),
                          SizedBox(width: 6.2.w),
                          Text(
                            '4.9',
                            style: TextStyle(
                                color: Color(0xffFC6011), fontSize: 11.sp),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            '124Ratings',
                            style: TextStyle(
                                fontSize: 11.sp, color: Color(0xffB6B7B7)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Image.asset(
                    Assets.images.products.barita.path,
                    width: 75.w,
                    height: 75.h,
                  ),
                  SizedBox(
                    width: 22.w,
                  ),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        LocaleKeys.barita.tr(),
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: Color(0xff4A4B4D),
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'caféCoffee',
                        style: TextStyle(
                            fontSize: 11.sp, color: Color(0xffB6B7B7)),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Color(0xffFC6011),
                          ),
                          SizedBox(width: 6.2.w),
                          Text(
                            '4.9',
                            style: TextStyle(
                                color: Color(0xffFC6011), fontSize: 11.sp),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            '',
                            style: TextStyle(
                                fontSize: 11.sp, color: Color(0xffB6B7B7)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Image.asset(
                    Assets.images.products.pizzaRushHour.path,
                    width: 75.w,
                    height: 75.h,
                  ),
                  SizedBox(
                    width: 22.w,
                  ),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        LocaleKeys.pizzaRushHour.tr(),
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: Color(0xff4A4B4D),
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'caféItalianFood',
                        style: TextStyle(
                            fontSize: 11.sp, color: Color(0xffB6B7B7)),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Color(0xffFC6011),
                          ),
                          SizedBox(width: 6.2.w),
                          Text(
                            '4.9',
                            style: TextStyle(
                                color: Color(0xffFC6011), fontSize: 11.sp),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            '124Ratings',
                            style: TextStyle(
                                fontSize: 11.sp, color: Color(0xffB6B7B7)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 22.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
