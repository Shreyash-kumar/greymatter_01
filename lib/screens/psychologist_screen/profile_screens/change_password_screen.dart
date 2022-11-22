import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:greymatter/constants/colors.dart';
import 'package:greymatter/constants/fonts.dart';
import 'package:greymatter/widgets/app_bar/white_app_bar.dart';
import '../../profile_screens/reset_email_otp_screen.dart';

class PsychologistChangePasswordScreen extends StatefulWidget {
  const PsychologistChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<PsychologistChangePasswordScreen> createState() => _PsychologistChangePasswordScreenState();
}

class _PsychologistChangePasswordScreenState extends State<PsychologistChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteBGColor,
      appBar: WhiteCustomAppBar(appBarText: 'Change email'),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 40.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Enter Old password ', style: kManRope_400_16_626A6A,),
              SizedBox(height: 8.h,),
              SizedBox(
                width: 1.sw,
                child: TextField(),
              ),
              SizedBox(height: 40.h,),
              Text('Enter New password', style: kManRope_400_16_626A6A,),
              SizedBox(
                width: 1.sw,
                child: TextField(),
              ),
              SizedBox(height: 40.h,),
              Text('Confirm new password', style: kManRope_400_16_626A6A,),
              SizedBox(
                width: 1.sw,
                child: TextField(),
              ),
              SizedBox(height: 360.h,),
              Center(
                child: SizedBox(
                  height: 60.h,
                  width: 168.w,
                  child: MaterialButton(
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => ResetEmailOTPScreen()));
                    },
                    color: k006D77,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(48)),
                    ),
                    child: Center(
                      child: Text('Save', style: kManRope_500_16_white,),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
