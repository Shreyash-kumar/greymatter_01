import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:greymatter/constants/colors.dart';
import 'package:greymatter/constants/fonts.dart';
import 'package:greymatter/screens/psychologist_screen/request_sent_successful_screen.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteBGColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 108.h,),
            Container(
              height: 818.h,
              width: 1.sh,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24)),
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 24.w, top: 20.h, right: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Please fill the form',style: kManRope_500_24_001314,),
                    SizedBox(height: 8.h,),
                    Text('Hey pankaj you have fill this form once you will done our partner will approach you.', style: kManRope_400_14_626A6A,),
                    SizedBox(height: 33.h,),
                    Text('Full Name',style: kManRope_500_16_001314,),
                    SizedBox(height: 8.h,),
                    Container(
                      height: 48.h,
                      width: 380.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: kWhiteBGColor,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.w, top: 10.h),
                        child: SizedBox(
                          width: 340.w,
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Type name here',
                              hintStyle: kManRope_400_16_263238,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Text('Email',style: kManRope_500_16_001314,),
                    SizedBox(height: 8.h,),
                    Container(
                      height: 48.h,
                      width: 380.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: kWhiteBGColor,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.w, top: 10.h),
                        child: SizedBox(
                          width: 340.w,
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Type email here',
                              hintStyle: kManRope_400_16_263238,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Text('Phone No',style: kManRope_500_16_001314,),
                    SizedBox(height: 8.h,),
                    Container(
                      height: 48.h,
                      width: 380.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: kWhiteBGColor,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.w, top: 10.h),
                        child: SizedBox(
                          width: 340.w,
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Type phone no here',
                              hintStyle: kManRope_400_16_263238,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Text('Alternate No',style: kManRope_500_16_001314,),
                    SizedBox(height: 8.h,),
                    Container(
                      height: 48.h,
                      width: 380.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: kWhiteBGColor,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.w, top: 10.h),
                        child: SizedBox(
                          width: 340.w,
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Type Alternate No here',
                              hintStyle: kManRope_400_16_263238,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Text('Timing',style: kManRope_500_16_001314,),
                    SizedBox(height: 8.h,),
                    Container(
                      height: 48.h,
                      width: 380.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: kWhiteBGColor,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.w, top: 10.h),
                        child: SizedBox(
                          width: 340.w,
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Type Timing here',
                              hintStyle: kManRope_400_16_263238,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Text('Date',style: kManRope_500_16_001314,),
                    SizedBox(height: 8.h,),
                    Container(
                      height: 48.h,
                      width: 380.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: kWhiteBGColor,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.w, top: 10.h),
                        child: SizedBox(
                          width: 340.w,
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Type Date here',
                              hintStyle: kManRope_400_16_263238,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    SizedBox(
                      height: 56.h,
                      width: 380.w,
                      child: MaterialButton(
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => RequestSentSuccessfulScreen()));
                        },
                        child: Center(
                          child: Text('Submit', style: kManRope_500_16_white,),
                        ),
                        color: k006D77,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16))
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
