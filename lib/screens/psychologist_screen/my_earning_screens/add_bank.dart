import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greymatter/constants/colors.dart';
import 'package:greymatter/widgets/app_bar/app_bar.dart';
import '../../../constants/fonts.dart';
import '../../../widgets/shared/buttons/custom_active_text_button.dart';
import 'bank_account_verify_screen.dart';


final List<String> Banks = [
  'Andhra Bank',
  'Axis Bank',
  'Bank Of America',
  'Bank Of America',
  'Bank of India',
  'Bank Of Maharashtra',
  'Canara Bank',
  'Central Bank of India'
];


class AddBankScreen extends StatefulWidget {
  const AddBankScreen({Key? key}) : super(key: key);

  @override
  State<AddBankScreen> createState() => _AddBankScreenState();
}

class _AddBankScreenState extends State<AddBankScreen> {
  void _selectBanks() {
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(8), topLeft: Radius.circular(8)),
        ),
        context: context,
        builder: (BuildContext context) => const BanksBottomSheet());
  }

  void _selectAccountType() {
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(8), topLeft: Radius.circular(8)),
        ),
        context: context,
        builder: (context) => const AccountTypeBottomSheet());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(appBarText: 'Add Bank'),
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 38.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Fill Your Bank Details',
              style: kManRope_500_24_001314,
            ),
            SizedBox(
              height: 46.h,
            ),
            Text(
              'Bank Name*',
              style: kManRope_500_16_001314,
            ),
            SizedBox(
              height: 8.h,
            ),
            Container(
              height: 48.h,
              width: 1.sw,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: kWhiteBGColor,
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 16.w, right: 16.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Select Bank',
                      style: kManRope_400_14_626A6A,
                    ),
                    GestureDetector(
                      onTap: () {
                        _selectBanks();
                      },
                      child: SvgPicture.asset(
                        'assets/icons/downArrow.svg',
                        height: 24.h,
                        width: 24.w,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'IFSC Code *',
              style: kManRope_500_16_001314,
            ),
            SizedBox(
              height: 8.h,
            ),
            Container(
              height: 48.h,
              width: 1.sw,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: kWhiteBGColor,
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 10.h),
                child: SizedBox(
                  width: 1.sw,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Type IFSC Code',
                      hintStyle: kManRope_400_14_626A6A,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Account No*',
              style: kManRope_500_16_001314,
            ),
            SizedBox(
              height: 8.h,
            ),
            Container(
              height: 48.h,
              width: 1.sw,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: kWhiteBGColor,
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 10.h),
                child: SizedBox(
                  width: 1.sw,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Type Account No',
                      hintStyle: kManRope_400_14_626A6A,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Account Holder Name*',
              style: kManRope_500_16_001314,
            ),
            SizedBox(
              height: 8.h,
            ),
            Container(
              height: 48.h,
              width: 1.sw,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: kWhiteBGColor,
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 10.h),
                child: SizedBox(
                  width: 1.sw,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'This field will filled automatically',
                      hintStyle: kManRope_400_14_626A6A,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Branch name*',
              style: kManRope_500_16_001314,
            ),
            SizedBox(
              height: 8.h,
            ),
            Container(
              height: 48.h,
              width: 1.sw,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: kWhiteBGColor,
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 10.h),
                child: SizedBox(
                  width: 1.sw,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'This field will filled automatically',
                      hintStyle: kManRope_400_14_626A6A,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Account type*',
              style: kManRope_500_16_001314,
            ),
            SizedBox(
              height: 8.h,
            ),
            Container(
              height: 48.h,
              width: 1.sw,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: kWhiteBGColor,
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 16.w, right: 16.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Saving',
                      style: kManRope_400_14_626A6A,
                    ),
                    GestureDetector(
                      onTap: () {
                        _selectAccountType();
                      },
                      child: SvgPicture.asset(
                        'assets/icons/downArrow.svg',
                        height: 24.h,
                        width: 24.w,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Center(
              child: SizedBox(
                height: 56.h,
                width: 168.w,
                child: CustomActiveTextButton1(onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => BankVerifyScreen()));
                }, text: 'Save'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BanksBottomSheet extends StatefulWidget {
  const BanksBottomSheet({Key? key}) : super(key: key);

  @override
  State<BanksBottomSheet> createState() =>
      _BanksBottomSheetState();
}

class _BanksBottomSheetState extends State<BanksBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 625.h,
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
                        width: 71.w,
                      ),
                      Text(
                        'Select Bank Name',
                        style: kManRope_700_20_white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 24.w),
              child: Container(
                height: 56.h,
                width: 1.sw,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  border: Border.all(color: k5A72ED.withOpacity(0.24)),
                ),
                child: Center(
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 16.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 297.w,
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search  Order ID',
                              hintStyle: kManRope_400_14_626A6A,
                            ),
                          ),
                        ),
                        SvgPicture.asset('assets/icons/search.svg', height: 24.h, width: 24.w,),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 14.h,),
            Padding(
              padding: EdgeInsets.only(left: 48.w),
              child: SizedBox(
                height: 400.h,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: Banks.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 10.h, top: 10.h),
                      child: Row(
                        children: [
                          Text(
                            Banks[index],
                            style: kManRope_400_16_001314,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AccountTypeBottomSheet extends StatefulWidget {
  const AccountTypeBottomSheet({Key? key}) : super(key: key);

  @override
  State<AccountTypeBottomSheet> createState() =>
      _AccountTypeBottomSheetState();
}

class _AccountTypeBottomSheetState extends State<AccountTypeBottomSheet> {
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
                        width: 101.w,
                        decoration: BoxDecoration(
                          borderRadius:
                          const BorderRadius.all(Radius.circular(5)),
                          color: _gIndex == 0 ? k006D77 : Colors.white,
                        ),
                        child: Center(
                            child: Text(
                              'Current',
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
                        width: 101.w,
                        decoration: BoxDecoration(
                          borderRadius:
                          const BorderRadius.all(Radius.circular(5)),
                          color: _gIndex == 1 ? k006D77 : Colors.white,
                        ),
                        child: Center(
                            child: Text(
                              'Saving',
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