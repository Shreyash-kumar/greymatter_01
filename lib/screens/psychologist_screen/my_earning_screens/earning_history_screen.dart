import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greymatter/constants/colors.dart';
import 'package:greymatter/widgets/app_bar/app_bar.dart';
import '../../../constants/fonts.dart';

class EarningHistoryScreen extends StatefulWidget {
  const EarningHistoryScreen({Key? key}) : super(key: key);

  @override
  State<EarningHistoryScreen> createState() => _EarningHistoryScreenState();
}

class _EarningHistoryScreenState extends State<EarningHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(appBarText: 'History'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40.h,
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 24.w),
            child: Container(
              height: 56.h,
              width: 1.sw,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                border: Border.all(color: k5A72ED.withOpacity(0.24)),
              ),
              child: Center(
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 16.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 297.w,
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search  Order ID',
                            hintStyle: kManRope_400_14_626A6A,
                          ),
                        ),
                      ),
                      SvgPicture.asset('assets/icons/search.svg', height: 24.h, width: 24.w,),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 44.h,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 24.w, ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('History', style: kManRope_500_18_001314,),
                SvgPicture.asset('assets/icons/menu.svg', height: 24.h, width: 24.w,),
              ],
            ),
          ),
          SizedBox(height: 33.h,),
          Container(
            height: 40.h,
            width: 1.sw,
            color: kWhiteBGColor,
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 25.w,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Date', style: kManRope_500_14_263238,),
                  Text('Transaction No', style: kManRope_500_14_263238,),
                  Text('Amount', style: kManRope_500_14_263238,),
                ],
              ),
            ),
          ),
          SizedBox(height: 17.h,),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.h),
              child: ListView.separated(
                  itemBuilder: (ctx, index) {
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('09.12.2022', style: kManRope_400_14_626A6A,),
                            Text('123456789', style: kManRope_400_14_626A6A,),
                            Text('500', style: kManRope_400_14_626A6A,),
                          ],
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (ctx, index) {
                    return SizedBox(height: 27.h);
                  },
                  itemCount: 20),
            ),
          ),
        ],
      ),
    );
  }
}
