import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greymatter/screens/psychologist_screen/my_earning_screens/add_bank.dart';
import 'package:greymatter/widgets/app_bar/app_bar.dart';
import '../../../constants/fonts.dart';


class WithDrawEarningsScreen extends StatefulWidget {
  const WithDrawEarningsScreen({Key? key}) : super(key: key);

  @override
  State<WithDrawEarningsScreen> createState() => _WithDrawEarningsScreenState();
}

class _WithDrawEarningsScreenState extends State<WithDrawEarningsScreen> {
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
              child: Image.asset('assets/images/manage-bank-account.png', height: 252.h, width: 378.w,),
            ),
            SizedBox(height: 13.h,),
            Text('You don’t have add any bank account to withdraw money.',style: kManRope_400_14_626A6A,),
            SizedBox(height: 37.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Add an Account', style: kManRope_500_16_006D77,),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => AddBankScreen()));
                  },
                  child: SvgPicture.asset('assets/icons/plus-square.svg', height: 24.h, width: 24.w,),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
