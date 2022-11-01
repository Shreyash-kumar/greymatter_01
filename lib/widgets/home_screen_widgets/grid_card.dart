import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:greymatter/constants/colors.dart';
import 'package:greymatter/constants/fonts.dart';

class GridCard extends StatelessWidget {
  final int index;
  GridCard({Key? key, required this.index}) : super(key: key);

  final List<String> _imgList = [
    'assets/images/anxiety.png',
    'assets/images/stress.png',
    'assets/images/anxiety.png',
    'assets/images/stress.png',
    'assets/images/anxiety.png',
    'assets/images/stress.png',
    'assets/images/anxiety.png','assets/images/stress.png',
    'assets/images/anxiety.png','assets/images/stress.png',
    'assets/images/anxiety.png','assets/images/stress.png',
  ];
  final List<String> _titleList = [
    'Anxiety',
    'Stress',
    'Loneliness',
    'Addiction',
    'Anger',
    'Stress',
    'Anxiety',
    'Stress',
    'Loneliness',
    'Addiction',
    'Anger',
    'Stress',
    'Grief',
  ];


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90.w,
      height: 150.h,
      color: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: kWhiteBGColor,
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: Colors.white)
            ),
            child: Image.asset(_imgList[index], width: 58.w,height: 62.h),
          ),
          SizedBox(height: 8.h),
          Text(_titleList[index], style: kManRope_400_16_626A6A,),
        ],
      ),
    );
  }
}
