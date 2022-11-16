import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greymatter/constants/colors.dart';
import '../../../constants/fonts.dart';
import '../../../widgets/app_bar/white_app_bar.dart';

class PsychologistEditDoctorInfo extends StatefulWidget {
  const PsychologistEditDoctorInfo({Key? key}) : super(key: key);

  @override
  State<PsychologistEditDoctorInfo> createState() => _PsychologistEditDoctorInfoState();
}

final List<String> data = [
  'Anxiety',
  'Relationship Issue',
  'Suicidal Ideation',
  'Grief & Loss',
  'Anxiety',
  'Depression'
];

final List<String> languages = [
  'Hindi',
  'English',
  'Tamil',
  'Sanskrit',
  'Marathi',
  'Punjabi',
];

class _PsychologistEditDoctorInfoState extends State<PsychologistEditDoctorInfo> {

  void _selectSpecialization() {
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(8), topLeft: Radius.circular(8)),
        ),
        context: context,
        builder: (BuildContext context) => const SpecializationBottomSheet());
  }

  void _selectLanguage() {
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(8), topLeft: Radius.circular(8)),
        ),
        context: context,
        builder: (BuildContext context) => const LanguageBottomSheet());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WhiteCustomAppBar(appBarText: 'Account'),
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w , top: 40.h),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 106.h,
                  width: 106.w,
                  decoration: const BoxDecoration(
                      color: Color(0xFF006D77), shape: BoxShape.circle),
                  child: Image.asset('assets/images/userP.png'),
                  clipBehavior: Clip.hardEdge,
                ),
              ),
              SizedBox(
                height: 9.h,
              ),
              Center(
                child: Text(
                  'Change Photo',
                  style: kManRope_500_16_404040,
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'About',
                    style: kManRope_400_16_626A6A,
                  ),
                  SvgPicture.asset(
                    'assets/icons/edit.svg',
                    height: 24.h,
                    width: 24.h,
                  )
                ],
              ),
              SizedBox(height: 8.h,),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Animesha is a Counselling Psychologist with distinction in both BA and MA. She also holds a Diploma in Counselling Skills from Tata Institute of Social Sciences. She has trained in REBT, CBT and NLP therapy techniques.',
                  hintStyle: kManRope_400_16_001314,
                  hintMaxLines: 4,
                ),
              ),
              SizedBox(height: 20.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total experience',
                    style: kManRope_400_16_626A6A,
                  ),
                  SvgPicture.asset(
                    'assets/icons/edit.svg',
                    height: 24.h,
                    width: 24.h,
                  )
                ],
              ),
              SizedBox(height: 8.h,),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Type here',
                  hintStyle: kManRope_400_16_001314,
                ),
              ),
              SizedBox(height: 20.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Specialization',
                    style: kManRope_400_16_626A6A,
                  ),
                  GestureDetector(
                    onTap: (){
                      _selectSpecialization();
                    },
                    child: SvgPicture.asset(
                      'assets/icons/downArrow.svg',
                      height: 24,
                      width: 24,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.h,),
              SizedBox(
                height: 140.h,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: data.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: MediaQuery.of(context).size.width /
                        (MediaQuery.of(context).size.height / 11),
                      crossAxisCount:  2,
                    mainAxisSpacing: 8.h,
                    crossAxisSpacing: 8.w,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 40.h,
                      decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
                        child: Row(
                          children: [
                            Text(data[index], style: kManRope_400_16_001314,),
                            SizedBox(width: 8.w,),
                            SvgPicture.asset('assets/icons/close.svg', height: 12.h,width: 12.w,)
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20.h,),
              Container(
                height: 1.5.h,
                width: 1.sw,
                color: kB5BABA,
              ),
              SizedBox(height: 20.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Language',
                    style: kManRope_400_16_626A6A,
                  ),
                  GestureDetector(
                    onTap: (){
                      _selectLanguage();
                    },
                    child: SvgPicture.asset(
                      'assets/icons/downArrow.svg',
                      height: 24,
                      width: 24,
                    ),
                  ),
                ],
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'English',
                  hintStyle: kManRope_400_16_001314,
                ),
              ),
              SizedBox(height: 20.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Pricing',
                    style: kManRope_400_16_626A6A,
                  ),
                  SvgPicture.asset(
                    'assets/icons/downArrow.svg',
                    height: 24,
                    width: 24,
                  ),
                ],
              ),
              Container(
                height: 40.h,
                decoration: BoxDecoration(
                  color: kE2F2F4,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 10.w),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Type here price',
                        hintStyle: kManRope_400_16_001314,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40.h,),
              Center(
                child: SizedBox(
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
              ),
              SizedBox(height: 50.h,),
            ],
          ),
        ),
      ),
    );
  }
}

class SpecializationBottomSheet extends StatefulWidget {
  const SpecializationBottomSheet({Key? key}) : super(key: key);

  @override
  State<SpecializationBottomSheet> createState() => _SpecializationBottomSheetState();
}

class _SpecializationBottomSheetState extends State<SpecializationBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 428.h,
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
                      'Select Specialization',
                      style: kManRope_700_16_white,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 140.w),
            child: SizedBox(
              height: 280.h,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: data.length,
                  itemBuilder: (context, index){
                  return Padding(
                    padding:  EdgeInsets.only(bottom: 8.h, top: 8.h),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/icons/box.svg', height: 24.h, width: 24.w,),
                        SizedBox(width: 15.w,),
                        Text(data[index], style: kManRope_400_16_626A6A,),
                      ],
                    ),
                  );
               },
              ),
            ),
          ),
          SizedBox(
            height: 56.h,
            width: 168.w,
            child: CupertinoButton(
              borderRadius: BorderRadius.all(Radius.circular(48)),
              color: k006D77,
              child: Text(
                'Done',
                style: kManRope_500_16_white,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
        ],
      ),
    );
  }
}

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({Key? key}) : super(key: key);

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 428.h,
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
                      width: 80.w,
                    ),
                    Text(
                      'Select Language',
                      style: kManRope_700_16_white,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 140.w),
            child: SizedBox(
              height: 280.h,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: languages.length,
                itemBuilder: (context, index){
                  return Padding(
                    padding:  EdgeInsets.only(bottom: 8.h, top: 8.h),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/icons/box.svg', height: 24.h, width: 24.w,),
                        SizedBox(width: 15.w,),
                        Text(languages[index], style: kManRope_400_16_626A6A,),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 56.h,
            width: 168.w,
            child: CupertinoButton(
              borderRadius: BorderRadius.all(Radius.circular(48)),
              color: k006D77,
              child: Text(
                'Done',
                style: kManRope_500_16_white,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
        ],
      ),
    );
  }
}
