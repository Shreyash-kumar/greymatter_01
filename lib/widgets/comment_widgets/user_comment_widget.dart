import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/fonts.dart';
import '../popmenu_widgets/popmenu_widget.dart';

class usercommentWidget extends StatelessWidget {
  const usercommentWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 16, bottom: 16),
      child: Container(
        //width: 280.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 45.w,
                  height: 45.w,
                  clipBehavior: Clip.hardEdge,
                  decoration:
                      BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
                  child: Image.asset('assets/images/userP.png'),
                ),
                SizedBox(width: 8),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Priya singh', style: kManRope_500_16_Black),
                    SizedBox(height: 1.h),
                    Text('2 hours ago', style: kManRope_400_12_626A6A),
                    SizedBox(height: 8.h),
                  ],
                ),
              ],
            ),
            MyPostOptionsDialog(),
            /*GestureDetector(
              onTap: (){
                Navigator.push
              },
              child: SvgPicture.asset(
                'assets/icons/kebabMenu.svg',
                height: 24.h,
                width: 24.w,
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}

class usercommWidget extends StatelessWidget {
  const usercommWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 350.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 45.w,
                      height: 45.w,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                          color: Colors.grey, shape: BoxShape.circle),
                      child: Image.asset('assets/images/userP.png'),
                    ),
                    SizedBox(width: 8.w),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Priya singh', style: kManRope_500_16_Black),
                        SizedBox(height: 1.h),
                        Text('2 hours ago', style: kManRope_400_12_626A6A),
                        SizedBox(height: 8.h),
                      ],
                    ),
                  ],
                ),
                MyPostOptionsDialog(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class usercommentWidget1 extends StatelessWidget {
  const usercommentWidget1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
      child: Container(
        //width: 280.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 45.w,
                  height: 45.w,
                  clipBehavior: Clip.hardEdge,
                  decoration:
                      BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
                  child: Image.asset('assets/images/userP.png'),
                ),
                SizedBox(width: 8.w),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Priya singh', style: kManRope_500_16_Black),
                    SizedBox(height: 1.h),
                    Text('2 hours ago', style: kManRope_400_12_626A6A),
                    SizedBox(height: 8.h),
                  ],
                ),
              ],
            ),
            MyPostOptionsDialog(),
            /*GestureDetector(
              onTap: (){
                Navigator.push
              },
              child: SvgPicture.asset(
                'assets/icons/kebabMenu.svg',
                height: 24.h,
                width: 24.w,
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
