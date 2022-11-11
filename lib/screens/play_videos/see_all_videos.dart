import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/colors.dart';
import '../../constants/fonts.dart';

class SeeAllVideos extends StatelessWidget {
  const SeeAllVideos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteBGColor,
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 10.w,
        centerTitle: false,
        backgroundColor: Colors.white,
        title: Text(
          'All videos',
          style: kManRope_500_16_006D77,
        ),
        titleSpacing: 50.w,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
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
        child: ListView(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Nature',
                hintStyle: kManRope_400_14_626A6A,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(16.0)),
                fillColor: Colors.white,
                filled: true,
                suffixIconConstraints:
                    BoxConstraints(maxHeight: 48.h, maxWidth: 48.w),
                suffixIcon: Padding(
                  padding: EdgeInsets.only(right: 16.w),
                  child: SvgPicture.asset('assets/icons/search.svg'),
                ),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            SingleChildScrollView(
              child: GridView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                physics: ScrollPhysics(),
                shrinkWrap: true,
                itemCount: 12,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 25.h,
                    childAspectRatio: 0.95),
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 160.h,
                        child: Container(
                          height: 182.h,
                          width: 182.w,
                          clipBehavior: Clip.hardEdge,
                          decoration: const BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Image.asset(
                            'assets/images/post.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Name xyz',
                        style: kManRope_500_16_001314,
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
