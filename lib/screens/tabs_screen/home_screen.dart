import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greymatter/constants/colors.dart';
import 'package:greymatter/constants/fonts.dart';
import 'package:greymatter/screens/all_psychologist_screen/all_psochologist_screen.dart';
import 'package:greymatter/screens/notifications_screen/notification_screen.dart';
import 'package:greymatter/widgets/home_screen_widgets/bookings.dart';
import 'package:greymatter/widgets/home_screen_widgets/grid_card.dart';
import 'package:greymatter/widgets/home_screen_widgets/info.dart';
import 'package:greymatter/widgets/home_screen_widgets/psycologist_slider.dart';
import 'package:greymatter/widgets/home_screen_widgets/recommended_activities.dart';
import 'package:greymatter/widgets/home_screen_widgets/recommended_videos.dart';
import 'package:greymatter/widgets/home_screen_widgets/slider_card.dart';
import 'package:greymatter/widgets/home_screen_widgets/upcoming_appointment_card.dart';
import 'package:greymatter/widgets/shared/buttons/costom_secondary_text_w_icon_button.dart';

import '../book_appointment_screens/book_appointment_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 0;
  int _index2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: kEDF6F9D,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: k5A72ED,
        elevation: 0,
        centerTitle: false,
        title: Text(
          'Good Morning, Pankaj',
          style: kManRope_700_20,
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const NotificationsScreen()));
            },
            child: Container(
              margin: EdgeInsets.only(right: 24.w),
              padding: const EdgeInsets.all(10),
              child: SvgPicture.asset(
                'assets/icons/notification.svg',
                width: 24.w,
                height: 24.h,
              ),
            ),
          ),
        ],
      ),
      body: SizedBox(
        height: 1.sh,
        child: SingleChildScrollView(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              ClipPath(
                clipper: ClipPathClass(),
                child: Container(
                  height: 500.h,
                  width: 1.sw,
                  decoration: const BoxDecoration(
                    color: k5A72ED,
                    //borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100),bottomRight: Radius.circular(100))
                  ),
                ),
              ),
              Container(
                //padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 150.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              hintText:
                                  'Search for health problem, Psychologist',
                              hintStyle: kManRope_400_14_626A6A,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(16.0)),
                              fillColor: Colors.white,
                              filled: true,
                              suffixIconConstraints: BoxConstraints(
                                  maxHeight: 24.h, maxWidth: 34.w),
                              suffixIcon: Padding(
                                padding: EdgeInsets.only(right: 10.w),
                                child:
                                    SvgPicture.asset('assets/icons/search.svg'),
                              ),
                            ),
                          ),
                          SizedBox(height: 36.h),
                          Text('In the Spotlight',
                              style: kManRope_700_20_white),
                          SizedBox(height: 8.h),
                          Text('Explore deals, offers and more',
                              style: kManRope_400_16_CBD3FB),
                        ],
                      ),
                    ),
                    SizedBox(height: 24.h),
                    Container(
                        height: 250.h,
                        child: CarouselSlider.builder(
                          options: CarouselOptions(
                              onPageChanged: (index, reason) {
                                setState(() {
                                  _index = index;
                                });
                              },
                              aspectRatio: 16 / 9,
                              viewportFraction: 0.8,
                              autoPlay: true,
                              reverse: false,
                              enableInfiniteScroll: false),
                          itemBuilder:
                              (BuildContext context, int index, int realIndex) {
                            return SliderCard(index: realIndex);
                          },
                          itemCount: 3,
                        )),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 4.h,
                                decoration: BoxDecoration(
                                  color: k5A72ED.withOpacity(0.15),
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    AnimatedContainer(
                                      width: 24.w,
                                      decoration: BoxDecoration(
                                        color: _index == 0
                                            ? k5A72ED
                                            : Colors.transparent,
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                      duration:
                                          const Duration(milliseconds: 200),
                                    ),
                                    AnimatedContainer(
                                      width: 24.w,
                                      decoration: BoxDecoration(
                                        color: _index == 1
                                            ? k5A72ED
                                            : Colors.transparent,
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                      duration:
                                          const Duration(milliseconds: 200),
                                    ),
                                    AnimatedContainer(
                                      width: 24.w,
                                      decoration: BoxDecoration(
                                        color: _index == 2
                                            ? k5A72ED
                                            : Colors.transparent,
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                      duration:
                                          const Duration(milliseconds: 200),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 40.h),
                          UpcomingAppointmentCard(),
                          SizedBox(height: 40.h),
                          Text(
                            'Choose from Top Specialities',
                            style: kManRope_700_16_001314,
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            'Book confirmed appointments',
                            style: kManRope_400_16_626A64_07,
                          ),
                          SizedBox(height: 24.h),
                          GridView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              padding: const EdgeInsets.all(5),
                              shrinkWrap: true,
                              itemCount: 8,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 4,
                                      childAspectRatio: 1 / 1.5,
                                      mainAxisSpacing: 5.0,
                                      crossAxisSpacing: 5.0),
                              itemBuilder: (ctx, index) {
                                if (index >= 7) {
                                  return GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (ctx) =>
                                                  const BookAppointmentScreen()));
                                    },
                                    child: Container(
                                      color: Colors.transparent,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                            width: 90.w,
                                            height: 85.h,
                                            padding: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(24),
                                                color: k006D77),
                                            child: SvgPicture.asset(
                                                'assets/icons/iosforwordarrow.svg'),
                                          ),
                                          SizedBox(height: 8.h),
                                          Text(
                                            'Show all',
                                            style: kManRope_400_16_626A6A,
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                } else {
                                  return GridCard(index: index);
                                }
                              }),
                          SizedBox(height: 40.h),
                          const Bookings(),
                          SizedBox(height: 40.h),
                          Text(
                            'We are here to help you',
                            style: kManRope_700_16_001314,
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            'Book confirmed appointments',
                            style: kManRope_400_16_626A64_07,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24.h),
                    Container(
                        color: Colors.white,
                        height: 400.h,
                        padding: EdgeInsets.only(top: 20.h),
                        width: 1.sw,
                        child: Column(
                          children: [
                            SizedBox(
                              width: 1.sw,
                              height: 250.h,
                              child: CarouselSlider.builder(
                                itemCount: 3,
                                itemBuilder: (BuildContext context, int index,
                                    int realIndex) {
                                  return PsychologistSlider();
                                },
                                options: CarouselOptions(
                                    onPageChanged: (index, reason) {
                                      setState(() {
                                        _index2 = index;
                                      });
                                    },
                                    aspectRatio: 1 / 2,
                                    viewportFraction: 0.8,
                                    reverse: false,
                                    enableInfiniteScroll: false),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 4.h,
                                  decoration: BoxDecoration(
                                    color: k5A72ED.withOpacity(0.15),
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      AnimatedContainer(
                                        width: 24.w,
                                        decoration: BoxDecoration(
                                          color: _index2 == 0
                                              ? k5A72ED
                                              : Colors.transparent,
                                          borderRadius:
                                              BorderRadius.circular(2),
                                        ),
                                        duration:
                                            const Duration(milliseconds: 200),
                                      ),
                                      AnimatedContainer(
                                        width: 24.w,
                                        decoration: BoxDecoration(
                                          color: _index2 == 1
                                              ? k5A72ED
                                              : Colors.transparent,
                                          borderRadius:
                                              BorderRadius.circular(2),
                                        ),
                                        duration:
                                            const Duration(milliseconds: 200),
                                      ),
                                      AnimatedContainer(
                                        width: 24.w,
                                        decoration: BoxDecoration(
                                          color: _index2 == 2
                                              ? k5A72ED
                                              : Colors.transparent,
                                          borderRadius:
                                              BorderRadius.circular(2),
                                        ),
                                        duration:
                                            const Duration(milliseconds: 200),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 16.h),
                            Container(
                              width: 1.sw,
                              height: 56.h,
                              padding: EdgeInsets.symmetric(horizontal: 24.w),
                              child: CustomSecondaryButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (ctx) =>
                                                AllPsychologistScreen()));
                                  },
                                  text: 'View All Psychologist'),
                            )
                          ],
                        )),
                    const RecommendedVideos(),
                    const RecommendedActivities(),
                    const Info(),
                    SizedBox(height: 80.h),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 40);

    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstPoint = Offset(size.width / 2, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstPoint.dx, firstPoint.dy);

    var secondControlPoint = Offset(size.width - (size.width / 4), size.height);
    var secondPoint = Offset(size.width, size.height - 40);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondPoint.dx, secondPoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
