import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greymatter/constants/colors.dart';
import 'package:greymatter/constants/fonts.dart';
import 'package:greymatter/widgets/shared/buttons/custom_active_text_button.dart';

class AddPersonalDetailsScreen extends StatelessWidget {
  AddPersonalDetailsScreen({Key? key}) : super(key: key);

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteBGColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: SingleChildScrollView(
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
                Text('Almost there', style: kManRope_700_20_001314),
                SizedBox(height: 16.h),
                Text('Please enter below detailes to complete your profile.',
                    style: kManRope_400_14_626A6A),
                SizedBox(height: 50.h),
                Form(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextFormField(
                        validator: (val) {
                          if (_nameController.text.trim().isEmpty) {
                            return 'Please enter a valid email/mobile';
                          } else {
                            return null;
                          }
                        },
                        controller: _nameController,
                        decoration: InputDecoration(
                          labelText: 'Full name',
                          labelStyle: kManRope_400_16_626A6A,
                        ),
                      ),
                      SizedBox(height: 30.h),
                      TextFormField(
                        validator: (val) {
                          if (_emailController.text.trim().isEmpty) {
                            return 'Please enter a valid email';
                          } else {
                            return null;
                          }
                        },
                        controller: _emailController,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: kManRope_400_16_626A6A,
                        ),
                      ),
                      SizedBox(height: 30.h),
                      TextFormField(
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
                          suffixIcon: SvgPicture.asset(
                            'assets/icons/eyeopen.svg',
                            width: 24.w,
                            height: 24.h,
                          ),
                        ),
                      ),
                      SizedBox(height: 30.h),
                      TextFormField(
                        validator: (val) {
                          if (_confirmPasswordController.text.trim().isEmpty) {
                            return 'Please enter a valid password';
                          } else {
                            return null;
                          }
                        },
                        controller: _confirmPasswordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Confirm Password',
                          labelStyle: kManRope_400_16_626A6A,
                          suffixIconConstraints:
                              BoxConstraints(minHeight: 20.w, minWidth: 20.h),
                          suffixIcon: SvgPicture.asset(
                            'assets/icons/eyeopen.svg',
                            width: 24.w,
                            height: 24.h,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 200.h),
                CustomActiveTextButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content:
                              Text('Relax! This part is under construction.')));
                    },
                    text: 'SIGNUP')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
