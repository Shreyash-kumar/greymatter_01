import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greymatter/constants/colors.dart';
import 'package:greymatter/screens/psychologist_screen/tabs_screen/pofile_screen.dart';
import 'package:greymatter/screens/psychologist_screen/tabs_screen/post_screen.dart';
import 'package:greymatter/screens/psychologist_screen/tabs_screen/prescription_screen.dart';

import 'my_earnings_screen.dart';
import 'psychologist_home_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: [
        PsychologistHomeScreen(),
        PrescriptionScreen(),
        PsychologistPostScreen(),
        MyEarningsScreen(),
        PsychologistProfileScreen(),
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
                child: SvgPicture.asset(
                  _index == 0
                      ? 'assets/icons/homeselected.svg'
                      : 'assets/icons/home.svg',
                  color: _index == 0 ? k006D77 : Colors.black,
                ),
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
                        ? k006D77.withOpacity(0.08)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(16)),
                child: SvgPicture.asset(
                  _index == 1
                      ? 'assets/icons/Union.svg'
                      : 'assets/icons/calenderunselected.svg',
                  color: _index == 1 ? k006D77 : Colors.black,
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
                        ? k006D77.withOpacity(0.08)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(16)),
                child: SvgPicture.asset(
                  _index == 2
                      ? 'assets/icons/dotsSelected.svg'
                      : 'assets/icons/dotsunselected.svg',
                  color: _index == 2 ? k006D77 : Colors.black,
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
                        ? k006D77.withOpacity(0.08)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(16)),
                child: SvgPicture.asset(
                  'assets/icons/targetunselected.svg',
                  color: _index == 3 ? k006D77 : Colors.black,
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
                        ? k006D77.withOpacity(0.08)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(16)),
                child: SvgPicture.asset(
                    _index == 4
                        ? 'assets/icons/profileSelected.svg'
                        : 'assets/icons/profileunselected.svg',
                    color: _index == 4 ? k006D77 : Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
