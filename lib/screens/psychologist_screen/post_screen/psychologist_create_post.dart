import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constants/colors.dart';
import '../../../constants/fonts.dart';
import '../../../widgets/app_bar/white_app_bar.dart';

class PsychologistCreatePostScreen extends StatelessWidget {
  const PsychologistCreatePostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteBGColor,
      appBar: WhiteCustomAppBar(appBarText: 'Create post'),
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 40.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 45.h,
                        width: 45.w,
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        'Priya Singh',
                        style: kManRope_500_16_001314,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/camera2.svg',
                        height: 24.h,
                        width: 24.w,
                      ),
                      SizedBox(width: 8.w,),
                      SvgPicture.asset(
                        'assets/icons/files.svg',
                        height: 24.h,
                        width: 24.w,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                width: 380.w,
                height: 500.h,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  border: Border.all(
                    color: const Color(0xFFDFDFDF),
                  ),
                ),
                child: SizedBox(
                  width: 200,
                  child: Padding(
                    padding:  EdgeInsets.only(left: 20.w),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Write here...',
                        hintStyle: kManRope_400_14_626A6A,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 100.h,),
              Center(
                child: SizedBox(
                  height: 56.h,
                  width: 182,
                  child:
                  MaterialButton(
                    color: k006D77,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // <-- Radius
                    ),
                    onPressed: () {

                    },
                    child: Text(
                      'Post',
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
