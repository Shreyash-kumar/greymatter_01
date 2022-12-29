import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:greymatter/constants/Lists.dart';
import 'package:greymatter/screens/goal_screens/activity_model.dart';
import 'package:greymatter/screens/goal_screens/add_new_activity.dart';

import '../../constants/colors.dart';
import '../../constants/fonts.dart';

class AddActivityScreen extends StatefulWidget {
  const AddActivityScreen({Key? key}) : super(key: key);

  @override
  State<AddActivityScreen> createState() => _AddActivityScreenState();
}

class _AddActivityScreenState extends State<AddActivityScreen> {
  List<ActivityValue> a = [];
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
        centerTitle: false,
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
        padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 50),
        child: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (ctx, index) {
                for (int i = 0; i < activityList.length; i++) {
                  a.add(ActivityValue(slide: false, name: activityList[i]));
                }

                return Padding(
                  padding:
                      EdgeInsets.only(bottom: 16.h, top: index == 0 ? 24 : 0),
                  child: Stack(
                    children: [
                      Container(
                        height: 80.h,
                        width: 80.w,
                        decoration: BoxDecoration(
                          color: kBC5656,
                          borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(24)),
                        ),
                      ),
                      GestureDetector(
                        onPanUpdate: (v) {
                          print(v.delta.dx);
                          //print(v.delta.dy);
                          if (!a[index].slide) {
                            if (v.delta.dx > -1 &&
                                v.delta.dx < 1 &&
                                v.delta.dy > -1 &&
                                v.delta.dy < 1) {
                              setState(() {
                                a[index].slide = true;
                              });
                            }
                          }
                        },
                        child: Container(
                          height: 88.h,
                          width: 380.w,
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: k5A72ED,
                          ),
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              Image.asset(
                                'assets/images/backimg.png',
                                height: 87.h,
                                //width: 1.sw,
                              ),
                              Center(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: 200.w,
                                      child: TextField(
                                        onChanged: (v) {
                                          setState(() {
                                            a[index].name = v;
                                          });
                                        },
                                        style: kManRope_600_18_white,
                                        cursorColor: Colors.white,
                                        decoration: InputDecoration(
                                          enabled: activityList[index] ==
                                                  'Add Activity Name'
                                              ? true
                                              : false,
                                          hintText: activityList[index],
                                          hintStyle: kManRope_600_18_white,
                                          contentPadding: EdgeInsets.zero,
                                          disabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                            ),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    if (a[index].name != 'Add Activity Name' &&
                                        a[index].name.isNotEmpty)
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  AddNewActivity(
                                                text: activityList[index] ==
                                                        'Add Activity Name'
                                                    ? ''
                                                    : a[index].name,
                                              ),
                                            ),
                                          );
                                        },
                                        child: Container(
                                          height: 48.h,
                                          width: 70.w,
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            color: Colors.white,
                                          ),
                                          child: Center(
                                            child: SvgPicture.asset(
                                              'assets/icons/plus-square.svg',
                                              height: 24.h,
                                              width: 24.w,
                                            ),
                                          ),
                                        ),
                                      )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemCount: activityList.length),
        ),
      ),
      /* bottomNavigationBar: Container(
        height: 100.h,
        padding: EdgeInsets.only(left: 102.w, right: 102.w, bottom: 40.h),
        child: SizedBox(
          height: 56.h,
          width: 223.w,
          child: MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            onPressed: () {
              setState(() {
                activityList.add('Add Activity Name');
              });
        ),
      ),*/
    );
  }
}
