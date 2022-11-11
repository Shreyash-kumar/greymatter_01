import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greymatter/constants/colors.dart';
import 'package:greymatter/screens/goal_screens/goalScreen.dart';
import 'package:greymatter/screens/posts_screens/post_screen.dart';
import 'package:greymatter/screens/tabs_screen/home_screen.dart';
import 'package:greymatter/screens/tabs_screen/profile_screen.dart';

import 'explore_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        extendBody: true,
        body: [
          HomeScreen(),
          ExploreScreen(),
          PostScreen(),
          GoalScreen(),
          ProfileScreen(),
        ].elementAt(_index),
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 16.h),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24), topRight: Radius.circular(24)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    _index = 0;
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(12),
                  width: 48.w,
                  height: 48.h,
                  decoration: BoxDecoration(
                      color: _index == 0
                          ? k006D77.withOpacity(0.08)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(16)),
                  child: _index == 0
                      ? Image.asset('assets/images/logoT.png')
                      : Image.asset('assets/images/logoF.png'),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _index = 1;
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(12),
                  width: 48.w,
                  height: 48.h,
                  decoration: BoxDecoration(
                      color: _index == 1
                          ? k5A72ED.withOpacity(0.08)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(16)),
                  child: SvgPicture.asset(
                    _index == 1
                        ? 'assets/icons/Union.svg'
                        : 'assets/icons/calenderunselected.svg',
                    color: _index == 1 ? k5A72ED : Colors.black,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _index = 2;
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(12),
                  width: 48.w,
                  height: 48.h,
                  decoration: BoxDecoration(
                      color: _index == 2
                          ? k5A72ED.withOpacity(0.08)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(16)),
                  child: SvgPicture.asset(
                    _index == 2
                        ? 'assets/icons/dotsSelected.svg'
                        : 'assets/icons/dotsunselected.svg',
                    color: _index == 2 ? k5A72ED : Colors.black,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _index = 3;
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(12),
                  width: 48.w,
                  height: 48.h,
                  decoration: BoxDecoration(
                      color: _index == 3
                          ? k5A72ED.withOpacity(0.08)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(16)),
                  child: SvgPicture.asset(
                    'assets/icons/targetunselected.svg',
                    color: _index == 3 ? k5A72ED : Colors.black,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _index = 4;
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(12),
                  width: 48.w,
                  height: 48.h,
                  decoration: BoxDecoration(
                      color: _index == 4
                          ? k5A72ED.withOpacity(0.08)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(16)),
                  child: SvgPicture.asset(
                      _index == 4
                          ? 'assets/icons/profileSelected.svg'
                          : 'assets/icons/profileunselected.svg',
                      color: _index == 4 ? k5A72ED : Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
