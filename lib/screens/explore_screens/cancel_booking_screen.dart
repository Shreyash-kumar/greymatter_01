import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greymatter/constants/fonts.dart';
import 'package:greymatter/screens/tabs_screen/tabs_screen.dart';

import '../../constants/colors.dart';

class CancelBookingScreen extends StatelessWidget {
  const CancelBookingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteBGColor,
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 40.w,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding:
            EdgeInsets.only(left: 24.w, right: 24.w, top: 64.h, bottom: 24.h),
        child: Column(
          children: [
            Container(
              width: 380.w,
              padding: EdgeInsets.only(bottom: 48),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 48.h, horizontal: 64.h),
                    child: SvgPicture.asset(
                      'assets/icons/CancelBooking.svg',
                      width: 210.w,
                      height: 282.h,
                    ),
                  ),
                  Text('Booking Cancelled', style: kManRope_700_24_FF482C),
                ],
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              'Your appointment with priya sing has been canceled. if you want book a new appointment got to home and book your appointment.',
              style: kManRope_500_14_626A6A,
            ),
            Spacer(),
            SizedBox(
              height: 56.h,
              width: 380.w,
              child: MaterialButton(
                color: kWhiteBGColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // <-- Radius
                  side: BorderSide(
                    color: k006D77,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => TabsScreen(),
                    ),
                  );
                },
                child: Text(
                  'Home',
                  style: kManRope_400_16_001314,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
