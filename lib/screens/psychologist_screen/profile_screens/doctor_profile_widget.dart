import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/colors.dart';
import '../../../constants/fonts.dart';
import 'edit_doctor_profile_screen.dart';

class DoctorProfile extends StatefulWidget {
  const DoctorProfile({Key? key}) : super(key: key);

  @override
  State<DoctorProfile> createState() => _DoctorProfileState();
}

class _DoctorProfileState extends State<DoctorProfile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 36.h,
          ),
          Text('About', style: kManRope_400_16_626A6A,),
          SizedBox(height: 8.h,),
          Text('Animesha is a Counselling Psychologist with distinction in both BA and MA. She also holds a Diploma in Counselling Skills from Tata Institute of Social Sciences. She has trained in REBT, CBT and NLP therapy techniques.', style: kManRope_400_16_001314,),
          SizedBox(
            height: 20.h,
          ),
          Text('About', style: kManRope_400_16_626A6A,),
          SizedBox(
            height: 8.h,
          ),
          Text('Anxiety, Depression, Relationship Issue, Couple Counseling, Grief & Loss, Suiciddal Ideation, Sleep Issues, Trauma, Narcissistic Abuse, Family Therphy, Body Image, Psycho-Somatic Disorders, LGBTQI', style: kManRope_400_16_001314,),
          SizedBox(
            height: 20.h,
          ),
          Text('Language', style: kManRope_400_16_626A6A,),
          SizedBox(
            height: 8.h,
          ),
          Text('English', style: kManRope_400_16_001314,),
          SizedBox(
            height: 20.h,
          ),
          Text('Pricing', style: kManRope_400_16_626A6A,),
          SizedBox(
            height: 8.h,
          ),
          Container(
            height: 39.h,
            width: 1.sw,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: kE2F2F4,
            ),
            child: Padding(
              padding: EdgeInsets.all(8.sp),
              child: Text('Rs. 500', style: kManRope_400_16_001314,),
            ),
          ),
          SizedBox(height: 55.h,),
          Center(
            child: SizedBox(
              height: 56.h,
              width: 168.w,
              child: MaterialButton(
                color: k006D77,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(48), // <-- Radius
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const PsychologistEditDoctorInfo()));
                },
                child: Text(
                  'Edit',
                  style: kManRope_400_16_white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
