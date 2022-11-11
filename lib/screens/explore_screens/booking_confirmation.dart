import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greymatter/screens/explore_screens/cancel_booking_screen.dart';

import '../../constants/colors.dart';
import '../../constants/fonts.dart';

class BookingConfirmationScreen extends StatefulWidget {
  const BookingConfirmationScreen({Key? key}) : super(key: key);

  @override
  State<BookingConfirmationScreen> createState() =>
      _BookingConfirmationScreenState();
}

class _BookingConfirmationScreenState extends State<BookingConfirmationScreen> {
  void _selectGender() {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        context: context,
        builder: (BuildContext context) => const GenderBottomSheet());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteBGColor,
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 40.w,
        backgroundColor: Colors.white,
        centerTitle: false,
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
        actions: [
          GestureDetector(
            onTap: () {
              _selectGender();
            },
            child: SvgPicture.asset(
              'assets/icons/kebabMenu.svg',
              height: 30.h,
              width: 14.w,
            ),
          ),
          SizedBox(
            width: 18.w,
          ),
        ],
      ),
      body: Padding(
        padding:
            EdgeInsets.only(left: 24.w, top: 40.h, right: 24.w, bottom: 35.h),
        child: SizedBox(
          child: ListView(
            children: [
              Text('Selected Psychologists', style: kManRope_700_16_001314),
              SizedBox(
                height: 24.h,
              ),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: Image.asset(
                      'assets/images/userP.png',
                      height: 135.h,
                      width: 133.w,
                    ),
                  ),
                  SizedBox(
                    width: 18.w,
                  ),
                  Expanded(
                    child: Column(
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
                              '12.  12 Yrs. Exp',
                              style: kManRope_400_12_001314,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  SvgPicture.asset(
                    'assets/icons/sarrow.svg',
                    width: 24.w,
                    height: 24.h,
                  ),
                ],
              ),
              SizedBox(
                height: 42.h,
              ),
              Text('Selected issue', style: kManRope_700_16_001314),
              SizedBox(
                height: 24.h,
              ),
              Text(
                'Loneliness',
                style: kManRope_500_16_006D77,
              ),
              SizedBox(
                height: 40.h,
              ),
              Text('Selected Date', style: kManRope_700_16_001314),
              SizedBox(
                height: 24.h,
              ),
              Text(
                'Wed, 12/07/2022',
                style: kManRope_500_16_006D77,
              ),
              SizedBox(
                height: 40.h,
              ),
              Text('Time Slot', style: kManRope_700_16_001314),
              SizedBox(
                height: 24.h,
              ),
              Text(
                '1:00 PM',
                style: kManRope_500_16_006D77,
              ),
              SizedBox(
                height: 77.h,
              ),
              SizedBox(
                height: 56.h,
                width: 183.w,
                child: MaterialButton(
                  color: k006D77,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // <-- Radius
                  ),
                  onPressed: () {},
                  child: Text(
                    'Join meeting',
                    style: kManRope_400_16_white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GenderBottomSheet extends StatefulWidget {
  const GenderBottomSheet({Key? key}) : super(key: key);

  @override
  State<GenderBottomSheet> createState() => _GenderBottomSheetState();
}

class _GenderBottomSheetState extends State<GenderBottomSheet> {
  void _cancelBooking() {
    showModalBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        builder: (BuildContext context) => const CancelBooking());
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 71.h,
            decoration: const BoxDecoration(
              color: k006D77,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 46.w),
              child: Center(
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 20.sp,
                      ),
                    ),
                    SizedBox(
                      width: 107.w,
                    ),
                    Text(
                      'Select One',
                      style: kManRope_700_16_white,
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
              _cancelBooking();
            },
            child: Container(
              width: 1.sw,
              padding: EdgeInsets.only(top: 24, bottom: 24),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Center(
                child: Text(
                  'Cancel booking',
                  style: kManRope_500_16_626A6A,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
              setState(() {});
            },
            child: Container(
              width: 1.sw,
              padding: EdgeInsets.only(bottom: 24, top: 24),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Center(
                  child: Text(
                'Reschedule',
                style: kManRope_500_16_626A6A,
              )),
            ),
          ),
        ],
      ),
    );
  }
}

class CancelBooking extends StatefulWidget {
  const CancelBooking({Key? key}) : super(key: key);

  @override
  State<CancelBooking> createState() => _CancelBookingState();
}

class _CancelBookingState extends State<CancelBooking> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            Container(
              height: 71.h,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8)),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 46.w),
                child: Center(
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.of(context).pop(),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: k66898D,
                          size: 20.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 190.h,
              padding: const EdgeInsets.only(top: 6.0),
              margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              // Provide a background color for the popup.
              color: CupertinoColors.systemBackground.resolveFrom(context),
              // Use a SafeArea widget to avoid system overlaps.
              child: SafeArea(
                top: false,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 0.h),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 56.h,
                        width: 380.w,
                        child: MaterialButton(
                          color: k006D77,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(10), // <-- Radius
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    const CancelBookingScreen()));
                          },
                          child: Text(
                            'Cancel booking',
                            style: kManRope_400_16_white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 28.h,
                      ),
                      Container(
                        height: 44.h,
                        width: 380.w,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          color: Colors.white,
                        ),
                        child: Center(
                            child: Text(
                          'By clicking the Cancel button your appointment will cancel',
                          style: kManRope_500_16_626A6A,
                        )),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
