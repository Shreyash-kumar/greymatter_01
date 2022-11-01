import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:greymatter/screens/book_appointment_screens/booking_successful_screen.dart';

import '../../constants/colors.dart';
import '../../constants/fonts.dart';

class ConfirmAppointmentBooking extends StatefulWidget {
  const ConfirmAppointmentBooking(
      {Key? key, required this.issue, required this.date})
      : super(key: key);
  final String issue;
  final String date;

  @override
  State<ConfirmAppointmentBooking> createState() =>
      _ConfirmAppointmentBookingState();
}

class _ConfirmAppointmentBookingState extends State<ConfirmAppointmentBooking> {
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
                Text('Selected Psychologists', style: kManRope_700_16_001314),
                SizedBox(
                  height: 24.h,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/profilePic.png',
                      height: 135.h,
                      width: 133.w,
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
                  widget.issue,
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
                  widget.date,
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
                  height: 40.h,
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
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 83.h,
        child: Padding(
          padding: EdgeInsets.only(left: 24.w, right: 24.w),
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
                            builder: (context) =>
                                const BookingSuccessfulScreen()));
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
