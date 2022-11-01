import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greymatter/constants/colors.dart';
import 'package:greymatter/constants/fonts.dart';
import 'package:greymatter/screens/signup_screens/login_screen.dart';
import 'package:greymatter/widgets/shared/buttons/custom_active_text_button.dart';

class EnterNewPasswordScreen extends StatelessWidget {
  EnterNewPasswordScreen({Key? key}) : super(key: key);

  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final number = ModalRoute.of(context)!.settings.arguments as String;
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kWhiteBGColor,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
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
            Text('Create Password', style: kManRope_700_20_001314),
            SizedBox(height: 16.h),
            Text('Enter New Password for \n$number',
                style: kManRope_400_14_626A6A),
            SizedBox(height: 40.h),
            Form(
              key: _formKey,
                child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
            )),
            const Spacer(),
            CustomActiveTextButton(onPressed: () {
              FocusScope.of(context).unfocus();
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Password updated!')));
            }, text: 'Save'),
            SizedBox(height: 20.h)
          ],
        ),
      ),
    ));
  }
}
