import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';
import '../../constants/fonts.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteBGColor,
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        leadingWidth: 40.w,
        backgroundColor: Colors.white,
        title: Text(
          'Change Password',
          style: kManRope_500_16_006D77,
        ),
        titleSpacing: 18.w,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Padding(
            padding: EdgeInsets.all(20.0),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 20,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 40.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Enter Old password',
                style: kManRope_400_14_626A6A,
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                width: 380.w,
                child: const TextField(
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: kB5BABA),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Text(
                'Enter New password',
                style: kManRope_400_14_626A6A,
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                width: 380.w,
                child: const TextField(
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: kB5BABA),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Text(
                'Confirm new password',
                style: kManRope_400_14_626A6A,
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                width: 380.w,
                child: const TextField(
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: kB5BABA),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 340.h,
              ),
              Center(
                child: SizedBox(
                  height: 60.h,
                  width: 168.w,
                  child: MaterialButton(
                    color: k006D77,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(48),
                      side: const BorderSide(color: k006D77),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Save',
                      style: kManRope_400_16_white,
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
