import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greymatter/widgets/app_bar/app_bar.dart';
import '../../../constants/colors.dart';
import '../../../constants/fonts.dart';


class UpcomingMeetings extends StatefulWidget {
  const UpcomingMeetings({Key? key}) : super(key: key);

  @override
  State<UpcomingMeetings> createState() => _UpcomingMeetingsState();
}

class _UpcomingMeetingsState extends State<UpcomingMeetings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(appBarText: 'Upcoming'),
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 40.h),
        child: SingleChildScrollView(
          child: SizedBox(
            height: 1.sh,
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Upcoming   (17)', style: kManRope_700_16_001314,),
                    SvgPicture.asset('assets/icons/calender.svg', height: 24.h, width: 24.w,),
                  ],
                ),
                SizedBox(height: 24.h,),
                Text('Today (2)', style: kManRope_500_16_001314,),
                SizedBox(height: 24.h,),
                SizedBox(
                  height: 170.h,
                  child: ListView.separated(
                      itemBuilder: (ctx, index) {
                        return Container(
                          height: 80.h,
                          width: 380.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            color: kWhiteBGColor,
                          ),
                          child: Padding(
                            padding:  EdgeInsets.only(left: 14.w, top: 14.h),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 48.w,
                                          height: 48.h,
                                          decoration: BoxDecoration(
                                              color: Colors.grey,
                                              borderRadius:
                                              BorderRadius.circular(8)),
                                        ),
                                        SizedBox(width: 8.w),
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text('Priyanka singh',
                                                style: kManRope_500_16_001314),
                                            //SizedBox(width: 10,),
                                            SizedBox(height: 8.h),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                    'Anxiety',
                                                    style:
                                                    kManRope_400_14_626A6A),
                                                SizedBox(width: 110.w,),
                                                Text('10 June 2022, 8:00AM', style: kManRope_400_14_626A6A,),
                                              ],
                                            ),
                                            SizedBox(height: 8.h),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (ctx, index) {
                        return SizedBox(height: 8.h);
                      },
                      itemCount: 2),
                ),
                SizedBox(height: 40.h,),
                Text('Tomorrow (3)', style: kManRope_500_16_001314,),
                SizedBox(height: 24.h,),
                SizedBox(
                  height: 270.h,
                  child: ListView.separated(
                      itemBuilder: (ctx, index) {
                        return Container(
                          height: 80.h,
                          width: 380.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            color: kWhiteBGColor,
                          ),
                          child: Padding(
                            padding:  EdgeInsets.only(left: 14.w, top: 14.h),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 48.w,
                                          height: 48.h,
                                          decoration: BoxDecoration(
                                              color: Colors.grey,
                                              borderRadius:
                                              BorderRadius.circular(8)),
                                        ),
                                        SizedBox(width: 8.w),
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text('Priyanka singh',
                                                style: kManRope_500_16_001314),
                                            //SizedBox(width: 10,),
                                            SizedBox(height: 8.h),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                    'Anxiety',
                                                    style:
                                                    kManRope_400_14_626A6A),
                                                SizedBox(width: 110.w,),
                                                Text('10 June 2022, 8:00AM', style: kManRope_400_14_626A6A,),
                                              ],
                                            ),
                                            SizedBox(height: 8.h),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (ctx, index) {
                        return SizedBox(height: 8.h);
                      },
                      itemCount: 3),
                ),
                SizedBox(height: 40.h,),
                Text('This week (12)', style: kManRope_500_16_001314,),
                SizedBox(height: 24.h,),
                SizedBox(
                  height: 270.h,
                  child: ListView.separated(
                      itemBuilder: (ctx, index) {
                        return Container(
                          height: 80.h,
                          width: 380.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            color: kWhiteBGColor,
                          ),
                          child: Padding(
                            padding:  EdgeInsets.only(left: 14.w, top: 14.h),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 48.w,
                                          height: 48.h,
                                          decoration: BoxDecoration(
                                              color: Colors.grey,
                                              borderRadius:
                                              BorderRadius.circular(8)),
                                        ),
                                        SizedBox(width: 8.w),
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text('Priyanka singh',
                                                style: kManRope_500_16_001314),
                                            //SizedBox(width: 10,),
                                            SizedBox(height: 8.h),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                    'Anxiety',
                                                    style:
                                                    kManRope_400_14_626A6A),
                                                SizedBox(width: 110.w,),
                                                Text('10 June 2022, 8:00AM', style: kManRope_400_14_626A6A,),
                                              ],
                                            ),
                                            SizedBox(height: 8.h),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (ctx, index) {
                        return SizedBox(height: 8.h);
                      },
                      itemCount: 12),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
