import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:greymatter/screens/instant_booking_screen/booking_successful_screen.dart';

import '../../constants/colors.dart';
import '../../constants/fonts.dart';

class ConfirmBooking extends StatefulWidget {
  const ConfirmBooking({Key? key, required this.issue}) : super(key: key);
  final String issue;

  @override
  State<ConfirmBooking> createState() => _ConfirmBookingState();
}

class _ConfirmBookingState extends State<ConfirmBooking> {
  final GlobalKey<FormState> _fKey = GlobalKey<FormState>();

  final TextEditingController _couponController = TextEditingController();

  bool couponEmpty = true;

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
      body: Form(
        key: _fKey,
        child: Padding(
          padding: EdgeInsets.only(left: 24.w, top: 40.h, right: 24.w),
          child: SizedBox(
            child: ListView(
              children: [
                Text('Selected issue', style: kManRope_700_16_001314),
                SizedBox(
                  height: 24.h,
                ),
                Text(
                  widget.issue,
                  style: kManRope_500_16_006D77,
                ),
                SizedBox(
                  height: 40.h,
                ),
                Text('Selected Psychologists', style: kManRope_700_16_001314),
                SizedBox(
                  height: 24.h,
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
                              '12.  12 Yrs. Exp',
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
                  height: 42.h,
                ),
                Text(
                  'Apply Coupon Code',
                  style: kManRope_700_16_001314,
                ),
                SizedBox(
                  height: 24.h,
                ),
                Container(
                  width: 380.w,
                  height: 48.h,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: const Color(0xFFB5BABA))),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 200.w,
                        child: Padding(
                          padding: EdgeInsets.all(2.w),
                          child: TextFormField(
                            onChanged: (val) {
                              if (val.isNotEmpty) {
                                setState(() {
                                  couponEmpty = false;
                                });
                              }
                            },
                            validator: (val) {
                              if (_couponController.text.trim().isEmpty) {
                                return 'This coupon code is invalid or has expired.';
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.emailAddress,
                            controller: _couponController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Coupon',
                              hintStyle: kManRope_400_16_626A6A,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 90.w,
                      ),
                      Container(
                        width: 1.w,
                        height: 58.h,
                        color: const Color(0xFFB5BABA),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Text(
                        'Apply',
                        style: kManRope_500_16_006D77,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 270.h,
                ),
                Center(
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                          'You’ll be connected to the psychologist within 60',
                          style: kManRope_400_14_001314,
                        ),
                        Text(
                          'seconds after the payment',
                          style: kManRope_400_14_001314,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 83.h,
        child: Padding(
          padding: EdgeInsets.only(left: 24.w, right: 24.w, bottom: 24.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '₹230',
                style: kManRope_500_20_006D77,
              ),
              SizedBox(
                height: 56.h,
                width: 200,
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
                    'Proceed to payment',
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
