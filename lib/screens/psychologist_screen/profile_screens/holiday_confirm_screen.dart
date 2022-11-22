import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:greymatter/widgets/app_bar/app_bar.dart';
import 'package:greymatter/widgets/shared/buttons/custom_active_text_button.dart';
import '../../../constants/colors.dart';
import '../../../constants/fonts.dart';

class HolidayConfirmScreen extends StatefulWidget {
  const HolidayConfirmScreen({Key? key}) : super(key: key);

  @override
  State<HolidayConfirmScreen> createState() => _HolidayConfirmScreenState();
}

class _HolidayConfirmScreenState extends State<HolidayConfirmScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        appBarText: 'Slots Availability',
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 206.h,),
            Center(child: Image.asset('assets/images/success.gif', height: 160.h, width: 215.w,)),
            SizedBox(height: 40.h,),
            Center(child: Text('Your profile will not show to user for appintment from mon,10,2022 (1:00 am) to fri, 16, 2022(2:00 pm)till.', style: kManRope_400_16_001314,)),
            SizedBox(height: 129.h,),
            CustomActiveTextButton(onPressed: (){}, text: 'Edit'),
            SizedBox(height: 40.h,),
            Container(
              height: 56.h,
              width: 380.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: k006D77),
              ),
              child: Center(
                child: Text('Go to Home',style: kManRope_500_16_006D77,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
