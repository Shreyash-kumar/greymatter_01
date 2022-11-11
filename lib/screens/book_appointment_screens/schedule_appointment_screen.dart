import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:greymatter/constants/Lists.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../constants/colors.dart';
import '../../constants/fonts.dart';
import 'confirm_booking_screen.dart';

class ScheduleAppointmentScreen extends StatefulWidget {
  const ScheduleAppointmentScreen({Key? key, required this.issue})
      : super(key: key);
  final String issue;

  @override
  State<ScheduleAppointmentScreen> createState() =>
      _ScheduleAppointmentScreenState();
}

class _ScheduleAppointmentScreenState extends State<ScheduleAppointmentScreen> {
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  bool flag = false;
  String date = '';
  int selectedIndex = 0;
  BoxDecoration constDecoration = const BoxDecoration(
    shape: BoxShape.rectangle,
  );

  late String Month = 'January';

  void monthSet(int month) {
    switch (month) {
      case 1:
        Month = 'January';
        break;
      case 2:
        Month = 'February';
        break;
      case 3:
        Month = 'March';
        break;
      case 4:
        Month = 'April';
        break;
      case 5:
        Month = 'May';
        break;
      case 6:
        Month = 'June';
        break;
      case 7:
        Month = 'July';
        break;
      case 8:
        Month = 'August';
        break;
      case 9:
        Month = 'September';
        break;
      case 10:
        Month = 'October';
        break;
      case 11:
        Month = 'November';
        break;
      case 12:
        Month = 'December';
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteBGColor,
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 40.w,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Text(
          'Appointment',
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
        padding: EdgeInsets.only(top: 40.h, left: 24.w, right: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              flag ? '$Month ${selectedDay.year}' : 'Select Date',
              style: kManRope_500_16_001314,
            ),
            SizedBox(
              height: 24.h,
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
                  flag = true;
                  monthSet(selectDay.month);
                  date =
                      '${selectDay.day}/${selectDay.month}/${selectDay.year}';
                });
              },
              selectedDayPredicate: (DateTime date) {
                return isSameDay(selectedDay, date);
              },
            ),
            SizedBox(
              height: 40.h,
            ),
            Text(
              'Available Slots',
              style: kManRope_500_16_001314,
            ),
            SizedBox(
              height: 24.h,
            ),
            SizedBox(
              height: 200.h,
              child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 79,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 16),
                  itemCount: timeList.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        height: 34.h,
                        width: 79.w,
                        decoration: BoxDecoration(
                          color:
                              selectedIndex == index ? k006D77 : Colors.white,
                          border: Border.all(
                            color: k006D77,
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8)),
                        ),
                        child: Center(
                          child: Text(
                            timeList[index],
                            style: selectedIndex == index
                                ? kManRope_400_12_white
                                : kManRope_400_14_001314,
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 83.h,
        child: Padding(
          padding: EdgeInsets.only(left: 24.w, right: 24.w, bottom: 24.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '₹230',
                style: kManRope_500_20_006D77,
              ),
              SizedBox(
                height: 56.h,
                width: 180.w,
                child: MaterialButton(
                  color: k006D77,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // <-- Radius
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ConfirmAppointmentBooking(
                                  issue: widget.issue,
                                  date: date,
                                )));
                  },
                  child: Text(
                    'Book session',
                    style: kManRope_400_16_white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
