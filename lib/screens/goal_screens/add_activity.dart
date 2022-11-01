import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:greymatter/constants/Lists.dart';
import 'package:greymatter/screens/goal_screens/add_new_activity.dart';
import 'package:greymatter/screens/goal_screens/create_new_activity.dart';
import '../../constants/colors.dart';
import '../../constants/fonts.dart';

class AddActivityScreen extends StatelessWidget {
  const AddActivityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteBGColor,
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 40.w,
        backgroundColor: Colors.white,
        title: Text(
          'All activities',
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
        padding:  EdgeInsets.only(left: 24.w, right: 24.w, top: 40.h),
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemBuilder: (ctx, index) {
              return Padding(
                padding:  EdgeInsets.only(bottom: 16.h),
                child: Container(
                  height: 80.h,
                  width: 380.w,
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: k5A72ED,
                  ),
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Image.asset('assets/images/Background.png', height: 87.h, width: 380.w,),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(activityList[index], style: kManRope_600_18_white,),
                            GestureDetector(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  AddNewActivity(text: activityList[index],)));
                              },
                              child: Container(
                                height: 48.h,
                                width: 70.w,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: SvgPicture.asset('assets/icons/plus-square.svg', height: 24.h , width: 24.w,),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            itemCount: activityList.length),
      ),
      bottomNavigationBar: Container(
        height: 100.h,
        padding: EdgeInsets.only(left: 102.w, right: 102.w,bottom: 40.h),
        child: SizedBox(
          height: 56.h,
          width: 223.w,
          child:  MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => CreateNewActivity()));
            },
            color: k006D77,
            child: Center(
              child: Text('Create new activity', style: kManRope_600_16_white,),
            ),
          ),
        ),
      ),
    );
  }
}


