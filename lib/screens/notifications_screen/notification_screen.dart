import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';
import '../../constants/fonts.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

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
          'Chat support',
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
        actions: [
          Padding(
            padding: const EdgeInsets.all(18),
            child: Text(
              'Mark as read',
              style: kManRope_500_14_006D77,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 40.h),
        child: ListView(
          children: [
            Text(
              'Today',
              style: kManRope_500_16_001314,
            ),
            SizedBox(
              height: 45.h,
            ),
            Row(
              children: [
                Container(
                  height: 36.h,
                  width: 36.w,
                  decoration: const BoxDecoration(
                    color: kD9D9D9,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 16.w,
                ),
                Text(
                  'Your appointment confirmed with pankaj ',
                  style: kManRope_400_14_001314,
                ),
                SizedBox(
                  width: 40.w,
                ),
                Text(
                  '12 m',
                  style: kManRope_400_14_626A6A,
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              children: [
                Container(
                  height: 36.h,
                  width: 36.w,
                  decoration: const BoxDecoration(
                    color: kD9D9D9,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 16.w,
                ),
                Text(
                  'Your appointment confirmed with pankaj ',
                  style: kManRope_400_14_001314,
                ),
                SizedBox(
                  width: 40.w,
                ),
                Text(
                  '12 m',
                  style: kManRope_400_14_626A6A,
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              children: [
                Container(
                  height: 36.h,
                  width: 36.w,
                  decoration: const BoxDecoration(
                    color: kD9D9D9,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 16.w,
                ),
                Text(
                  'Your appointment confirmed with pankaj ',
                  style: kManRope_400_14_001314,
                ),
                SizedBox(
                  width: 40.w,
                ),
                Text(
                  '12 m',
                  style: kManRope_400_14_626A6A,
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              children: [
                Container(
                  height: 36.h,
                  width: 36.w,
                  decoration: const BoxDecoration(
                    color: kD9D9D9,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 16.w,
                ),
                Text(
                  'Your appointment confirmed with pankaj ',
                  style: kManRope_400_14_001314,
                ),
                SizedBox(
                  width: 40.w,
                ),
                Text(
                  '12 m',
                  style: kManRope_400_14_626A6A,
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              children: [
                Container(
                  height: 36.h,
                  width: 36.w,
                  decoration: const BoxDecoration(
                    color: kD9D9D9,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 16.w,
                ),
                Text(
                  'Your appointment confirmed with pankaj ',
                  style: kManRope_400_14_001314,
                ),
                SizedBox(
                  width: 40.w,
                ),
                Text(
                  '12 m',
                  style: kManRope_400_14_626A6A,
                ),
              ],
            ),
            SizedBox(
              height: 50.h,
            ),
            Text(
              'This week',
              style: kManRope_500_16_001314,
            ),
            SizedBox(
              height: 45.h,
            ),
            Row(
              children: [
                Container(
                  height: 36.h,
                  width: 36.w,
                  decoration: const BoxDecoration(
                    color: kD9D9D9,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 16.w,
                ),
                Text(
                  'Your appointment has been canceled \nsuccessfully',
                  style: kManRope_400_14_001314,
                ),
                SizedBox(
                  width: 50.w,
                ),
                Text(
                  '12 m',
                  style: kManRope_400_14_626A6A,
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              children: [
                Container(
                  height: 36.h,
                  width: 36.w,
                  decoration: const BoxDecoration(
                    color: kD9D9D9,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 16.w,
                ),
                Text(
                  'Your appointment confirmed with pankaj ',
                  style: kManRope_400_14_001314,
                ),
                SizedBox(
                  width: 40.w,
                ),
                Text(
                  '12 m',
                  style: kManRope_400_14_626A6A,
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              children: [
                Container(
                  height: 36.h,
                  width: 36.w,
                  decoration: const BoxDecoration(
                    color: kD9D9D9,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 16.w,
                ),
                Text(
                  'Your password has been changed \nsuccessfully',
                  style: kManRope_400_14_001314,
                ),
                SizedBox(
                  width: 65.w,
                ),
                Text(
                  '12 m',
                  style: kManRope_400_14_626A6A,
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              children: [
                Container(
                  height: 36.h,
                  width: 36.w,
                  decoration: const BoxDecoration(
                    color: kD9D9D9,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 16.w,
                ),
                Text(
                  'Your appointment confirmed with pankaj ',
                  style: kManRope_400_14_001314,
                ),
                SizedBox(
                  width: 40.w,
                ),
                Text(
                  '12 m',
                  style: kManRope_400_14_626A6A,
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              children: [
                Container(
                  height: 36.h,
                  width: 36.w,
                  decoration: const BoxDecoration(
                    color: kD9D9D9,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 16.w,
                ),
                Text(
                  'Welcome to cerebral ',
                  style: kManRope_400_14_001314,
                ),
                SizedBox(
                  width: 50.w,
                ),
                Text(
                  '12 m',
                  style: kManRope_400_14_626A6A,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
