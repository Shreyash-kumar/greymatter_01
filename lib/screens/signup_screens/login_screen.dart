import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greymatter/constants/colors.dart';
import 'package:greymatter/constants/fonts.dart';
import 'package:greymatter/screens/QuestionScreen/question_screen1.dart';
import 'package:greymatter/screens/signup_screens/forgot_password_screens/reset_password_otp_screen.dart';
import 'package:greymatter/screens/signup_screens/sign_up_screens/enter_mobile_screen.dart';
import 'package:greymatter/widgets/shared/buttons/custom_active_text_button.dart';
import 'package:greymatter/widgets/shared/buttons/custom_deactive_text_button.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  bool emailEmpty = true;

  bool passEmpty = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteBGColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(height: 24.h),
                Text('Login', style: kManRope_700_20_001314),
                SizedBox(height: 16.h),
                Text(
                    'Please enter your registered email id or mobile number to continue.',
                    style: kManRope_400_14_626A6A),
                SizedBox(height: 40.h),
                Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextFormField(
                        onChanged: (val) {
                          if (val.isNotEmpty) {
                            setState(() {
                              emailEmpty = false;
                            });
                          }
                        },
                        validator: (val) {
                          if (_emailController.text.trim().isEmpty) {
                            return 'Please enter a valid email/mobile';
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.emailAddress,
                        controller: _emailController,
                        decoration: InputDecoration(
                          labelText: 'Email / Mobile Number',
                          labelStyle: kManRope_400_16_626A6A,
                        ),
                      ),
                      SizedBox(height: 38.h),
                      TextFormField(
                        onChanged: (val) {
                          if (val.isNotEmpty) {
                            setState(() {
                              passEmpty = false;
                            });
                          }
                        },
                        validator: (val) {
                          if (_passwordController.text.trim().isEmpty) {
                            return 'Please enter a valid password';
                          } else {
                            return null;
                          }
                        },
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: kManRope_400_16_626A6A,
                          suffixIconConstraints:
                              BoxConstraints(minHeight: 24.w, minWidth: 24.h),
                          suffixIcon:
                              SvgPicture.asset('assets/icons/eyeopen.svg'),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.h),
                InkWell(
                    onTap: () {
                      if (_emailController.text.trim().isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                            content: Text(
                                'Please enter a valid email / mobile to receive OTP')));
                      } else {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (ctx) => ResetPasswordOTPScreen(),
                            settings: RouteSettings(
                                arguments: _emailController.text)));
                      }
                    },
                    child:
                        Text('Forgot Password', style: kManRope_500_14_BC2445)),
                SizedBox(height: 40.h),
                emailEmpty
                    ? CustomDeactiveTextButton(onPressed: () {}, text: 'Login')
                    : passEmpty
                        ? CustomDeactiveTextButton(
                            onPressed: () {}, text: 'Login')
                        : CustomActiveTextButton(
                            onPressed: () {
                              var _isValid = _formKey.currentState!.validate();
                              if (!_isValid) {
                                return;
                              } else {
                                FocusScope.of(context).unfocus();
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (ctx) => Questions()));
                                /*Navigator.of(context).push(MaterialPageRoute(
                                    builder: (ctx) => WelcomeScreen()));*/
                              }
                            },
                            text: 'Login'),
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
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (ctx) => EnterMobileScreen()));
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'New to cerebral?',
                        style: kManRope_400_14_Black,
                      ),
                      SizedBox(width: 5.w),
                      Text(
                        'SignUp',
                        style: kManRope_500_16_006D77,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
