import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constants/colors.dart';
import '../../../constants/fonts.dart';
import '../../../widgets/app_bar/app_bar.dart';

class CanceledMeetingScreen extends StatefulWidget {
  const CanceledMeetingScreen({Key? key}) : super(key: key);

  @override
  State<CanceledMeetingScreen> createState() => _CanceledMeetingScreenState();
}

class _CanceledMeetingScreenState extends State<CanceledMeetingScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appBarText: 'Canceled'),
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, top: 40.h, right: 24.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Upcoming   (17)',
                  style: kManRope_700_16_001314,
                ),
                PopupMenuButton<int>(
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  icon: SvgPicture.asset('assets/icons/calender.svg', height: 24.h, width: 24.w,),
                  itemBuilder: (context) => [
                    // PopupMenuItem 1
                    PopupMenuItem(
                      value: 1,
                      // row with 2 children
                      child: Text("This month", style: kManRope_400_20_Black,),
                    ),
                    // PopupMenuItem 2
                    PopupMenuItem(
                      value: 2,
                      // row with two children
                      child: Text("This year", style: kManRope_400_20_Black),
                    ),
                    PopupMenuItem(
                      value: 3,
                      // row with two children
                      child: Text("This week", style: kManRope_400_20_Black),
                    ),
                  ],
                  offset: Offset(0, 100),
                  color: Colors.white,
                  elevation: 2,
                  // on selected we show the dialog box
                  onSelected: (value) {

                  },
                ),
              ],
            ),
            SizedBox(
              height: 29.h,
            ),
            Expanded(
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
                            Container(
                              //width: 280.h,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                              style: kManRope_400_16_Black),
                                          //SizedBox(width: 10,),
                                          SizedBox(height: 8.h),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('Anxiety',
                                                  style:
                                                      kManRope_400_14_626A6A),
                                              SizedBox(
                                                width: 110.w,
                                              ),
                                              Text(
                                                '10 June 2022, 8:00AM',
                                                style: kManRope_400_14_626A6A,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
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
          ],
        ),
      ),
    );
  }
}
