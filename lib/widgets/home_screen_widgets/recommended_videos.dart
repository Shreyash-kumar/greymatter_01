import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:greymatter/constants/colors.dart';
import 'package:greymatter/constants/fonts.dart';
import 'package:greymatter/screens/play_videos/all_videos.dart';
import 'package:greymatter/widgets/shared/buttons/costom_secondary_text_w_icon_button.dart';

class RecommendedVideos extends StatefulWidget {
  const RecommendedVideos({Key? key}) : super(key: key);

  @override
  State<RecommendedVideos> createState() => _RecommendedVideosState();
}

class _RecommendedVideosState extends State<RecommendedVideos> {
  int _index2 = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white,
      height: 450.h,
      padding: EdgeInsets.only(top: 20.h),
      width: 1.sw,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Recommended videos',
                  style: kManRope_700_16_001314,
                ),
                SizedBox(height: 8.h),
                Text(
                  'Relax your mind with us',
                  style: kManRope_400_16_626A64_07,
                ),
              ],
            ),
          ),
          SizedBox(
            width: 1.sw,
            height: 250.h,
            child: CarouselSlider.builder(
              itemCount: 3,
              itemBuilder: (BuildContext context, int index, int realIndex) {
                return Container(
                  width: 300.w,
                  height: 140.h,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset('assets/images/nature.png'),
                      SizedBox(height: 8.h),
                      Text(
                        'Nature',
                        style: kManRope_500_16_001314,
                      )
                    ],
                  ),
                );
              },
              options: CarouselOptions(
                  onPageChanged: (index, reason) {
                    setState(() {
                      _index2 = index;
                    });
                  },
                  aspectRatio: 16 / 8,
                  viewportFraction: 0.8,
                  reverse: false,
                  enableInfiniteScroll: false),
            ),
          ),
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
                        color: _index2 == 0 ? k5A72ED : Colors.transparent,
                        borderRadius: BorderRadius.circular(2),
                      ),
                      duration: const Duration(milliseconds: 200),
                    ),
                    AnimatedContainer(
                      width: 24.w,
                      decoration: BoxDecoration(
                        color: _index2 == 1 ? k5A72ED : Colors.transparent,
                        borderRadius: BorderRadius.circular(2),
                      ),
                      duration: const Duration(milliseconds: 200),
                    ),
                    AnimatedContainer(
                      width: 24.w,
                      decoration: BoxDecoration(
                        color: _index2 == 2 ? k5A72ED : Colors.transparent,
                        borderRadius: BorderRadius.circular(2),
                      ),
                      duration: const Duration(milliseconds: 200),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: SizedBox(
              width: 1.sw,
              height: 56.h,
              child: CustomSecondaryButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AllVideos()));
                },
                text: 'View All Videos',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
