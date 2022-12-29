import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:greymatter/screens/goal_screens/add_activity.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../constants/colors.dart';
import '../../constants/fonts.dart';

class GoalScreen extends StatefulWidget {
  GoalScreen({Key? key}) : super(key: key);

  @override
  State<GoalScreen> createState() => _GoalScreenState();
}

class _GoalScreenState extends State<GoalScreen> {
  DateTime selectedDay = DateTime.now();

  DateTime focusedDay = DateTime.now();

  BoxDecoration constDecoration = const BoxDecoration(
    shape: BoxShape.rectangle,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 100.w),
        child: Column(
          children: [
            SvgPicture.asset(
              'assets/icons/activityArt.svg',
              height: 240.h,
              width: 380.w,
            ),
            SizedBox(
              height: 40.h,
            ),
            TableCalendar(
              focusedDay: selectedDay,
              firstDay: DateTime(2022),
              lastDay: DateTime(2023),
              calendarFormat: CalendarFormat.week,
              headerVisible: false,
              calendarStyle: CalendarStyle(
                isTodayHighlighted: false,
                withinRangeTextStyle: kManRope_400_14_white,
                todayTextStyle: kManRope_400_14_white,
                rangeEndTextStyle: kManRope_400_14_white,
                rangeStartTextStyle: kManRope_400_14_white,
                todayDecoration: constDecoration,
                defaultDecoration: constDecoration,
                withinRangeDecoration: constDecoration,
                disabledDecoration: constDecoration,
                holidayDecoration: constDecoration,
                markerDecoration: constDecoration,
                outsideDecoration: constDecoration,
                rangeEndDecoration: constDecoration,
                rangeStartDecoration: constDecoration,
                rowDecoration: constDecoration,
                weekendDecoration: constDecoration,
                selectedDecoration: BoxDecoration(
                  border: Border.all(
                    color: k006D77,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  shape: BoxShape.rectangle,
                  color: k006D77,
                ),
              ),
              rowHeight: 56.h,
              onDaySelected: (DateTime selectDay, DateTime focusDay) {
                setState(() {
                  selectedDay = selectDay;
                  focusedDay = focusDay;
                });
              },
              selectedDayPredicate: (DateTime date) {
                return isSameDay(selectedDay, date);
              },
            ),
            SizedBox(
              height: 40.h,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Row(
                children: [
                  Text(
                    'Goals',
                    style: kManRope_500_28_001314,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'completion 75 %',
                    style: kManRope_500_14_626A6A,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  SvgPicture.asset(
                    'assets/icons/progressIcon.svg',
                    height: 21,
                    width: 21,
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const AddActivityScreen()));
                    },
                    child: SvgPicture.asset(
                      'assets/icons/addPost.svg',
                      height: 48.h,
                      width: 48.w,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemBuilder: (ctx, index) {
                      return Container(
                        margin: EdgeInsets.only(top: 16.h),
                        height: 81.h,
                        width: 380.w,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: k5A72ED,
                        ),
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/Framedots.png',

                                  //height: 81.h,
                                ),
                                Expanded(
                                  child: Image.asset(
                                    'assets/images/Dots.png',
                                    width: 81.w,
                                    height: 81.h,
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 18.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/icons/run.svg',
                                        height: 36.w,
                                        width: 36.w,
                                        fit: BoxFit.fill,
                                      ),
                                      SizedBox(width: 12.w),
                                      Text(
                                        'Running',
                                        style: kManRope_500_16_white,
                                      ),
                                    ],
                                  ),
                                  SvgPicture.asset(
                                    'assets/icons/greyTick.svg',
                                    height: 36.w,
                                    width: 36.w,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (ctx, index) {
                      return SizedBox(height: 0);
                    },
                    itemCount: 10),
              ),
            )
          ],
        ),
      ),
    );
  }
}
