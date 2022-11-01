import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constants/colors.dart';
import '../../constants/fonts.dart';

class CreatePostScreen extends StatelessWidget {
  const CreatePostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteBGColor,
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 40.w,
        backgroundColor: Colors.white,
        title: Text(
          'Create post',
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            SizedBox(
              height: 45.h,
            ),
            Text(
              'Select Media',
              style: kManRope_700_16_001314,
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              children: [
                Container(
                  height: 56.h,
                  width: 184.w,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    border: Border.all(
                      color: const Color(0xFFDFDFDF),
                    ),
                  ),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(left: 12.w),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/files.svg',
                            height: 24.h,
                            width: 24.w,
                          ),
                          SizedBox(
                            width: 22.w,
                          ),
                          Text(
                            'Files',
                            style: kManRope_400_14_001314,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 8.w,
                ),
                Container(
                  height: 56.h,
                  width: 184.w,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    border: Border.all(
                      color: const Color(0xFFDFDFDF),
                    ),
                  ),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(left: 12.w),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/camera2.svg',
                            height: 24.h,
                            width: 24.w,
                          ),
                          SizedBox(
                            width: 22.w,
                          ),
                          Text(
                            'Camera',
                            style: kManRope_400_14_001314,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 32.h,
            ),
            Container(
              width: 380.w,
              height: 162.h,
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
            SizedBox(height: 280.h,),
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
    );
  }
}
