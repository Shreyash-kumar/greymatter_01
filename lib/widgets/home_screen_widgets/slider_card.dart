import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:greymatter/constants/fonts.dart';

class SliderCard extends StatelessWidget {
  final int index;

  SliderCard({Key? key, required this.index}) : super(key: key);

  List<String> _bgImageList = [
    'assets/images/sliderbg1.png',
    'assets/images/sliderbg2.png',
    'assets/images/sliderbg3.png',
  ];
  List<String> _charImageList = [
    'assets/images/sliderchar1.png',
    'assets/images/sliderchar2.png',
    'assets/images/sliderchar3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330.w,
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(_bgImageList[index])),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        children: [
          Expanded(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Get Upto',
                style: kManRope_400_14_626A6A,
              ),
              SizedBox(height: 8.h),
              Text(
                '40% OFF',
                style: kManRope_700_24_001314,
              ),
              SizedBox(height: 8.h),
              Text(
                'on your first instant booking',
                style: kManRope_400_14_626A6A,
              ),
              SizedBox(height: 16.h),
              DottedBorder(
                child: Text('WELCOME30', style: kManRope_500_16_006D77,),
                radius: const Radius.circular(16),
                padding: const EdgeInsets.all(16),
                borderType: BorderType.RRect,
              )
            ],
          )),

          Expanded(child: Image.asset(_charImageList[index],width: 95.w,height: 115.h,))
        ],
      ),
    );
  }
}
