import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:greymatter/screens/tabs_screen/tabs_screen.dart';

import '../../constants/colors.dart';
import '../../constants/fonts.dart';
import '../instant_booking_screen/booking_successful_screen.dart';

class BookingSuccessfulScreen extends StatelessWidget {
  const BookingSuccessfulScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteBGColor,
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 10.w,
        backgroundColor: Colors.white,
        title: Text(
          'Appointment',
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
        padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 64.h),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 66.w, right: 66.w),
              height: 558.h,
              width: 380.w,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 77.h,
                  ),
                  Image.asset(
                    'assets/images/success.gif',
                    height: 200.h,
                    width: 200.w,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Congratulations',
                    style: kManRope_700_24_001314,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    'Hi Pankaj your appointment with Priya Singh has been created',
                    style: kManRope_400_16_626A6A,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Priya singh',
                        style: kManRope_400_14_006D77,
                      ),
                      Text(
                        'INR 599',
                        style: kManRope_400_14_006D77,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 17.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '12/07/2022',
                        style: kManRope_400_14_006D77,
                      ),
                      Text(
                        '1:00 PM',
                        style: kManRope_400_14_006D77,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            SizedBox(
              height: 56.h,
              width: 400.h,
              child: MaterialButton(
                color: k006D77,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // <-- Radius
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BookingSuccessful()));
                },
                child: Text(
                  'See Appointment',
                  style: kManRope_400_16_white,
                ),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            SizedBox(
              height: 56.h,
              width: 400.h,
              child: MaterialButton(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: k006D77, width: 1), // <-- Radius
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TabsScreen()));
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
