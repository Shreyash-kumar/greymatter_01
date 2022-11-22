import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:greymatter/constants/colors.dart';
import 'package:greymatter/constants/fonts.dart';
import 'package:greymatter/screens/psychologist_screen/profile_screens/kyc_confirm_name_screen.dart';
import 'package:greymatter/widgets/shared/buttons/custom_active_text_button.dart';

class KycScreen extends StatefulWidget {
  const KycScreen({Key? key}) : super(key: key);

  @override
  State<KycScreen> createState() => _KycScreenState();
}

class _KycScreenState extends State<KycScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteBGColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: 1.sh,
          child: Column(
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
                    padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 102.h),
                    child: Column(
                      children: [
                        Text('Enter your PAN number to Complete KYC', style: kManRope_500_20_001314,),
                        SizedBox(height: 13.h,),
                        Text('As per Privacy Policy is mandatory for investments in stocks & mutual funds', style: kManRope_400_14_626A6A,),
                        SizedBox(height: 64.h,),
                        Container(
                          height: 62.h,
                          width: 1.sw,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            color: kECF0F8,
                          ),
                          child: Padding(
                            padding:  EdgeInsets.only(left: 16.w),
                            child: Center(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Enter your PAN',
                                  hintStyle: kManRope_400_16_626A6A,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 16.h,),
                        Row(
                          children: [
                           SvgPicture.asset('assets/icons/check mark-rectangle.svg', height: 21.5.h, width: 21.5.w,),
                            SizedBox(width: 8.w,),
                            Text('I authorise Ataraxis to fetch my KYC details for completing KYC.', style: kManRope_400_12_626A6A,)
                          ],
                        ),
                        SizedBox(height: 40.h,),
                        Container(
                          height: 104.h,
                          width: 1.sw,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            color: kECF0F8
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.w),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Your data is protected by \nAtaraxis', style: kManRope_500_16_001314,),
                                  Image.asset('assets/images/security-unlock 1.png', height: 64.h, width: 46.w,),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 223.h,),
                        CustomActiveTextButton(onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => ConfirmName()));
                        }, text: 'Next'),
                      ],
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
