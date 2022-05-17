import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/gen/assets.gen.dart';
import 'package:meal_monkey/screens/home/pages/more/view.dart';
import 'package:meal_monkey/screens/home/view.dart';
import 'menu/view.dart';
import 'offers/view.dart';
import 'profile/view.dart';

class Pages extends StatefulWidget {
  const Pages({Key? key}) : super(key: key);

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  var pages = [MenuPage(), OfferPage(), HomeScreen(), ProfilePage(), MorePage()];
  var imageAssets = [
    Assets.icons.menu.path,
    Assets.icons.offers.path,
    Assets.icons.home.path,
    Assets.icons.profile.path,
    Assets.icons.more.path
  ];
  var title = ["Menu", "Offers", "Home", "Profile", "More"];
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: GestureDetector(
        onTap: () {
          currentPage = 2;
          setState(() {});
        },
        child: CircleAvatar(
          radius: 35.r,
          backgroundColor: currentPage == 2 ? Colors.orange : Color(0xffB6B7B7),
          child: Icon(
            Icons.home,
            color: Colors.white,
          ),
        ),
      ),
      bottomNavigationBar: Container(
          width: double.infinity,
          height: 75.h,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(Assets.images.bottonNavBar.path),
                  fit: BoxFit.fill),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xff4A4B4D).withOpacity(.11),
                  blurRadius: 30.r,
                  blurStyle: BlurStyle.outer,
                  // spreadRadius: 50
                ),
              ]),
          child: Row(
            children: List.generate(
                pages.length,
                (index) => index == 2
                    ? const Spacer()
                    : Expanded(
                        child: GestureDetector(
                          onTap: () {
                            currentPage = index;
                            setState(() {});
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                color:
                                    index == currentPage ? Colors.orange : null,
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Image.asset(imageAssets[index]),
                                ),
                              ),
                              Text(
                                title[index],
                                style: TextStyle(
                                    color: index == currentPage
                                        ? Colors.orange
                                        : null),
                              )
                            ],
                          ),
                        ),
                      )),
          )),
    );
  }
}
