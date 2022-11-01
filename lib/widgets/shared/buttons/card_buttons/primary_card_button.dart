import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greymatter/constants/colors.dart';
import 'package:greymatter/constants/fonts.dart';

class PrimaryCardButton extends StatelessWidget {
  const PrimaryCardButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: k006D77
        //border: Border.all(color: k91C9CE),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Select', style: kManRope_500_16_white),
          SizedBox(width: 8.w),
          SvgPicture.asset('assets/icons/polygon.svg')
        ],
      ),
    );
  }
}
