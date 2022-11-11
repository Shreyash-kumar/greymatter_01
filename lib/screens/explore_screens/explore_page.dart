import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greymatter/screens/explore_screens/filters_page.dart';

import '../../constants/colors.dart';
import '../../constants/fonts.dart';
import '../../widgets/shared/buttons/card_buttons/primary_card_button.dart';
import '../../widgets/shared/buttons/card_buttons/secondary_card_button.dart';
import '../book_appointment_screens/psychologists_profile_screen.dart';
import '../book_appointment_screens/schedule_appointment_screen.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kEDF6F9D,
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, top: 54.h, right: 24.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '213 psychologists',
                  style: kManRope_500_16_001314,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const FilterScreen()));
                  },
                  child: Container(
                    color: Colors.transparent,
                    padding: const EdgeInsets.all(10.0),
                    child: SvgPicture.asset(
                      'assets/icons/filter.svg',
                      height: 20.h,
                      width: 18.w,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 35.h,
            ),
            Expanded(
              child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (ctx, index) {
                    return Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 24.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: Colors.white,
                      ),
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
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Image.asset(
                                          'assets/images/userP.png'),
                                    ),
                                    SizedBox(width: 8.w),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                            Text('.',
                                                style: kManRope_700_16_001314),
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
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const PsychologistProfile()));
                                  },
                                  child: SecondaryCardButton(),
                                ),
                              ),
                              SizedBox(width: 8.w),
                              Expanded(
                                  child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ScheduleAppointmentScreen(
                                                      issue: 'issue',
                                                    )));
                                      },
                                      child: PrimaryCardButton())),
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
          ],
        ),
      ),
    );
  }
}
