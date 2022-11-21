import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:greymatter/constants/colors.dart';
import 'package:greymatter/constants/fonts.dart';
import 'package:greymatter/screens/psychologist_screen/prescription_screen/edit_precription_view_screen.dart';
import 'package:greymatter/widgets/app_bar/white_app_bar.dart';
import 'package:greymatter/widgets/shared/buttons/custom_active_text_button.dart';

class PrescriptionViewScreen extends StatefulWidget {
  const PrescriptionViewScreen({Key? key}) : super(key: key);

  @override
  State<PrescriptionViewScreen> createState() => _PrescriptionViewScreenState();
}

class _PrescriptionViewScreenState extends State<PrescriptionViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteBGColor,
      appBar: WhiteCustomAppBar(appBarText: 'Prescription View'),
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 27.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Date', style: kManRope_500_16_001314,),
                  Container(
                    height: 45.h,
                    width: 281.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: kE2F2F4,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.w, bottom: 6.h),
                      child: SizedBox(
                        width: 200.w,
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Type here',
                            hintStyle: kManRope_400_14_001314,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Name', style: kManRope_500_16_001314,),
                  Container(
                    height: 45.h,
                    width: 281.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: kE2F2F4,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.w, bottom: 6.h),
                      child: SizedBox(
                        width: 200.w,
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Type here',
                            hintStyle: kManRope_400_14_001314,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Weight', style: kManRope_500_16_001314,),
                  Container(
                    height: 45.h,
                    width: 281.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: kE2F2F4,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.w, bottom: 6.h),
                      child: SizedBox(
                        width: 200.w,
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Type here',
                            hintStyle: kManRope_400_14_001314,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Age', style: kManRope_500_16_001314,),
                  Container(
                    height: 45.h,
                    width: 281.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: kE2F2F4,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.w, bottom: 6.h),
                      child: SizedBox(
                        width: 200.w,
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Type here',
                            hintStyle: kManRope_400_14_001314,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40.h,),
              Text('RP',style: kManRope_500_20_001314,),
              SizedBox(height: 235.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Signature', style: kManRope_500_16_001314,),
                ],
              ),
              SizedBox(height: 34.h,),
              Center(
                child: SizedBox(
                  height: 56.h,
                  width: 168.w,
                  child: CustomActiveTextButton1(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => EditPrescriptionViewScreen()));
                  }, text: 'Edit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
