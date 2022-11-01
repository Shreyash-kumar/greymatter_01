import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:greymatter/constants/colors.dart';
import 'package:greymatter/constants/fonts.dart';

class TopVerifiedSpecialist extends StatefulWidget {
  const TopVerifiedSpecialist({Key? key}) : super(key: key);

  @override
  State<TopVerifiedSpecialist> createState() => _TopVerifiedSpecialistState();
}

class _TopVerifiedSpecialistState extends State<TopVerifiedSpecialist> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 150.h,
            width: 1.sw,
            child: CarouselSlider.builder(
              options: CarouselOptions(
                  onPageChanged: (index, reason) {
                    setState(() {
                      _index = index;
                    });
                  },
                  aspectRatio: 1/2,
                  viewportFraction: 0.9,
                  reverse: false,
                  enableInfiniteScroll: false),
              itemBuilder: (BuildContext context, int index, int realIndex) {
                return Container(
                  margin: EdgeInsets.only(right: 16.w),
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    gradient: LinearGradient(colors: [
                      k5A72ED.withOpacity(0.4),
                      k83C5BE.withOpacity(0.4),
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Connect within 60s',
                            style: kManRope_700_16_001314,
                          ),
                          SizedBox(height: 8.h),
                          Text('Top verified Specialities',
                              style: kManRope_500_14_626A6A),
                          SizedBox(height: 16.h),
                          Text(
                            'Know More',
                            style: kManRope_500_16_006D77,
                          )
                        ],
                      )),
                      Expanded(
                          child: Stack(
                            clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            left: 0,
                            top: 20,
                            child: Container(
                              width: 48.w,
                              height: 48.h,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white),
                              ),
                            ),
                          ), Positioned(
                            left: 20,
                            top: 20,
                            child: Container(
                              width: 48.w,
                              height: 48.h,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white),
                              ),
                            ),
                          ), Positioned(
                            left: 40,
                            top: 20,
                            child: Container(
                              width: 48.w,
                              height: 48.h,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      )),
                    ],
                  ),
                );
              },
              itemCount: 3,
            )),
        SizedBox(height: 16.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 4.h,
              decoration: BoxDecoration(
                color: k5A72ED.withOpacity(0.15),
                borderRadius: BorderRadius.circular(2),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedContainer(
                    width: 24.w,
                    decoration: BoxDecoration(
                      color: _index == 0
                          ? k5A72ED
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    duration:
                    const Duration(milliseconds: 200),
                  ),
                  AnimatedContainer(
                    width: 24.w,
                    decoration: BoxDecoration(
                      color: _index == 1
                          ? k5A72ED
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    duration:
                    const Duration(milliseconds: 200),
                  ),
                  AnimatedContainer(
                    width: 24.w,
                    decoration: BoxDecoration(
                      color: _index == 2
                          ? k5A72ED
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    duration:
                    const Duration(milliseconds: 200),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
