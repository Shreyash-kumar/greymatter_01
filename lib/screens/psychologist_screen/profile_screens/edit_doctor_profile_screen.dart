import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constants/fonts.dart';
import '../../../widgets/app_bar/white_app_bar.dart';

class PsychologistEditDoctorInfo extends StatefulWidget {
  const PsychologistEditDoctorInfo({Key? key}) : super(key: key);

  @override
  State<PsychologistEditDoctorInfo> createState() => _PsychologistEditDoctorInfoState();
}

class _PsychologistEditDoctorInfoState extends State<PsychologistEditDoctorInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WhiteCustomAppBar(appBarText: 'Account'),
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w , top: 40.h),
        child: SingleChildScrollView(
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
                  child: Image.asset('assets/images/userP.png'),
                  clipBehavior: Clip.hardEdge,
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
                height: 40.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'About',
                    style: kManRope_400_16_626A6A,
                  ),
                  SvgPicture.asset(
                    'assets/icons/edit.svg',
                    height: 24.h,
                    width: 24.h,
                  )
                ],
              ),
              SizedBox(height: 8.h,),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Animesha is a Counselling Psychologist with distinction in both BA and MA. She also holds a Diploma in Counselling Skills from Tata Institute of Social Sciences. She has trained in REBT, CBT and NLP therapy techniques.',
                  hintStyle: kManRope_400_16_001314,
                  hintMaxLines: 4,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
