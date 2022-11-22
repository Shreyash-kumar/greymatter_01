import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greymatter/screens/psychologist_screen/profile_screens/holiday_confirm_screen.dart';
import 'package:greymatter/widgets/app_bar/app_bar.dart';
import 'package:greymatter/widgets/shared/buttons/custom_active_text_button.dart';
import '../../../constants/colors.dart';
import '../../../constants/fonts.dart';

class EditHolidayScreen extends StatefulWidget {
  const EditHolidayScreen({Key? key}) : super(key: key);

  @override
  State<EditHolidayScreen> createState() => _EditHolidayScreenState();
}

class _EditHolidayScreenState extends State<EditHolidayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        appBarText: 'Slots Availability',
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 40.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Selected date & time', style: kManRope_500_16_001314,),
            SizedBox(height: 16.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 56.h,
                  width: 182.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    border: Border.all(color: k006D77),
                  ),
                  child: Padding(
                    padding:  EdgeInsets.only(left: 16.w, right: 16.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Start time', style: kManRope_400_16_626A6A,),
                        SvgPicture.asset('assets/icons/clock.svg', height: 24.h, width: 24.w,),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 56.h,
                  width: 182.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    border: Border.all(color: k006D77),
                  ),
                  child: Padding(
                    padding:  EdgeInsets.only(left: 16.w, right: 16.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Start Date ', style: kManRope_400_16_626A6A,),
                        SvgPicture.asset('assets/icons/calenderunselected.svg', height: 24.h, width: 24.w,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40.h,),
            Text('Selected date & time', style: kManRope_500_16_001314,),
            SizedBox(height: 16.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 56.h,
                  width: 182.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    border: Border.all(color: k006D77),
                  ),
                  child: Padding(
                    padding:  EdgeInsets.only(left: 16.w, right: 16.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('End Date ', style: kManRope_400_16_626A6A,),
                        SvgPicture.asset('assets/icons/calenderunselected.svg', height: 24.h, width: 24.w,),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 56.h,
                  width: 182.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    border: Border.all(color: k006D77),
                  ),
                  child: Padding(
                    padding:  EdgeInsets.only(left: 16.w, right: 16.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('End time', style: kManRope_400_16_626A6A,),
                        SvgPicture.asset('assets/icons/clock.svg', height: 24.h, width: 24.w,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 440.h,),
            CustomActiveTextButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => HolidayConfirmScreen()));
            }, text: 'Confirm Holiday'),
          ],
        ),
      ),
    );
  }
}
