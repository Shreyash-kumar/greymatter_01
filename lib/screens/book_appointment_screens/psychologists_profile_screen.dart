import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greymatter/constants/colors.dart';

import '../../constants/fonts.dart';

class PsychologistProfile extends StatelessWidget {
  const PsychologistProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(28.0),
                  topRight: Radius.circular(28.0),
                ),
              ),
              height: 276.h,
              width: 428.w,
            ),
            Container(
              margin: EdgeInsets.only(top: 246.h),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(28.0),
                  topRight: Radius.circular(28.0),
                ),
              ),
              height: 1102.h,
              width: 428.w,
              child: Padding(
                padding: EdgeInsets.only(left: 24.w, top: 40.h, right: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Animesha Jain',
                      style: kManRope_500_20_001314,
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      'Psychiatrist',
                      style: kManRope_400_16_626A6A,
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 68.h,
                          width: 120.w,
                          decoration: const BoxDecoration(
                            color: kD4EAEB,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/profile.svg',
                                      height: 20.h,
                                      width: 20.w,
                                    ),
                                    SizedBox(
                                      width: 13.w,
                                    ),
                                    Text(
                                      '599',
                                      style: kManRope_500_16_626A6A,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 8.h,
                                ),
                                Text(
                                  'CLIENTS',
                                  style: kManRope_400_14_626A6A,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          height: 68.h,
                          width: 120.w,
                          decoration: const BoxDecoration(
                            color: kD4EAEB,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/tickCircle.svg',
                                      height: 20.h,
                                      width: 20.w,
                                    ),
                                    SizedBox(
                                      width: 13.w,
                                    ),
                                    Text(
                                      '2 Years',
                                      style: kManRope_500_16_626A6A,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 8.h,
                                ),
                                Text(
                                  'EXPERIENCE',
                                  style: kManRope_400_14_626A6A,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          height: 68.h,
                          width: 120.w,
                          decoration: const BoxDecoration(
                            color: kD4EAEB,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/starOutline.svg',
                                      height: 20.h,
                                      width: 20.w,
                                    ),
                                    SizedBox(
                                      width: 13.w,
                                    ),
                                    Text(
                                      '5.0',
                                      style: kManRope_500_16_626A6A,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 8.h,
                                ),
                                Text(
                                  'RATING',
                                  style: kManRope_400_14_626A6A,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Text(
                      'About',
                      style: kManRope_700_16_001314,
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Text(
                      'Animesha is a Counselling Psychologist with distinction in both BA and MA. She also holds a Diploma in Counselling Skills from Tata Institute of Social Sciences. She has trained in REBT, CBT and NLP therapy techniques. When providing therapy, she uses an eclectic approach to understand what suits her clients the best. She believes that a blend of different approaches helps her in establishing a good therapeutic relationship with her clients while further facilitating their effective healing process. She primarily uses the Client Centered approach, Cognitive behavioral therapy, and Narrative Therapy based on the concerns of the clients.',
                      style: kManRope_400_14_626A6A,
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Text(
                      'Specialization',
                      style: kManRope_700_16_001314,
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Text(
                      'Anxiety, Depression, Relationship Issue, Couple Counseling, Grief & Loss, Suiciddal Ideation, Sleep Issues, Trauma, Narcissistic Abuse, Family Therphy, Body Image, Psycho-Somatic Disorders, LGBTQI',
                      style: kManRope_400_14_626A6A,
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Text(
                      'Availability',
                      style: kManRope_700_16_001314,
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Text(
                      'Monday                                                                   10:00 AM  08:00 PM',
                      style: kManRope_400_16_006D77,
                    ),
                    Text(
                      'Tuesday                                                                  10:00 AM  08:00 PM',
                      style: kManRope_400_16_006D77,
                    ),
                    Text(
                      'Wednesday                                                           10:00 AM  08:00 PM',
                      style: kManRope_400_16_006D77,
                    ),
                    Text(
                      'Thursday                                                                 10:00 AM  08:00 PM',
                      style: kManRope_400_16_006D77,
                    ),
                    Text(
                      'Friday                                                                         10:00 AM  08:00 PM',
                      style: kManRope_400_16_006D77,
                    ),
                    Text(
                      'Saturday                                                                  10:00 AM  08:00 PM',
                      style: kManRope_400_16_006D77,
                    ),
                    Text(
                      'Sunday                                                                     10:00 AM  08:00 PM',
                      style: kManRope_400_16_006D77,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 83.h,
        child: Padding(
          padding: EdgeInsets.only(left: 24.w, right: 24.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '₹599',
                style: kManRope_500_20_006D77,
              ),
              SizedBox(
                height: 56.h,
                width: 180.w,
                child: MaterialButton(
                  color: k006D77,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // <-- Radius
                  ),
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => const BookingSuccessful()));
                  },
                  child: Text(
                    'Book session',
                    style: kManRope_400_16_white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
