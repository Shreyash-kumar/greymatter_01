import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greymatter/constants/colors.dart';
import 'package:greymatter/constants/fonts.dart';
import 'package:greymatter/widgets/shared/buttons/custom_active_text_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ResetEmailOTPScreen extends StatefulWidget {
  const ResetEmailOTPScreen({Key? key}) : super(key: key);

  @override
  State<ResetEmailOTPScreen> createState() => _ResetPasswordOTPScreen();
}

class _ResetPasswordOTPScreen extends State<ResetEmailOTPScreen> {
  String otp = '';




  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: kWhiteBGColor,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  padding: const EdgeInsets.all(15),
                  child: SvgPicture.asset('assets/icons/iosbackarrow.svg'),
                ),
              ),
              SizedBox(height: 40.h),
              Text('Enter OTP', style: kManRope_700_20_001314),
              SizedBox(height: 8.h),
              Text('an OTP has been sent to XYZ@gmial.com', style: kManRope_400_14_626A6A),
              SizedBox(height: 16.h),
              SizedBox(height: 40.h),
              PinCodeTextField(
                appContext: context,
                length: 4,
                cursorColor: k006D77,
                keyboardType: TextInputType.number,
                textStyle: kManRope_400_20_Black,
                onChanged: (val) {
                  otp = val;
                },
                pinTheme: PinTheme(
                  inactiveColor: Colors.black,
                  //activeFillColor: kECF0F8,
                  fieldOuterPadding: const EdgeInsets.all(0),
                  //selectedFillColor: kECF0F8,
                  selectedColor: k006D77,
                  borderWidth: 0,
                  fieldWidth: 55.w,
                  fieldHeight: 50.h,
                  //borderRadius: BorderRadius.circular(8),
                  //inactiveFillColor: kECF0F8,
                  activeColor: k006D77,
                  shape: PinCodeFieldShape.underline,
                ),
              ),
              SizedBox(height: 20.h),
              const Spacer(),
              Center(
                child: SizedBox(
                  height: 60.h,
                    width: 168.w,
                    child: CustomActiveTextButton(onPressed: (){}, text: 'Start')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
