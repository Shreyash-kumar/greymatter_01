import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:greymatter/widgets/app_bar/app_bar.dart';
import '../../../constants/colors.dart';
import '../../../constants/fonts.dart';
import '../../../widgets/shared/buttons/custom_active_text_button.dart';

class EditSlotsAvailabilityScreen extends StatefulWidget {
  const EditSlotsAvailabilityScreen({Key? key}) : super(key: key);

  @override
  State<EditSlotsAvailabilityScreen> createState() => _EditSlotsAvailabilityScreenState();
}

class _EditSlotsAvailabilityScreenState extends State<EditSlotsAvailabilityScreen> {

  bool _switchValue = true;
  bool _switchValue1 = true;
  bool _switchValue2 = true;
  bool _switchValue3 = true;
  bool _switchValue4 = true;
  bool _switchValue5 = false;
  bool _switchValue6 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        appBarText: 'Slots Availability',
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 40.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Availability', style: kManRope_500_16_001314,),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => EditSlotsAvailabilityScreen()));
                  },
                  child: Text('Edit', style: kManRope_500_16_006D77,),
                ),
              ],
            ),
            SizedBox(height: 24.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Monday', style: kManRope_400_14_626A6A,),
                Text('10:00 AM', style: kManRope_400_14_626A6A,),
                Text('08:00 PM', style: kManRope_400_14_626A6A,),
                FlutterSwitch(
                  width: 40.w,
                  height: 20.h,
                  toggleSize: 15,
                  activeColor: k006D77,
                  value: _switchValue,
                  onToggle: (val) {
                    setState(() {
                      _switchValue = val;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 30.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Tuesday', style: kManRope_400_14_626A6A,),
                Text('10:00 AM', style: kManRope_400_14_626A6A,),
                Text('08:00 PM', style: kManRope_400_14_626A6A,),
                FlutterSwitch(
                  width: 40.w,
                  height: 20.h,
                  toggleSize: 15,
                  activeColor: k006D77,
                  value: _switchValue1,
                  onToggle: (val) {
                    setState(() {
                      _switchValue1 = val;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 30.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Wednesday', style: kManRope_400_14_626A6A,),
                Text('10:00 AM', style: kManRope_400_14_626A6A,),
                Text('08:00 PM', style: kManRope_400_14_626A6A,),
                FlutterSwitch(
                  width: 40.w,
                  height: 20.h,
                  toggleSize: 15,
                  activeColor: k006D77,
                  value: _switchValue2,
                  onToggle: (val) {
                    setState(() {
                      _switchValue2 = val;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 30.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Thursday', style: kManRope_400_14_626A6A,),
                Text('10:00 AM', style: kManRope_400_14_626A6A,),
                Text('08:00 PM', style: kManRope_400_14_626A6A,),
                FlutterSwitch(
                  width: 40.w,
                  height: 20.h,
                  toggleSize: 15,
                  activeColor: k006D77,
                  value: _switchValue3,
                  onToggle: (val) {
                    setState(() {
                      _switchValue3 = val;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 30.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Friday', style: kManRope_400_14_626A6A,),
                Text('10:00 AM', style: kManRope_400_14_626A6A,),
                Text('08:00 PM', style: kManRope_400_14_626A6A,),
                FlutterSwitch(
                  width: 40.w,
                  height: 20.h,
                  toggleSize: 15,
                  activeColor: k006D77,
                  value: _switchValue4,
                  onToggle: (val) {
                    setState(() {
                      _switchValue4 = val;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 30.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Saturday', style: kManRope_400_14_626A6A,),
                Text('12:00 AM', style: kManRope_400_14_626A6A,),
                Text('06:00 PM', style: kManRope_400_14_626A6A,),
                FlutterSwitch(
                  width: 40.w,
                  height: 20.h,
                  toggleSize: 15,
                  activeColor: k006D77,
                  value: _switchValue5,
                  onToggle: (val) {
                    setState(() {
                      _switchValue5 = val;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 30.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Sunday', style: kManRope_400_14_626A6A,),
                Text('12:00 AM', style: kManRope_400_14_626A6A,),
                Text('06:00 PM', style: kManRope_400_14_626A6A,),
                FlutterSwitch(
                  width: 40.w,
                  height: 20.h,
                  toggleSize: 15,
                  activeColor: k006D77,
                  value: _switchValue6,
                  onToggle: (val) {
                    setState(() {
                      _switchValue6 = val;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 290.h,),
            CustomActiveTextButton(
              onPressed: (){},
              text: 'Save',
            ),
          ],
        ),
      ),
    );
  }
}


