import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greymatter/widgets/app_bar/white_app_bar.dart';
import '../../../constants/colors.dart';
import '../../../constants/fonts.dart';

class PsychologistEditPersonalInfo extends StatefulWidget {
  const PsychologistEditPersonalInfo({Key? key}) : super(key: key);

  @override
  State<PsychologistEditPersonalInfo> createState() => _PsychologistEditPersonalInfoState();
}

class _PsychologistEditPersonalInfoState extends State<PsychologistEditPersonalInfo> {
  DateTime date = DateTime(2016, 10, 26);

  void _showDialog(Widget child) {
    showModalBottomSheet<void>(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(8), topLeft: Radius.circular(8)),
      ),
      context: context,
      builder: (BuildContext context) => SizedBox(
        height: 325.h,
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
                        width: 107.w,
                      ),
                      Text(
                        'Select Date',
                        style: kManRope_700_16_white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 190.h,
              padding: const EdgeInsets.only(top: 6.0),
              // The Bottom margin is provided to align the popup above the system navigation bar.
              margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              // Provide a background color for the popup.
              color: CupertinoColors.systemBackground.resolveFrom(context),
              // Use a SafeArea widget to avoid system overlaps.
              child: SafeArea(
                top: false,
                child: child,
              ),
            ),
            CupertinoButton(
              child: Text(
                'OK',
                style: kManRope_500_16_006D77,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
    );
  }

