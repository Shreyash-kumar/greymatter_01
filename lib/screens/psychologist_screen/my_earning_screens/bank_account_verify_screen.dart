import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:greymatter/widgets/app_bar/app_bar.dart';
import '../../../constants/fonts.dart';


class BankVerifyScreen extends StatefulWidget {
  const BankVerifyScreen({Key? key}) : super(key: key);

  @override
  State<BankVerifyScreen> createState() => _BankVerifyScreenState();
}

class _BankVerifyScreenState extends State<BankVerifyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(appBarText: 'Withdraw'),
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 50.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Current Balance', style: kManRope_500_16_001314,),
                Text('\$4391', style: kManRope_400_36_001314,)
              ],
            ),
            SizedBox(height: 100.h,),
            Center(
              child: Image.asset('assets/images/account-login-verification 1.png', height: 267.h, width: 380.w,),
            ),
            SizedBox(height: 13.h,),
            Text('Your bank account is verifying by our team.It may take 2-3 business day.',style: kManRope_400_16_001314,),
          ],
        ),
      ),
    );
  }
}
