import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:greymatter/constants/colors.dart';
import 'package:greymatter/constants/fonts.dart';

class PsychologistSlider extends StatelessWidget {
  const PsychologistSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          //width: 280.h,
          child: Row(
            children: [
              Container(
                width: 85.w,
                height: 85.h,
                clipBehavior: Clip.hardEdge,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Image.asset('assets/images/userP.png'),
              ),
              SizedBox(width: 8.w),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Raghuram Singh', style: kManRope_400_16_Black),
                  SizedBox(height: 8.h),
                  Text('psychologist', style: kManRope_400_14_626A6A),
                  SizedBox(height: 8.h),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.star,
                        color: kDFBE13,
                      ),
                      SizedBox(width: 4.w),
                      Text('4.0', style: kManRope_400_12_001314),
                      SizedBox(width: 4.w),
                      Text('.', style: kManRope_700_16_001314),
                      SizedBox(width: 4.w),
                      Text('12 Yrs. Exp', style: kManRope_400_12_001314),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 16.h),
        Container(
          //width: 280.h,
          child: Row(
            children: [
              Container(
                width: 85.w,
                height: 85.h,
                clipBehavior: Clip.hardEdge,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Image.asset('assets/images/userP.png'),
              ),
              SizedBox(width: 8.w),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Raghuram Singh', style: kManRope_400_16_Black),
                  SizedBox(height: 8.h),
                  Text('psychologist', style: kManRope_400_14_626A6A),
                  SizedBox(height: 8.h),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.star,
                        color: kDFBE13,
                      ),
                      SizedBox(width: 4.w),
                      Text('4.0', style: kManRope_400_12_001314),
                      SizedBox(width: 4.w),
                      Text('.', style: kManRope_700_16_001314),
                      SizedBox(width: 4.w),
                      Text('12 Yrs. Exp', style: kManRope_400_12_001314),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
