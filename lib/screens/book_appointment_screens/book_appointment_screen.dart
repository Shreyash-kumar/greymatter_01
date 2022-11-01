import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greymatter/constants/colors.dart';
import 'package:greymatter/constants/fonts.dart';
import 'package:greymatter/screens/book_appointment_screens/available_psychologists_screen.dart';
import 'package:greymatter/widgets/home_screen_widgets/grid_card.dart';

import '../../constants/Lists.dart';

class BookAppointmentScreen extends StatelessWidget {
  const BookAppointmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteBGColor,
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 40.w,
        backgroundColor: Colors.white,
        title: Text(
          'Book Appointment',
          style: kManRope_500_16_006D77,
        ),
        titleSpacing: 18.w,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: const Icon(
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
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        AvailablePsychologists(
                                            issue: titleList[index])));
                              },
                              child: GridCard(index: index));
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
