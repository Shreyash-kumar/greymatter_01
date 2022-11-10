import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:greymatter/screens/psychologist_screen/profile_screens/basic_details_widget.dart';
import 'package:greymatter/widgets/app_bar/app_bar.dart';
import '../../../constants/colors.dart';
import '../../../constants/fonts.dart';
import 'doctor_profile_widget.dart';

class PsychologistPersonalInfoScreen extends StatefulWidget {
  const PsychologistPersonalInfoScreen({Key? key}) : super(key: key);

  @override
  State<PsychologistPersonalInfoScreen> createState() =>
      _PsychologistPersonalInfoScreenState();
}

class _PsychologistPersonalInfoScreenState
    extends State<PsychologistPersonalInfoScreen> {

  bool flag =  true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteBGColor,
      appBar: CustomAppBar(
        appBarText: 'Account',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 40.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 106.h,
                  width: 106.w,
                  decoration: const BoxDecoration(
                      color: Color(0xFF006D77), shape: BoxShape.circle),
                ),
              ),
              SizedBox(
                height: 9.h,
              ),
              Center(
                child: Text(
                  'Change Photo',
                  style: kManRope_500_16_404040,
                ),
              ),
              SizedBox(
                height: 34.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        flag = true ;
                      });
                    },
                    child: Column(
                      children: [
                        Text('Basic Details', style: flag ? kManRope_700_16_001314 : kManRope_400_16_626A6A,),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          height: 1.5.h,
                          width: 100.w,
                          color: flag ? k006D77: kWhiteBGColor,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 36.w,
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        flag = false;
                      });
                    },
                    child: Column(
                      children: [
                        Text('Doctor Profile', style:flag ? kManRope_400_16_626A6A : kManRope_700_16_001314,),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          height: 1.5.h,
                          width: 100.w,
                          color: flag ? kWhiteBGColor : k006D77,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              flag ? BasicDetails() : DoctorProfile(),
            ],
          ),
        ),
      ),
    );
  }
}
