import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:greymatter/constants/fonts.dart';
import 'package:greymatter/screens/profile_screens/agreement_screen.dart';
import 'package:greymatter/screens/profile_screens/help_and_support_screen.dart';
import 'package:greymatter/screens/profile_screens/order_history_screen.dart';
import 'package:greymatter/screens/profile_screens/personal_info_screen.dart';

import '../../../constants/colors.dart';

class PsychologistProfileScreen extends StatefulWidget {
  const PsychologistProfileScreen({Key? key}) : super(key: key);

  @override
  State<PsychologistProfileScreen> createState() => _PsychologistProfileScreenState();
}

class _PsychologistProfileScreenState extends State<PsychologistProfileScreen> {
  bool _switchValue = true;

  void _logOutBottomSheet() {
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(8), topLeft: Radius.circular(8)),
        ),
        context: context,
        builder: (BuildContext context) => const LogOutBottomSheet());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 24.w, top: 100.h, right: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 55.h,
                  width: 55.w,
                  decoration: const BoxDecoration(
                      color: Colors.grey, shape: BoxShape.circle),
                ),
                SizedBox(
                  width: 16.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Priya singh',
                      style: kManRope_500_16_001314,
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      'priyasingh344@gmail.com',
                      style: kManRope_400_14_626A6A,
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 35.h,
            ),
            Text(
              'Account',
              style: kManRope_400_12_626A6A,
            ),
            SizedBox(
              height: 30.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const PersonalInfoScreen()));
              },
              child: Container(
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Personal Info',
                      style: kManRope_500_16_001314,
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                              const PersonalInfoScreen()));
                        },
                        child: SvgPicture.asset(
                          'assets/icons/rightArrow.svg',
                          height: 12,
                          width: 6,
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            GestureDetector(
              onTap: () {

              },
              child: Container(
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'My account',
                      style: kManRope_500_16_001314,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: SvgPicture.asset(
                        'assets/icons/rightArrow.svg',
                        height: 12,
                        width: 6,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const OrderHistoryScreen()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'E-KYC',
                    style: kManRope_500_16_001314,
                  ),
                  GestureDetector(
                    onTap: () {

                    },
                    child: SvgPicture.asset(
                      'assets/icons/rightArrow.svg',
                      height: 12,
                      width: 6,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const OrderHistoryScreen()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Slots availability',
                    style: kManRope_500_16_001314,
                  ),
                  GestureDetector(
                    onTap: () {

                    },
                    child: SvgPicture.asset(
                      'assets/icons/rightArrow.svg',
                      height: 12,
                      width: 6,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const OrderHistoryScreen()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Order history',
                    style: kManRope_500_16_001314,
                  ),
                  GestureDetector(
                    onTap: () {

                    },
                    child: SvgPicture.asset(
                      'assets/icons/rightArrow.svg',
                      height: 12,
                      width: 6,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 54.h,
            ),
            Text(
              'Help and support',
              style: kManRope_400_12_626A6A,
            ),
            SizedBox(
              height: 30.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AgreementScreen()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Agreements',
                    style: kManRope_500_16_001314,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const AgreementScreen())),
                    child: SvgPicture.asset(
                      'assets/icons/rightArrow.svg',
                      height: 12,
                      width: 6,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const HelpAndSupportScreen()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Help and support',
                    style: kManRope_500_16_001314,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const HelpAndSupportScreen()));
                    },
                    child: SvgPicture.asset(
                      'assets/icons/rightArrow.svg',
                      height: 12,
                      width: 6,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 54.h,
            ),
            Text(
              'Settings',
              style: kManRope_400_12_626A6A,
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Notifications',
                  style: kManRope_500_16_001314,
                ),
                FlutterSwitch(
                  width: 60.w,
                  height: 28.h,
                  toggleSize: 20,
                  activeColor: k006D77,
                  value: _switchValue,
                  onToggle: (val) {
                    setState(() {
                      _switchValue = val;
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: 54.h,
            ),
            GestureDetector(
              onTap: () {
                _logOutBottomSheet();
              },
              child: Text(
                'Log Out',
                style: kManRope_500_16_B64949,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LogOutBottomSheet extends StatefulWidget {
  const LogOutBottomSheet({Key? key}) : super(key: key);

  @override
  State<LogOutBottomSheet> createState() => _LogOutBottomSheetState();
}

class _LogOutBottomSheetState extends State<LogOutBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20.h,
          ),
          Text(
            'Log out',
            style: kManRope_700_20_001314,
          ),
          SizedBox(
            height: 16.h,
          ),
          Text(
            'You will be returned to the login screen.',
            style: kManRope_500_16_626A6A,
          ),
          SizedBox(
            height: 40.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CupertinoButton(
                child: Text(
                  'Cancel',
                  style: kManRope_500_20_006D77,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
              CupertinoButton(
                child: Text(
                  'Log out',
                  style: kManRope_500_20_B64949,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
