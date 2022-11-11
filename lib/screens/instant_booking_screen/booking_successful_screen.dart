import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:greymatter/screens/instant_booking_screen/session_successful_screen.dart';

import '../../constants/colors.dart';
import '../../constants/fonts.dart';

class BookingSuccessful extends StatefulWidget {
  const BookingSuccessful({Key? key}) : super(key: key);

  @override
  State<BookingSuccessful> createState() => _BookingSuccessfulState();
}

class _BookingSuccessfulState extends State<BookingSuccessful> {
  String text1 = 'Connecting with Priya singh';
  String text3 = 'Connected to Priya singh';
  String text4 = 'please join the meeting';
  bool _flag = true;
  Timer? _timer;
  static const maxSeconds = 60;
  int _start = maxSeconds;

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (_) {
      if (mounted) {
        setState(() {
          if (_start == 0) {
            _timer?.cancel();
            _flag = false;
          } else {
            _start--;
          }
        });
      }
    });
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteBGColor,
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 10.w,
        centerTitle: false,
        backgroundColor: Colors.white,
        title: Text(
          'Confirm your booking',
          style: kManRope_500_16_006D77,
        ),
        titleSpacing: 50.w,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Padding(
            padding: EdgeInsets.all(20.0),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 20,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, top: 96.h, right: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 80.h,
              width: 380.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                border: Border.all(color: const Color(0xFFB5BABA)),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/circleTick.svg',
                      height: 20.h,
                      width: 20.w,
                    ),
                    SizedBox(
                      width: 24.w,
                    ),
                    Text(
                      'Booking successful',
                      style: kManRope_500_16_001314,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 100.h,
            ),
            Text(
              _flag ? text1 : text3,
              style: kManRope_500_20_001314,
            ),
            Text(
              _flag ? 'please wait $_start sec' : text4,
              style: kManRope_500_16_626A6A,
            ),
            SizedBox(
              height: 90.h,
            ),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/userP.png',
                    height: 64.h,
                    width: 64.w,
                  ),
                ),
                SizedBox(
                  width: 18.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Priya Singh',
                      style: kManRope_400_16_001314,
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      'MA in Counselling Psychology',
                      style: kManRope_400_14_626A6A,
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/star.svg',
                          width: 12.w,
                          height: 12.h,
                        ),
                        Text(
                          '12 Yrs. Exp',
                          style: kManRope_400_12_001314,
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  width: 72.w,
                ),
                SvgPicture.asset(
                  'assets/icons/sarrow.svg',
                  width: 24.w,
                  height: 24.h,
                ),
              ],
            ),
            SizedBox(
              height: 230.h,
            ),
            SizedBox(
              height: 56.h,
              width: 183.w,
              child: MaterialButton(
                color: k006D77,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // <-- Radius
                ),
                onPressed: () {
                  if (!_flag) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SessionSuccessful()));
                  }
                },
                child: Text(
                  'Join Meeting',
                  style: kManRope_400_16_white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
