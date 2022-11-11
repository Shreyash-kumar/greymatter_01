import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:greymatter/screens/play_videos/see_all_videos.dart';

import '../../constants/colors.dart';
import '../../constants/fonts.dart';

class AllVideos extends StatefulWidget {
  const AllVideos({Key? key}) : super(key: key);

  @override
  State<AllVideos> createState() => _AllVideosState();
}

class _AllVideosState extends State<AllVideos> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

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
        padding: EdgeInsets.only(top: 40.h),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 24.w, right: 24.w),
              child: TextField(
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
            ),
            SizedBox(
              height: 40.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Trending Videos',
                    style: kManRope_700_16_001314,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SeeAllVideos())),
                    child: Text(
                      'See all',
                      style: kManRope_500_16_006D77,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            SizedBox(
              height: 230.h,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 182.w,
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
                        SizedBox(height: 16),
                        Text(
                          'Name xyz',
                          style: kManRope_500_16_001314,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            /*Center(
              child: SmoothPageIndicator(
                controller: controller,
                count: 4,
                effect: const ExpandingDotsEffect(
                  activeDotColor: k5A72ED,
                  strokeWidth: 0.8,
                  dotWidth: 8,
                  dotHeight: 8,
                ),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),*/
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Fitness Videos',
                    style: kManRope_700_16_001314,
                  ),
                  Text(
                    'See all',
                    style: kManRope_500_16_006D77,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            SizedBox(
              height: 230.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 182.w,
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
                        SizedBox(height: 16),
                        Text(
                          'Name xyz',
                          style: kManRope_500_16_001314,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            /*Center(
              child: SmoothPageIndicator(
                controller: controller,
                count: 4,
                effect: const ExpandingDotsEffect(
                  activeDotColor: k5A72ED,
                  strokeWidth: 0.8,
                  dotWidth: 8,
                  dotHeight: 8,
                ),
              ),
            ),*/
            /*SizedBox(
              height: 40.h,
            ),*/
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Yoga Videos',
                    style: kManRope_700_16_001314,
                  ),
                  Text(
                    'See all',
                    style: kManRope_500_16_006D77,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            SizedBox(
              height: 230.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 182.w,
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
                        SizedBox(height: 16),
                        Text(
                          'Name xyz',
                          style: kManRope_500_16_001314,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            /*SizedBox(
              height: 20.h,
            ),
            Center(
              child: SmoothPageIndicator(
                controller: controller,
                count: 4,
                effect: const ExpandingDotsEffect(
                  activeDotColor: k5A72ED,
                  strokeWidth: 0.8,
                  dotWidth: 8,
                  dotHeight: 8,
                ),
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
