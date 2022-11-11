import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/colors.dart';
import '../../constants/fonts.dart';

class ChatSupportScreen extends StatelessWidget {
  const ChatSupportScreen({Key? key}) : super(key: key);

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
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 40.h, left: 24.w, right: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Today 17/June/2022',
                style: kManRope_400_12_001314,
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Text(
              'Priyanka  11:45 Pm',
              style: kManRope_400_12_001314,
            ),
            SizedBox(
              height: 8.h,
            ),
            Container(
              height: 45.h,
              width: 60.w,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Center(
                child: Text(
                  'Hi',
                  style: kManRope_400_14_626A6A,
                ),
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            Text(
              'Seen',
              style: kManRope_400_12_006D77,
            ),
            SizedBox(
              height: 24.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Priyanka  11:45 Pm',
                      style: kManRope_400_12_001314,
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Container(
                      height: 66.h,
                      width: 280.w,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.only(left: 14.w),
                          child: Text(
                            'Hi Priyanka my name is harish how can I help you?',
                            style: kManRope_400_14_626A6A,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 85.h,
        color: kWhiteBGColor,
        child: Center(
          child: Container(
            height: 56.h,
            width: 380.w,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.w),
              child: Row(
                children: [
                  const SizedBox(
                    width: 215,
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/camera.svg',
                        height: 36.h,
                        width: 26.w,
                      ),
                      SvgPicture.asset(
                        'assets/icons/paperClip.svg',
                        height: 36.h,
                        width: 26.w,
                      ),
                      SvgPicture.asset(
                        'assets/icons/send.svg',
                        height: 36.h,
                        width: 26.w,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
