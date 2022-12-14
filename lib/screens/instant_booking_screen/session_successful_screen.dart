import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:greymatter/widgets/instant_booking_widgets/rating_widget.dart';

import '../../constants/colors.dart';
import '../../constants/fonts.dart';
import '../../widgets/shared/buttons/custom_active_text_button.dart';
import '../psychologist_screen/tabs_screen/tabs_screen.dart';

class SessionSuccessful extends StatefulWidget {
  const SessionSuccessful({Key? key}) : super(key: key);

  @override
  State<SessionSuccessful> createState() => _SessionSuccessfulState();
}

class _SessionSuccessfulState extends State<SessionSuccessful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        elevation: 0,
        leadingWidth: 40.w,
        centerTitle: false,
        backgroundColor: Colors.white,
        titleSpacing: 18.w,
        */ /*leading: InkWell(
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
        ),*/ /*
      ),*/
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox.expand(
          child: Padding(
            padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 40.h),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Session successful',
                    style: kManRope_500_16_001314,
                  ),
                  Image.asset(
                    'assets/images/success.gif',
                    height: 150.h,
                    width: 150.w,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 64.h,
                            width: 64.w,
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)),
                            child: Image.asset(
                              'assets/images/userP.png',
                              height: 50.h,
                              width: 50.w,
                            ),
                          ),
                          SizedBox(
                            width: 16.h,
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
                        ],
                      ),
                      SvgPicture.asset(
                        'assets/icons/kebabMenu.svg',
                        width: 24.w,
                        height: 24.h,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 37.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 56.h,
                        width: 186.w,
                        child: MaterialButton(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: const BorderSide(color: k006D77),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Order details',
                            style: kManRope_400_16_006D77,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      SizedBox(
                        height: 56.h,
                        width: 186.w,
                        child: MaterialButton(
                          color: k006D77,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(10), // <-- Radius
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/icons/download.svg',
                                width: 18.w,
                                height: 18.h,
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              Text(
                                'Prescription',
                                style: kManRope_400_16_white,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 42.h,
                      ),
                      Text(
                        'Session Details',
                        style: kManRope_700_16_001314,
                      ),
                      SizedBox(
                        height: 17.h,
                      ),
                      Container(
                        height: 217.h,
                        width: 380.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(28),
                          border: Border.all(color: kEDF6F9D),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 20.w, right: 20.w, top: 24, bottom: 24),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                        height: 40.h,
                      ),
                      Text(
                        'Rate your experience',
                        style: kManRope_700_16_001314,
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      const StarRatingWidget(),
                    ],
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  SizedBox(
                    width: 380.w,
                    child: CustomActiveTextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => TabsScreen()));
                          /*Navigator.of(context).push(MaterialPageRoute(
                                        builder: (ctx) => WelcomeScreen()));*/
                        },
                        text: 'Home'),
                  ),
                  SizedBox(height: 24.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
