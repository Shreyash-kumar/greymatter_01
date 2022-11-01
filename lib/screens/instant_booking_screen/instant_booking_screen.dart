import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greymatter/constants/Lists.dart';
import 'package:greymatter/constants/colors.dart';
import 'package:greymatter/constants/fonts.dart';
import 'package:greymatter/screens/instant_booking_screen/select_psychologists.dart';
import 'package:greymatter/widgets/home_screen_widgets/grid_card.dart';
import 'package:greymatter/widgets/instant_booking_widgets/top_verified_specialists.dart';

class InstantBookingScreen extends StatelessWidget {
  const InstantBookingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteBGColor,
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 10.w,
        backgroundColor: Colors.white,
        title: Text(
          'Instant Booking',
          style: kManRope_500_16_006D77,
        ),
        titleSpacing: 50.w,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
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
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                'Help',
                style: kManRope_500_16_006D77,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          //padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              SizedBox(height: 40.h),
              const TopVerifiedSpecialist(),
              SizedBox(height: 24.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Search for health problem, Psychologist',
                        hintStyle: kManRope_400_14_626A6A,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(16.0)),
                        fillColor: Colors.white,
                        filled: true,
                        suffixIconConstraints:
                            BoxConstraints(maxHeight: 24.h, maxWidth: 34.w),
                        suffixIcon: Padding(
                          padding: EdgeInsets.only(right: 10.w),
                          child: SvgPicture.asset('assets/icons/search.svg'),
                        ),
                      ),
                    ),
                    SizedBox(height: 40.h),
                    Text('Choose from Top Psychologists',
                        style: kManRope_700_16_001314),
                    SizedBox(height: 8.h),
                    Text('Book confirmed appointments',
                        style: kManRope_400_16_626A6A),
                    SizedBox(height: 24.h),
                    GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.all(5),
                        shrinkWrap: true,
                        itemCount: 12,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4,
                                childAspectRatio: 1 / 1.5,
                                mainAxisSpacing: 5.0,
                                crossAxisSpacing: 5.0),
                        itemBuilder: (ctx, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          SelectAvailablePsychologists(
                                            issue: titleList[index],
                                          )));
                            },
                            child: GridCard(index: index),
                          );
                        }),
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
