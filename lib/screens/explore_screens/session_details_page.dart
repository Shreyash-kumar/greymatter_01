import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:greymatter/screens/explore_screens/booking_confirmation.dart';
import 'package:greymatter/widgets/shared/buttons/third_party_button/custum_color_material_button.dart';

import '../../constants/colors.dart';
import '../../constants/fonts.dart';
import '../../widgets/instant_booking_widgets/rating_widget.dart';

class SessionDetailsScreen extends StatelessWidget {
  const SessionDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteBGColor,
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 40.w,
        backgroundColor: Colors.white,
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
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 24.w, top: 42.h, right: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 64.h,
                    width: 64.w,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                  SizedBox(
                    width: 18.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Priya Singh',
                        style: kManRope_400_16_001314,
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        'MA in Counselling Psychology',
                        style: kManRope_400_14_626A6A,
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/star.svg',
                            width: 12.w,
                            height: 12.h,
                          ),
                          Text(
                            '12 Yrs. Exp',
                            style: kManRope_400_12_001314,
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    width: 72.w,
                  ),
                ],
              ),
              SizedBox(
                height: 42.h,
              ),
              Row(
                children: [
                  SizedBox(
                    height: 56.h,
                    width: 186.w,
                    child: const MaterialTextButton(
                      text: 'Prescription',
                      color: Colors.white,
                      textColor: k006D77,
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  SizedBox(
                    height: 56.h,
                    width: 186.w,
                    child: const MaterialTextButton006D77(
                      text: 'Download Invoice',
                      color: k006D77,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              Text(
                'Session details ',
                style: kManRope_700_16_001314,
              ),
              SizedBox(
                height: 24.h,
              ),
              Container(
                height: 217.h,
                width: 380.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  border: Border.all(color: Colors.white),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 24.h),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Date',
                            style: kManRope_400_16_626A6A,
                          ),
                          Text(
                            '10, June, 2022',
                            style: kManRope_400_16_626A6A,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '8:00AM-9:00AM',
                            style: kManRope_400_12_626A6A,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'session Type',
                            style: kManRope_400_16_626A6A,
                          ),
                          Text(
                            'Video',
                            style: kManRope_400_16_626A6A,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Issue',
                            style: kManRope_400_16_626A6A,
                          ),
                          Text(
                            'Stress',
                            style: kManRope_400_16_626A6A,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Price',
                            style: kManRope_400_16_626A6A,
                          ),
                          Text(
                            'INR 350',
                            style: kManRope_400_16_626A6A,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 48.h,
              ),
              Text(
                'Rate your experience',
                style: kManRope_700_16_001314,
              ),
              SizedBox(
                height: 24.h,
              ),
              const StarRatingWidget(),
              Spacer(),
              SizedBox(
                height: 56.h,
                width: 380.w,
                child: MaterialButton(
                  color: k006D77,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // <-- Radius
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            const BookingConfirmationScreen()));
                  },
                  child: Text(
                    'Reschedule',
                    style: kManRope_500_16_white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
