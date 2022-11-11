import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/colors.dart';
import '../../constants/fonts.dart';
import '../../widgets/shared/buttons/costom_secondary_text_w_icon_button.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  List problemList = [
    'Anxiety',
    'Depression',
    'Relationship Issue',
    'Couple Counseling',
    'Grief & Loss',
    'Sleep Issues',
    'Trauma',
    'Narcissistic Issue',
    'Family Therapy',
    'Body Image',
  ];
  bool showOptions1 = false;
  bool showOptions2 = false;
  bool showOptions3 = false;
  String language = 'English';
  String problem = 'Select your problem';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteBGColor,
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 40.w,
        backgroundColor: Colors.white,
        centerTitle: false,
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
          padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 40.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Specialization',
                style: kManRope_700_16_001314,
              ),
              SizedBox(
                height: 24.h,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    showOptions1 = !showOptions1;
                  });
                },
                child: Container(
                  height: 58.h,
                  width: 380.w,
                  decoration: BoxDecoration(
                    borderRadius: showOptions1
                        ? BorderRadius.vertical(top: Radius.circular(10))
                        : BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          problem,
                          style: kManRope_500_14_626A6A,
                        ),
                        (showOptions1)
                            ? SvgPicture.asset(
                                'assets/icons/circleCancel.svg',
                                height: 24.h,
                                width: 24.h,
                              )
                            : Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.black,
                                size: 30,
                              ),
                      ],
                    ),
                  ),
                ),
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 300),
                curve: Curves.fastOutSlowIn,
                height: showOptions1 ? 400.h : 0,
                width: 425.h,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 24.w),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        for (int i = 0; i < problemList.length; i++)
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                showOptions1 = false;
                                problem = problemList[i];
                              });
                            },
                            child: Container(
                              color: Colors.transparent,
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                problemList[i],
                                style: kManRope_400_12_626A6A,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Text(
                'Slot',
                style: kManRope_700_16_001314,
              ),
              SizedBox(
                height: 24.h,
              ),
              Container(
                height: 60.h,
                width: 380.w,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Select your slot',
                        style: kManRope_500_14_626A6A,
                      ),
                      (showOptions3)
                          ? SvgPicture.asset(
                              'assets/icons/circleCancel.svg',
                              height: 24.h,
                              width: 24.h,
                            )
                          : Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.black,
                              size: 30,
                            ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Text(
                'Language',
                style: kManRope_700_16_001314,
              ),
              SizedBox(
                height: 24.h,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    showOptions2 = !showOptions2;
                  });
                },
                child: Container(
                  height: 60.h,
                  width: 380.w,
                  decoration: BoxDecoration(
                    borderRadius: showOptions2
                        ? BorderRadius.vertical(top: Radius.circular(10))
                        : BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          language,
                          style: kManRope_500_14_626A6A,
                        ),
                        (showOptions2)
                            ? SvgPicture.asset(
                                'assets/icons/circleCancel.svg',
                                height: 24.h,
                                width: 24.h,
                              )
                            : Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.black,
                                size: 30,
                              ),
                      ],
                    ),
                  ),
                ),
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 300),
                curve: Curves.fastOutSlowIn,
                height: showOptions2 ? 100.h : 0,
                width: 425.h,
                decoration: BoxDecoration(
                  borderRadius: showOptions2
                      ? BorderRadius.vertical(bottom: Radius.circular(10))
                      : BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 24.w),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        for (int i = 0; i < ['English', 'Hindi'].length; i++)
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                showOptions2 = false;
                                language = ['English', 'Hindi'][i];
                              });
                            },
                            child: Container(
                              color: Colors.transparent,
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                ['English', 'Hindi'][i],
                                style: kManRope_400_12_626A6A,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Text(
                'Date',
                style: kManRope_700_16_001314,
              ),
              SizedBox(
                height: 24.h,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 60.h,
                  width: 380.w,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Select your date',
                          style: kManRope_500_14_626A6A,
                        ),
                        (showOptions3)
                            ? SvgPicture.asset(
                                'assets/icons/circleCancel.svg',
                                height: 24.h,
                                width: 24.h,
                              )
                            : Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.black,
                                size: 30,
                              ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 56.h,
                      child: AppButtonTransparent(
                        onTap: () {},
                        title: 'Clear All',
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: SizedBox(
                      height: 56.h,
                      child: AppButton(
                        onTap: () {},
                        title: 'Finish',
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
