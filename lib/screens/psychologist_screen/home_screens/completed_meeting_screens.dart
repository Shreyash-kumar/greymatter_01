import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/colors.dart';
import '../../../constants/fonts.dart';
import '../../../widgets/app_bar/app_bar.dart';

class CompletedMeetingScreen extends StatefulWidget {
  const CompletedMeetingScreen({Key? key}) : super(key: key);

  @override
  State<CompletedMeetingScreen> createState() => _CompletedMeetingScreenState();
}

class _CompletedMeetingScreenState extends State<CompletedMeetingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appBarText: 'Completed'),
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, top: 40.h, right: 24.h),
        child: Expanded(
          child: ListView.separated(
              itemBuilder: (ctx, index) {
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: kWhiteBGColor),
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 16.w, right: 16.w, top: 16.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 48.w,
                                  height: 48.h,
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Image.asset('assets/images/userP.png'),
                                ),
                                SizedBox(width: 8.w),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Priyanka singh',
                                        style: kManRope_400_16_Black),
                                    //SizedBox(width: 10,),
                                    SizedBox(height: 8.h),
                                    SizedBox(
                                      width: 270.w,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Anxiety',
                                              style: kManRope_400_14_626A6A),
                                          Text(
                                            '10 June 2022, 8:00AM',
                                            style: kManRope_400_14_626A6A,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 20.h),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (ctx, index) {
                return SizedBox(height: 40.h);
              },
              itemCount: 10),
        ),
      ),
    );
  }
}
