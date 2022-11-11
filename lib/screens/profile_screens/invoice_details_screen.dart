import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/colors.dart';
import '../../constants/fonts.dart';

class InvoiceDetails extends StatelessWidget {
  const InvoiceDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteBGColor,
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 40.w,
        centerTitle: false,
        backgroundColor: Colors.white,
        title: Text(
          'Invoice details',
          style: kManRope_500_16_006D77,
        ),
        titleSpacing: 18.w,
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
        padding:
            EdgeInsets.only(left: 24.w, right: 24.w, top: 40.h, bottom: 40.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Order ID',
                  style: kManRope_500_14_001314,
                ),
                SizedBox(
                  width: 12.w,
                ),
                Text(
                  '09810745330001',
                  style: kManRope_400_14_5A898B,
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              '₹400',
              style: kManRope_500_28_001314,
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Successful',
                  style: kManRope_400_14_001314,
                ),
                Text(
                  '10, June, 2022',
                  style: kManRope_400_14_001314,
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 1.h,
              width: 380.w,
              color: kD9D9D9,
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Session Details',
              style: kManRope_500_14_626A6A,
            ),
            SizedBox(
              height: 26.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Psychologist',
                  style: kManRope_500_14_001314,
                ),
                Text(
                  'Priya Singh',
                  style: kManRope_500_14_001314,
                )
              ],
            ),
            SizedBox(
              height: 13.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Issue',
                  style: kManRope_500_14_001314,
                ),
                Text(
                  'Stress',
                  style: kManRope_500_14_001314,
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 1.h,
              width: 380.w,
              color: kD9D9D9,
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Payment Details',
              style: kManRope_500_14_626A6A,
            ),
            SizedBox(
              height: 26.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Base Price',
                  style: kManRope_500_14_001314,
                ),
                Text(
                  'INR 399',
                  style: kManRope_500_14_001314,
                )
              ],
            ),
            SizedBox(
              height: 13.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Tax',
                  style: kManRope_500_14_001314,
                ),
                Text(
                  'INR 100',
                  style: kManRope_500_14_001314,
                )
              ],
            ),
            SizedBox(
              height: 13.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Discount',
                  style: kManRope_500_14_001314,
                ),
                Text(
                  'INR 99',
                  style: kManRope_500_14_001314,
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 1.h,
              width: 380.w,
              color: kD9D9D9,
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: kManRope_500_14_001314,
                ),
                Text(
                  'INR 499',
                  style: kManRope_500_14_001314,
                )
              ],
            ),
            SizedBox(
              height: 130.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: kManRope_500_14_001314,
                ),
                Text(
                  'INR 499',
                  style: kManRope_500_14_001314,
                )
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            SizedBox(
              height: 56.h,
              width: 380.w,
              child: MaterialButton(
                color: k006D77,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(color: k006D77),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/download.svg',
                      width: 18.w,
                      height: 18.h,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      'Download Invoice',
                      style: kManRope_400_16_white,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
