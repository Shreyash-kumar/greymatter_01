import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:greymatter/screens/profile_screens/FAQs_Screen.dart';

import '../../constants/colors.dart';
import '../../constants/fonts.dart';

class HelpAndSupportScreen extends StatelessWidget {
  const HelpAndSupportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteBGColor,
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 40.w,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Text(
          'Help and support',
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
        padding: EdgeInsets.only(top: 30.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/helpAndSupport.png',
              height: 330.h,
            ),
            SizedBox(
              height: 25.h,
            ),
            Text(
              'Tell us how we can help you',
              style: kManRope_700_20_001314,
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              'Our crew of superhero’s are standing\n             by for service and support',
              style: kManRope_400_16_626A6A,
            ),
            SizedBox(
              height: 24.h,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 68.h,
                    width: 68.w,
                    decoration: const BoxDecoration(
                        color: k006D77, shape: BoxShape.circle),
                    child: Center(
                        child: SvgPicture.asset('assets/icons/chat.svg',
                            width: 24.h, height: 24.h)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const FAQsScreen()));
              },
              child: Container(
                height: 84.h,
                width: 380.w,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 16.h, left: 16.w, right: 16.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'FAQs',
                            style: kManRope_700_20_001314,
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            'Find intelligent aswers instantly',
                            style: kManRope_400_16_626A6A,
                          ),
                        ],
                      ),
                      SvgPicture.asset(
                        'assets/icons/rightArrow.svg',
                        height: 12.h,
                        width: 6.w,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Container(
              height: 84.h,
              width: 380.w,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 16.h, left: 16.w, right: 16.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Email',
                          style: kManRope_700_20_001314,
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          'Get solutions beamed to your inbox',
                          style: kManRope_400_16_626A6A,
                        ),
                      ],
                    ),
                    SvgPicture.asset(
                      'assets/icons/rightArrow.svg',
                      height: 12.h,
                      width: 6.w,
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
