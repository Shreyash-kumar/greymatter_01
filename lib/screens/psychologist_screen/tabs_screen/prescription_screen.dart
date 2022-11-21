import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greymatter/constants/colors.dart';
import 'package:greymatter/constants/fonts.dart';

import '../prescription_screen/precription_view_screen.dart';

class PrescriptionScreen extends StatefulWidget {
  const PrescriptionScreen({Key? key}) : super(key: key);

  @override
  State<PrescriptionScreen> createState() => _PrescriptionScreenState();
}

class _PrescriptionScreenState extends State<PrescriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteBGColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 72.h,
          ),
          Expanded(
            child: Container(
              width: 1.sw,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(height: 40.h,),
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
                                   hintText: 'Search by Transaction No',
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
                  SizedBox(height: 24.h,),
                  Container(
                    height: 46.h,
                    width: 1.sw,
                    color: k006D77,
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Date', style: kManRope_400_14_white,),
                            Text('Full Name', style: kManRope_400_14_white,),
                            Text('Order id', style: kManRope_400_14_white,),
                            Text('Prescription', style: kManRope_400_14_white,),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.w, right: 20.h),
                      child: ListView.separated(
                          itemBuilder: (ctx, index) {
                            return Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('20, Mon, 22', style: kManRope_400_14_626A6A,),
                                    Text('Pankaj Sharma', style: kManRope_400_14_626A6A,),
                                    Text('AB654151', style: kManRope_400_14_626A6A,),
                                    GestureDetector(
                                      onTap: (){
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => PrescriptionViewScreen()));
                                      },
                                      child: SvgPicture.asset('assets/icons/eye.svg', height: 18.h, width: 18.w,),),
                                  ],
                                ),
                                SizedBox(height: 19.h,),
                                Container(
                                  height: 1,
                                  width: 1.sw,
                                  color: k626A6A.withOpacity(0.2),
                                ),
                                SizedBox(height: 19.h,),
                              ],
                            );
                          },
                          separatorBuilder: (ctx, index) {
                            return SizedBox(height: 0.h);
                          },
                          itemCount: 10),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
