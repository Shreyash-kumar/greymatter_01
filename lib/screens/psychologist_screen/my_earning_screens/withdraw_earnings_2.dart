import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greymatter/constants/colors.dart';
import 'package:greymatter/screens/psychologist_screen/my_earning_screens/add_bank.dart';
import 'package:greymatter/screens/psychologist_screen/my_earning_screens/withdraw_successful_screen.dart';
import 'package:greymatter/widgets/app_bar/app_bar.dart';
import 'package:greymatter/widgets/shared/buttons/custom_active_text_button.dart';
import '../../../constants/fonts.dart';


class WithDrawEarningsScreen2 extends StatefulWidget {
  const WithDrawEarningsScreen2({Key? key}) : super(key: key);

  @override
  State<WithDrawEarningsScreen2> createState() => _WithDrawEarningsScreen2State();
}

class _WithDrawEarningsScreen2State extends State<WithDrawEarningsScreen2> {

  void _selectAccountNumbers() {
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(8), topLeft: Radius.circular(8)),
        ),
        context: context,
        builder: (context) => const AccountNumberBottomSheet());
  }

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
            SizedBox(height: 50.h,),
            Center(
              child: Container(
                height: 56.h,
                width: 182.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  color: kWhiteBGColor,
                ),
                child: Center(
                  child: SizedBox(
                    width: 136.w,
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Type amount here',
                        hintStyle: kManRope_500_16_626A6A,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40.h,),
            Text('Credit to', style: kManRope_500_16_001314,),
            SizedBox(height: 8.h,),
            Container(
              height: 48.h,
              width: 1.sw,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: kWhiteBGColor,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('1 2 3 4 5 6 7 8 9 1 2 3 1 4', style: kManRope_500_14_263238,),
                    GestureDetector(
                      onTap: (){
                        _selectAccountNumbers();
                      },
                      child: SvgPicture.asset('assets/icons/downArrow.svg', height: 24.h, width: 24.w,),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 53.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Add more Account', style: kManRope_500_16_006D77,),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => AddBankScreen()));
                  },
                  child: SvgPicture.asset('assets/icons/plus-square.svg', height: 24.h, width: 24.w,),
                ),
              ],
            ),
            SizedBox(height: 291.h,),
            SizedBox(
              height: 56.h,
              width: 1.sw,
              child: CustomActiveTextButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => WithdrawSuccessful()));
                },
                text: 'Withdraw',
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AccountNumberBottomSheet extends StatefulWidget {
  const AccountNumberBottomSheet({Key? key}) : super(key: key);

  @override
  State<AccountNumberBottomSheet> createState() =>
      _AccountNumberBottomSheet();
}

class _AccountNumberBottomSheet extends State<AccountNumberBottomSheet> {
  int _gIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 207.h,
      child: Column(
        children: [
          Container(
            height: 71.h,
            decoration: const BoxDecoration(
              color: k006D77,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8), topRight: Radius.circular(8)),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 46.w),
              child: Center(
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 20.sp,
                      ),
                    ),
                    SizedBox(
                      width: 50.w,
                    ),
                    Text(
                      'Select Designation',
                      style: kManRope_700_16_white,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 136.h,
            padding: const EdgeInsets.only(top: 6.0),
            margin: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            color: CupertinoColors.systemBackground.resolveFrom(context),
            child: SafeArea(
              top: false,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.w),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () => setState(() {
                        _gIndex = 0;
                        Navigator.of(context).pop();
                      }),
                      child: Container(
                        height: 44.h,
                        width: 215.w,
                        decoration: BoxDecoration(
                          borderRadius:
                          const BorderRadius.all(Radius.circular(5)),
                          color: _gIndex == 0 ? k006D77 : Colors.white,
                        ),
                        child: Center(
                            child: Text(
                              '1 2 3 4 5 6 7 8 9 1 2 3 1 4',
                              style: _gIndex == 0
                                  ? kManRope_500_16_white
                                  : kManRope_500_16_626A6A,
                            )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => setState(() {
                        _gIndex = 1;
                        Navigator.of(context).pop();
                      }),
                      child: Container(
                        height: 44.h,
                        width: 215.w,
                        decoration: BoxDecoration(
                          borderRadius:
                          const BorderRadius.all(Radius.circular(5)),
                          color: _gIndex == 1 ? k006D77 : Colors.white,
                        ),
                        child: Center(
                            child: Text(
                              '1 2 3 4 5 6 7 8 9 1 2 3 1 4',
                              style: _gIndex == 1
                                  ? kManRope_500_16_white
                                  : kManRope_500_16_626A6A,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}