import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:greymatter/constants/colors.dart';
import '../../../constants/fonts.dart';
import 'package:greymatter/widgets/app_bar/app_bar.dart';

class WithdrawSuccessful extends StatefulWidget {
  const WithdrawSuccessful({Key? key}) : super(key: key);

  @override
  State<WithdrawSuccessful> createState() => _WithdrawSuccessfulState();
}

class _WithdrawSuccessfulState extends State<WithdrawSuccessful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(appBarText: 'Withdrawal  Success'),
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 50.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Current Balance', style: kManRope_500_16_001314,),
                Text('\$391', style: kManRope_400_36_001314,)
              ],
            ),
            SizedBox(height: 110.h,),
            Image.asset('assets/images/success.gif', height: 216.h,width: 216.w,),
            SizedBox(height: 12.h,),
            Text('Congratulations!', style: kManRope_500_40_4CB15C,),
            SizedBox(height: 24.h,),
            Text('Your withdrawal of \$4000 is successful. It may take 2-3 business day to reflect in your bank account.', style: kManRope_400_16_626A6A,),
            SizedBox(height: 107.h,),
            GestureDetector(
              onTap: (){

              },
              child: Container(
                height: 56.h,
                width: 1.sw,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  border: Border.all(color: k006D77),
                ),
                child: Center(
                  child: Text('Go to Home', style: kManRope_500_16_006D77,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
