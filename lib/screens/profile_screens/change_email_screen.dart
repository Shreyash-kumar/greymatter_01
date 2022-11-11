import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:greymatter/screens/profile_screens/reset_email_otp_screen.dart';

import '../../constants/colors.dart';
import '../../constants/fonts.dart';

class ChangeEmailScreen extends StatelessWidget {
  const ChangeEmailScreen({Key? key}) : super(key: key);

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
          'Change Email',
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
        padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 43.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Current Email',
              style: kManRope_400_16_626A6A,
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              'priyasingh344@gmail.com',
              style: kManRope_400_16_001314,
            ),
            SizedBox(
              height: 62.h,
            ),
            Text(
              'Enter new email',
              style: kManRope_400_16_626A6A,
            ),
            SizedBox(width: 380.w, child: TextField()),
            SizedBox(
              height: 56.h,
            ),
            Text(
              'Confirm new email',
              style: kManRope_400_16_626A6A,
            ),
            SizedBox(width: 380.w, child: TextField()),
            SizedBox(
              height: 190.h,
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'You will reacive an otp to your new email',
                    style: kManRope_400_16_626A6A,
                  ),
                  Text(
                    'after clicking next',
                    style: kManRope_400_16_626A6A,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 134.h,
            ),
            Center(
              child: MaterialButton(
                color: k006D77,
                height: 60,
                minWidth: 168,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(48),
                  side: const BorderSide(color: k006D77),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ResetEmailOTPScreen()));
                },
                child: Text(
                  'Next',
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
