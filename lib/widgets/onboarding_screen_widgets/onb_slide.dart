import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:greymatter/constants/fonts.dart';

class OnbSlide extends StatelessWidget {
  final String text;
  final String image;
  const OnbSlide({Key? key, required this.text, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, style: kManRope_700_20,),
        SizedBox(height: 40.h),
        Image.asset(image, width: 380.w,height: 375.h)
      ],
    );
  }
}
