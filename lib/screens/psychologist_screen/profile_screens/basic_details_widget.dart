import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/colors.dart';
import '../../../constants/fonts.dart';
import 'edit_personal_info_screen.dart';

class BasicDetails extends StatefulWidget {
  const BasicDetails({Key? key}) : super(key: key);

  @override
  State<BasicDetails> createState() => _BasicDetailsState();
}

class _BasicDetailsState extends State<BasicDetails> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 36.h,
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
          height: 20.h,
        ),
        Container(
          height: 1.5.h,
          width: 1.sw,
          color: kB5BABA,
        ),
        SizedBox(
          height: 20.h,
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
          height: 20.h,
        ),
        Container(
          height: 1.5.h,
          width: 1.sw,
          color: kB5BABA,
        ),
        SizedBox(
          height: 20.h,
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
          height: 20.h,
        ),
        Container(
          height: 1.5.h,
          width: 1.sw,
          color: kB5BABA,
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          'Designation',
          style: kManRope_400_16_626A6A,
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          'Other',
          style: kManRope_400_16_001314,
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
          height: 1.5.h,
          width: 1.sw,
          color: kB5BABA,
        ),
        SizedBox(
          height: 28.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Add signature', style: kManRope_400_16_626A6A,),
            Image.asset('assets/images/signature.png', height: 48.h,width: 68.w,),
          ],
        ),
        SizedBox(
          height: 24.h,
        ),
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
                    builder: (context) =>  PsychologistEditPersonalInfo()));
              },
              child: Text(
                'Edit',
                style: kManRope_400_16_white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