  void _selectGender() {
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(8), topLeft: Radius.circular(8)),
        ),
        context: context,
        builder: (BuildContext context) => const GenderBottomSheet());
  }

  void _selectDesignation() {
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(8), topLeft: Radius.circular(8)),
        ),
        context: context,
        builder: (context) => const DesignationBottomSheet());
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteBGColor,
      appBar: WhiteCustomAppBar(appBarText: 'Account'),
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 40.h),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 106.h,
                    width: 106.w,
                    decoration: const BoxDecoration(
                        color: Color(0xFF006D77), shape: BoxShape.circle),
                    child: Image.asset('assets/images/userP.png'),
                    clipBehavior: Clip.hardEdge,
                  ),
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Name',
                    style: kManRope_400_16_626A6A,
                  ),
                  SvgPicture.asset(
                    'assets/icons/edit.svg',
                    height: 24.h,
                    width: 24.h,
                  )
                ],
              ),
              SizedBox(
                height: 12.h,
              ),
              SizedBox(
                height: 20,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Priya Singh',
                    hintStyle: kManRope_400_16_001314,
                  ),
                  style: kManRope_400_16_001314,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 1.5.h,
                width: 380,
                color: kB5BABA,
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Date of birth',
                    style: kManRope_400_16_626A6A,
                  ),
                  GestureDetector(
                    onTap: () {
                      _showDialog(
                        CupertinoTheme(
                          data: CupertinoThemeData(
                            textTheme: CupertinoTextThemeData(
                              dateTimePickerTextStyle: kManRope_500_20_006D77,
                            ),
                          ),
                          child: CupertinoDatePicker(
                            initialDateTime: date,
                            mode: CupertinoDatePickerMode.date,
                            use24hFormat: true,
                            onDateTimeChanged: (DateTime newDate) {
                              setState(() => date = newDate);
                            },
                          ),
                        ),
                      );
                    },
                    child: SvgPicture.asset(
                      'assets/icons/downArrow.svg',
                      height: 24,
                      width: 24,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12.h,
              ),
              SizedBox(
                height: 20,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: '25/ 02/1993',
                    hintStyle: kManRope_400_16_001314,
                  ),
                  style: kManRope_400_16_001314,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 1.5.h,
                width: 380,
                color: kB5BABA,
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Gender',
                    style: kManRope_400_16_626A6A,
                  ),
                  GestureDetector(
                    onTap: () {
                      _selectGender();
                    },
                    child: SvgPicture.asset(
                      'assets/icons/downArrow.svg',
                      height: 24,
                      width: 24,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12.h,
              ),
              SizedBox(
                height: 20,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Female',
                    hintStyle: kManRope_400_16_001314,
                  ),
                  style: kManRope_400_16_001314,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 1.5.h,
                width: 380,
                color: kB5BABA,
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Designation',
                    style: kManRope_400_16_626A6A,
                  ),
                  GestureDetector(
                    onTap: () => _selectDesignation(),
                    child: SvgPicture.asset(
                      'assets/icons/downArrow.svg',
                      height: 24,
                      width: 24,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12.h,
              ),
              SizedBox(
                height: 20,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Other',
                    hintStyle: kManRope_400_16_001314,
                  ),
                  style: kManRope_400_16_001314,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 1.5.h,
                width: 380,
                color: kB5BABA,
              ),
              SizedBox(
                height: 32.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Add signature', style: kManRope_400_16_626A6A,),
                  SvgPicture.asset('assets/icons/plus-square.svg', height: 24.h,width: 24.w,),
                ],
              ),
              SizedBox(
                height: 50.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 56.h,
                    width: 168.w,
                    child: MaterialButton(
                      color: k006D77,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(48), // <-- Radius
                      ),
                      onPressed: () {},
                      child: Text(
                        'Save',
                        style: kManRope_400_16_white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GenderBottomSheet extends StatefulWidget {
  const GenderBottomSheet({Key? key}) : super(key: key);

  @override
  State<GenderBottomSheet> createState() => _GenderBottomSheetState();
}

class _GenderBottomSheetState extends State<GenderBottomSheet> {
  int _gIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 325.h,
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
                      width: 107.w,
                    ),
                    Text(
                      'Select Gender',
                      style: kManRope_700_16_white,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 190.h,
            padding: const EdgeInsets.only(top: 6.0),
            margin: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            // Provide a background color for the popup.
            color: CupertinoColors.systemBackground.resolveFrom(context),
            // Use a SafeArea widget to avoid system overlaps.
            child: SafeArea(
              top: false,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.w),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () => setState(() {
                        _gIndex = 0;
                      }),
                      child: Container(
                        height: 44.h,
                        width: 78.w,
                        decoration: BoxDecoration(
                          borderRadius:
                          const BorderRadius.all(Radius.circular(5)),
                          color: _gIndex == 0 ? k006D77 : Colors.white,
                        ),
                        child: Center(
                            child: Text(
                              'Female',
                              style: _gIndex == 0
                                  ? kManRope_500_16_white
                                  : kManRope_500_16_626A6A,
                            )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => setState(() {
                        _gIndex = 1;
                      }),
                      child: Container(
                        height: 44.h,
                        width: 78.w,
                        decoration: BoxDecoration(
                          borderRadius:
                          const BorderRadius.all(Radius.circular(5)),
                          color: _gIndex == 1 ? k006D77 : Colors.white,
                        ),
                        child: Center(
                            child: Text(
                              'Male',
                              style: _gIndex == 1
                                  ? kManRope_500_16_white
                                  : kManRope_500_16_626A6A,
                            )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => setState(() {
                        _gIndex = 2;
                      }),
                      child: Container(
                        height: 44.h,
                        width: 78.w,
                        decoration: BoxDecoration(
                          borderRadius:
                          const BorderRadius.all(Radius.circular(5)),
                          color: _gIndex == 2 ? k006D77 : Colors.white,
                        ),
                        child: Center(
                            child: Text(
                              'Others',
                              style: _gIndex == 2
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
          CupertinoButton(
            child: Text(
              'OK',
              style: kManRope_500_16_006D77,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }
}

class DesignationBottomSheet extends StatefulWidget {
  const DesignationBottomSheet({Key? key}) : super(key: key);

  @override
  State<DesignationBottomSheet> createState() =>
      _DesignationBottomSheetState();
}

class _DesignationBottomSheetState extends State<DesignationBottomSheet> {
  int _gIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 325.h,
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
            height: 190.h,
            padding: const EdgeInsets.only(top: 6.0),
            margin: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            // Provide a background color for the popup.
            color: CupertinoColors.systemBackground.resolveFrom(context),
            // Use a SafeArea widget to avoid system overlaps.
            child: SafeArea(
              top: false,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.w),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () => setState(() {
                        _gIndex = 0;
                      }),
                      child: Container(
                        height: 44.h,
                        width: 123.w,
                        decoration: BoxDecoration(
                          borderRadius:
                          const BorderRadius.all(Radius.circular(5)),
                          color: _gIndex == 0 ? k006D77 : Colors.white,
                        ),
                        child: Center(
                            child: Text(
                              'Counselor',
                              style: _gIndex == 0
                                  ? kManRope_500_16_white
                                  : kManRope_500_16_626A6A,
                            )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => setState(() {
                        _gIndex = 1;
                      }),
                      child: Container(
                        height: 44.h,
                        width: 123.w,
                        decoration: BoxDecoration(
                          borderRadius:
                          const BorderRadius.all(Radius.circular(5)),
                          color: _gIndex == 1 ? k006D77 : Colors.white,
                        ),
                        child: Center(
                            child: Text(
                              'Physiatrist',
                              style: _gIndex == 1
                                  ? kManRope_500_16_white
                                  : kManRope_500_16_626A6A,
                            )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => setState(() {
                        _gIndex = 2;
                      }),
                      child: Container(
                        height: 44.h,
                        width: 123.w,
                        decoration: BoxDecoration(
                          borderRadius:
                          const BorderRadius.all(Radius.circular(5)),
                          color: _gIndex == 2 ? k006D77 : Colors.white,
                        ),
                        child: Center(
                            child: Text(
                              'Psychologist',
                              style: _gIndex == 2
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
          CupertinoButton(
            child: Text(
              'OK',
              style: kManRope_500_16_006D77,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }
}

