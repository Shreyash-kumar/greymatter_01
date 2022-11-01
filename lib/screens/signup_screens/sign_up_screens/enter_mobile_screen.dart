import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greymatter/constants/colors.dart';
import 'package:greymatter/constants/fonts.dart';
import 'package:greymatter/screens/signup_screens/sign_up_screens/enter_otp_screen.dart';
import 'package:greymatter/widgets/shared/buttons/custom_active_text_button.dart';
import 'package:greymatter/widgets/shared/buttons/custom_deactive_text_button.dart';

class EnterMobileScreen extends StatefulWidget {
  EnterMobileScreen({Key? key}) : super(key: key);

  @override
  State<EnterMobileScreen> createState() => _EnterMobileScreenState();
}

class _EnterMobileScreenState extends State<EnterMobileScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _mobileController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  bool mobileEmpty = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteBGColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
          child: SingleChildScrollView(
            child: SizedBox(
              height: 1.sh - 50.h,
              child: Stack(
                //mainAxisSize: MainAxisSize.max,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          child:
                              SvgPicture.asset('assets/icons/iosbackarrow.svg'),
                        ),
                      ),
                      SizedBox(height: 24.h),
                      Text('SignUp', style: kManRope_700_20_001314),
                      SizedBox(height: 16.h),
                      Text('Please enter your mobile number to continue.',
                          style: kManRope_400_14_626A6A),
                      SizedBox(height: 50.h),
                      Form(
                        key: _formKey,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextFormField(
                              onChanged: (val) {
                                if (val.isNotEmpty) {
                                  setState(() {
                                    mobileEmpty = false;
                                  });
                                }
                                if (_mobileController.text.trim().length ==
                                    10) {
                                  FocusScope.of(context).unfocus();
                                }
                              },
                              keyboardType: TextInputType.number,
                              validator: (val) {
                                if (_mobileController.text.trim().isEmpty) {
                                  return 'Please enter a valid mobile number';
                                } else {
                                  return null;
                                }
                              },
                              controller: _mobileController,
                              decoration: InputDecoration(
                                labelText: 'Mobile Number',
                                labelStyle: kManRope_400_16_626A6A,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40.h),
                      mobileEmpty
                          ? CustomDeactiveTextButton(
                              onPressed: () {}, text: 'Generate OTP')
                          : CustomActiveTextButton(
                              onPressed: () {
                                var _isValid =
                                    _formKey.currentState!.validate();
                                if (!_isValid) {
                                  return;
                                } else {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (ctx) {
                                        return EnterOTPScreen();
                                      },
                                      settings: RouteSettings(
                                          arguments:
                                              '${_mobileController.text}')));
                                }
                              },
                              text: 'Generate OTP'),
                      SizedBox(height: 24.h),
                      /*Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Or', style: kManRope_400_16_Black),
                        ],
                      ),
                      SizedBox(height: 24.h),
                      const CustomGoogleSignInButton(),*/
                      SizedBox(height: 22.h),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Already have an Account?',
                              style: kManRope_400_14_Black,
                            ),
                            SizedBox(width: 5.w),
                            Text(
                              'Login',
                              style: kManRope_500_16_006D77,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 10.h,
                    left: 0,
                    right: 10.w,
                    child: Text(
                      'By creating an account, I accept the Terms & Conditions & Privacy Policy',
                      style: kManRope_400_12_555555,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
