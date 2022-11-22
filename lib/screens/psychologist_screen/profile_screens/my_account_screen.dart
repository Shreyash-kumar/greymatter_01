import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:greymatter/constants/colors.dart';
import 'package:greymatter/constants/fonts.dart';
import 'package:greymatter/widgets/app_bar/white_app_bar.dart';
import 'change_email_screen.dart';
import 'change_password_screen.dart';

class PsychologistAccountScreen extends StatefulWidget {
  const PsychologistAccountScreen({Key? key}) : super(key: key);

  @override
  State<PsychologistAccountScreen> createState() =>
      _PsychologistAccountScreenState();
}

class _PsychologistAccountScreenState extends State<PsychologistAccountScreen> {
  void _deleteAccountBottomSheet() {
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(8), topLeft: Radius.circular(8)),
        ),
        context: context,
        builder: (BuildContext context) => const DeleteAccountBottomSheet());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteBGColor,
      appBar: WhiteCustomAppBar(appBarText: 'Account'),
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 40.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PsychologistChangeEmailScreen()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Change email',
                    style: kManRope_500_16_001314,
                  ),
                  SvgPicture.asset(
                    'assets/icons/downArrow.svg',
                    width: 24.w,
                    height: 24.h,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 34.h,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PsychologistChangePasswordScreen()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Change password',
                    style: kManRope_500_16_001314,
                  ),
                  SvgPicture.asset(
                    'assets/icons/downArrow.svg',
                    width: 24.w,
                    height: 24.h,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 34.h,
            ),
            GestureDetector(
              onTap: () {
                _deleteAccountBottomSheet();
              },
              child: Text(
                'Delete Account',
                style: kManRope_500_16_B64949,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DeleteAccountBottomSheet extends StatefulWidget {
  const DeleteAccountBottomSheet({Key? key}) : super(key: key);

  @override
  State<DeleteAccountBottomSheet> createState() =>
      _DeleteAccountBottomSheetState();
}

class _DeleteAccountBottomSheetState extends State<DeleteAccountBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 40.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.w, right: 24.w),
            child: Text(
              '"When you delete your account, all the user generated content is normally erased (although there are small exceptions), while all the log data is preserved – forever." The preserved log data won\'t have your name attached to it',
              style: kManRope_500_16_626A6A,
            ),
          ),
          SizedBox(
            height: 60.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 56.h,
                width: 182.w,
                child: CupertinoButton(
                  child: Text(
                    'Cancel',
                    style: kManRope_500_16_001314,
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
              SizedBox(
                height: 50.h,
                width: 182.w,
                child: CupertinoButton(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  color: kB64949,
                  child: Text(
                    'Delete Account',
                    style: kManRope_500_16_white,
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
