import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:greymatter/screens/profile_screens/edit_personal_info_screen.dart';

import '../../constants/colors.dart';
import '../../constants/fonts.dart';

class PersonalInfoScreen extends StatefulWidget {
  const PersonalInfoScreen({Key? key}) : super(key: key);

  @override
  State<PersonalInfoScreen> createState() => _PersonalInfoScreenState();
}

class _PersonalInfoScreenState extends State<PersonalInfoScreen> {
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
          'Account',
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
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 40.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 106.h,
                  width: 106.w,
                  decoration: const BoxDecoration(
                      color: Color(0xFF006D77), shape: BoxShape.circle),
                ),
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            Text(
              'Name',
              style: kManRope_400_16_626A6A,
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              'Priya Singh',
              style: kManRope_400_16_001314,
            ),
            SizedBox(
              height: 40.h,
            ),
            Text(
              'Date of birth',
              style: kManRope_400_16_626A6A,
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              '25/ 02/1993',
              style: kManRope_400_16_001314,
            ),
            SizedBox(
              height: 40.h,
            ),
            Text(
              'Gender',
              style: kManRope_400_16_626A6A,
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              'Female',
              style: kManRope_400_16_001314,
            ),
            SizedBox(
              height: 40.h,
            ),
            Text(
              'Relationship status',
              style: kManRope_400_16_626A6A,
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              'Single',
              style: kManRope_400_16_001314,
            ),
            SizedBox(
              height: 40.h,
            ),
            Text(
              'Occupation',
              style: kManRope_400_16_626A6A,
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              'Student',
              style: kManRope_400_16_001314,
            ),
            SizedBox(
              height: 105.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 56.h,
                  width: 168.w,
                  child: MaterialButton(
                    color: k006D77,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // <-- Radius
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const EditPersonalInfo()));
                    },
                    child: Text(
                      'Edit',
                      style: kManRope_400_16_white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
