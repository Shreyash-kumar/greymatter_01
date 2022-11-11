import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:greymatter/screens/instant_booking_screen/confirm_booking_screen.dart';
import 'package:greymatter/widgets/shared/buttons/card_buttons/primary_card_button.dart';
import 'package:greymatter/widgets/shared/buttons/card_buttons/secondary_card_button.dart';

import '../../constants/colors.dart';
import '../../constants/fonts.dart';

class SelectAvailablePsychologists extends StatelessWidget {
  const SelectAvailablePsychologists({Key? key, required this.issue})
      : super(key: key);
  final String issue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteBGColor,
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 10.w,
        centerTitle: false,
        backgroundColor: Colors.white,
        title: Text(
          'Available Psychologists',
          style: kManRope_500_16_006D77,
        ),
        titleSpacing: 50.w,
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
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, top: 40.h, right: 24.h),
        child: ListView.separated(
            itemBuilder: (ctx, index) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Colors.white),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      //width: 280.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 85.w,
                                height: 85.h,
                                clipBehavior: Clip.hardEdge,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset('assets/images/userP.png'),
                              ),
                              SizedBox(width: 8.w),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Raghuram Singh',
                                      style: kManRope_400_16_Black),
                                  //SizedBox(width: 10,),
                                  SizedBox(height: 8.h),
                                  Text('MA in Counselling Psychology',
                                      style: kManRope_400_14_626A6A),
                                  SizedBox(height: 8.h),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: kDFBE13,
                                      ),
                                      SizedBox(width: 4.w),
                                      Text('4.0',
                                          style: kManRope_400_12_001314),
                                      SizedBox(width: 4.w),
                                      Text('.', style: kManRope_700_16_001314),
                                      SizedBox(width: 4.w),
                                      Text('12 Yrs. Exp',
                                          style: kManRope_400_12_001314),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Text('₹270', style: kManRope_400_12_001314),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        const Expanded(child: SecondaryCardButton()),
                        SizedBox(width: 8.w),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ConfirmBooking(
                                            issue: issue,
                                          )));
                            },
                            child: const PrimaryCardButton(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (ctx, index) {
              return SizedBox(height: 40.h);
            },
            itemCount: 10),
      ),
    );
  }
}
