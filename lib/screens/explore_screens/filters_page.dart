import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/colors.dart';
import '../../constants/fonts.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteBGColor,
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 40.w,
        backgroundColor: Colors.white,
        title: Text(
          'Filters',
          style: kManRope_500_16_006D77,
        ),
        titleSpacing: 18.w,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Padding(
            padding: EdgeInsets.all(20.0),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 20,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(left: 24.w,right: 24.w, top: 40.h ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Specialization', style: kManRope_700_16_001314,),
              SizedBox(height: 24.h,),
              Container(
                height: 48.h,
                width: 380.w,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 24.w, top: 17.h, right: 12.w, bottom: 12.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Select your problem', style: kManRope_500_14_626A6A,),
                      SvgPicture.asset('assets/icons/circleCancel.svg', height: 24.h, width: 24.h,),
                    ],
                  ),
                ),
              ),
              Container(
                height: 480.h,
                width: 425.h,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(5),bottomLeft: Radius.circular(5)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding:  EdgeInsets.only(left: 24.w, top: 17.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Anxiety', style: kManRope_400_12_626A6A,),
                      SizedBox(height: 34.h,),
                      Text('Depression', style: kManRope_400_12_626A6A,),
                      SizedBox(height: 34.h,),
                      Text('Relationship Issue', style: kManRope_400_12_626A6A,),
                      SizedBox(height: 34.h,),
                      Text('Couple Counseling', style: kManRope_400_12_626A6A,),
                      SizedBox(height: 34.h,),
                      Text('Grief & Loss', style: kManRope_400_12_626A6A,),
                      SizedBox(height: 34.h,),
                      Text('Sleep Issues', style: kManRope_400_12_626A6A,),
                      SizedBox(height: 34.h,),
                      Text('Trauma', style: kManRope_400_12_626A6A,),
                      SizedBox(height: 34.h,),
                      Text('Family Therphy', style: kManRope_400_12_626A6A,),
                      SizedBox(height: 34.h,),
                      Text('Body Image', style: kManRope_400_12_626A6A,),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40.h,),
              Text('Slot', style: kManRope_700_16_001314,),
              SizedBox(height: 24.h,),
              Container(
                height: 48.h,
                width: 380.w,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 24.w, top: 17.h, right: 12.w, bottom: 12.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Select your problem', style: kManRope_500_14_626A6A,),
                      SvgPicture.asset('assets/icons/circleCancel.svg', height: 24.h, width: 24.h,),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40.h,),
              Text('Language', style: kManRope_700_16_001314,),
              SizedBox(height: 24.h,),
              Container(
                height: 120.h,
                width: 380.w,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 24.w, top: 17.h, right: 12.w, bottom: 12.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('English', style: kManRope_500_14_626A6A,),
                      SizedBox(height: 34.h,),
                      Text('Hindi', style: kManRope_500_14_626A6A,),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24.h,),
            ],
          ),
        ),
      ),
    );
  }
}
