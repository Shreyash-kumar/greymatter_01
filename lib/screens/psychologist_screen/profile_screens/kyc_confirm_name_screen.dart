import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:greymatter/constants/colors.dart';
import 'package:greymatter/constants/fonts.dart';
import 'package:greymatter/screens/psychologist_screen/profile_screens/pan_verfied_screen.dart';
import '../../../widgets/shared/buttons/custom_active_text_button.dart';

class ConfirmName extends StatefulWidget {
  const ConfirmName({Key? key}) : super(key: key);

  @override
  State<ConfirmName> createState() => _ConfirmNameState();
}

class _ConfirmNameState extends State<ConfirmName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteBGColor,
      body: Column(
        children: [
          SizedBox(height: 100.h,),
          Expanded(
            child: Container(
              width: 1.sw,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(24),topLeft: Radius.circular(24)),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 76.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(child: Image.asset('assets/images/company-employees-checking-daily.png', height: 276.h, width: 276.w,)),
                    SizedBox(
                      height: 40.h,
                    ),
                    Text('Confirm your Name', style: kManRope_500_20_001314,),
                    SizedBox(height: 11.h,),
                    Text('Hi John Doe, tap on continue to confirm my name\nand PAN',style: kManRope_500_14_626A6A,),
                    SizedBox(height: 22.h,),
                    Text('ABSHDW4678942', style: kManRope_500_14_006D77,),
                    SizedBox(height: 133.h,),
                    Center(
                      child: CustomActiveTextButton(onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => PANVerified()));
                      }, text: 'Next'),
                    ),
                    SizedBox(height: 16.h,),
                    Container(
                      height: 56.h,
                      width: 380.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(color: k006D77),
                      ),
                      child: Center(
                        child: Text('Edit PAN', style: kManRope_500_16_006D77,),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
