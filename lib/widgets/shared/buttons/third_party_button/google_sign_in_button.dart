import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:greymatter/constants/colors.dart';
import 'package:greymatter/constants/fonts.dart';

class CustomGoogleSignInButton extends StatelessWidget {
  const CustomGoogleSignInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20.h),
        decoration: BoxDecoration(
          border: Border.all(color: kB5BABA),
          borderRadius: BorderRadius.circular(16)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/icons/googleicon.png',width: 18.w,height: 18.h),
            SizedBox(width: 8.w),
            Text('Continue with Google', style: kManRope_500_16_626A6A,)
          ],
        ),
      ),
    );
  }
}
