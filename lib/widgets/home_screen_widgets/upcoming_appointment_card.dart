import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:greymatter/constants/colors.dart';
import 'package:greymatter/constants/fonts.dart';

class UpcomingAppointmentCard extends StatelessWidget {
  const UpcomingAppointmentCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            gradient: LinearGradient(
              colors: [k82DDF0.withOpacity(0.56), kFFB1A5..withOpacity(0.56)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Text(
                        'Upcoming Appointments',
                        style: kManRope_700_16_001314,
                      ),
                    ],
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    '10 June 2022, 8:00AM',
                    style: kManRope_400_14_001314,
                  )
                ],
              ),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 48.w,
                        height: 48.h,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.asset('assets/images/userP.png'),
                      ),
                      SizedBox(width: 8.w),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Priyanka singh', style: kManRope_400_14_001314),
                          SizedBox(height: 4.h),
                          Text(
                            'Psychologist',
                            style: kManRope_400_12_626A64_07,
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
        Positioned(
          right: 0,
          bottom: 0,
          top: 0,
          child: SizedBox(
            width: 156.w,
            height: 156.w,
            child: Image.asset(
              'assets/images/ua.png',
            ),
          ),
        ),
      ],
    );
  }
}
