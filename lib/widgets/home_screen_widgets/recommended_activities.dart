import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:greymatter/constants/colors.dart';
import 'package:greymatter/constants/fonts.dart';
import 'package:greymatter/widgets/shared/buttons/costom_secondary_text_w_icon_button.dart';

import '../../screens/goal_screens/add_activity.dart';

class RecommendedActivities extends StatefulWidget {
  const RecommendedActivities({Key? key}) : super(key: key);

  @override
  State<RecommendedActivities> createState() => _RecommendedVideosState();
}

class _RecommendedVideosState extends State<RecommendedActivities> {
  int _index2 = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
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
                  'Recommended activities',
                  style: kManRope_700_16_001314,
                ),
                SizedBox(height: 8.h),
                Text(
                  'Boost your energy',
                  style: kManRope_400_16_626A64_07,
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h),
          SizedBox(
            width: 1.sw,
            height: 90.h,
            child: PageView.builder(
              controller: PageController(viewportFraction: 0.8),
              itemCount: 3,
              onPageChanged: (v) {
                setState(() {
                  _index2 = v;
                });
              },
              itemBuilder: (_, i) {
                return Container(
                  margin: EdgeInsets.only(right: 16.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage(
                        'assets/images/activitycardbg.png',
                      ),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Nature',
                      style: kManRope_600_18_white,
                    ),
                  ),
                );
              },
            ), /*CarouselSlider.builder(
                itemCount: 3,
                itemBuilder: (BuildContext context, int index, int realIndex) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 300.w,
                        height: 90.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            image: DecorationImage(
                                image: AssetImage(
                              'assets/images/activitycardbg.png',
                            ))),
                        child: Center(
                          child: Text(
                            'Nature',
                            style: kManRope_600_18_white,
                          ),
                        ),
                      ),
                    ],
                  );
                },
                options: CarouselOptions(
                  onPageChanged: (index, reason) {
                    setState(() {
                      _index2 = index;
                    });
                  },
                  viewportFraction: 0.7,
                  aspectRatio: 1.5,
                  reverse: false,
                  enableInfiniteScroll: false,
                ),
              ),*/
          ),
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
                      builder: (context) => const AddActivityScreen()));
                },
                text: 'View All Activities',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AllActivities extends StatefulWidget {
  const AllActivities({Key? key}) : super(key: key);

  @override
  State<AllActivities> createState() => _AllActivitiesState();
}

class _AllActivitiesState extends State<AllActivities> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
