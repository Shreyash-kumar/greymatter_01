import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:greymatter/constants/fonts.dart';

import '../widgets/shared/buttons/custom_active_text_button.dart';

class Form1 extends StatefulWidget {
  final int index;
  final List<String> questions;
  final List<TextEditingController> questionControllers;
  final List<String> labels;
  final Function onNextTap;
  const Form1({
    Key? key,
    required this.questions,
    required this.onNextTap,
    required this.questionControllers,
    required this.labels,
    required this.index,
  }) : super(key: key);

  @override
  State<Form1> createState() => _Form1State();
}

class _Form1State extends State<Form1> {
  int _radioSelected = 1;
  String _radioVal = '';

  bool a = false;
  bool b = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(widget.index == 0 ||
              widget.index == 4 ||
              widget.index == 5 ||
              widget.index == 6 ||
              widget.index == 7
          ? 18
          : 24),
      child: Container(
        width: 1.sw,
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
          border: Border.all(width: 1.5, color: Colors.white),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.04),
              offset: Offset(0, 8),
              blurRadius: 32,
              spreadRadius: 0,
            ),
          ],
        ),
        child: ListView(
          children: [
            for (int j = 0; j < widget.questions.length; j++)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.questions[j],
                    style: kManRope_500_16_001314,
                  ),
                  SizedBox(height: 16),
                  Container(
                    width: 331.w,
                    height: 1.h,
                    color: Colors.white,
                  ),
                  widget.labels.isEmpty
                      ? Container(
                          height: 52.h,
                          width: 328.w,
                          decoration: BoxDecoration(
                              //color: ColorSelect.colorEDEDF1,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          child: DropdownButton<String>(
                            hint: Text(
                              'Male',
                              style: kManRope_400_16_263238,
                            ),
                            isExpanded: true,
                            icon: Image.asset('assets/images/dropdown.png'),
                            iconSize: 24,
                            elevation: 0,
                            underline: SizedBox(),
                            items: <String>[
                              'Male',
                              'Female',
                              'Agender',
                              'Bigender',
                              'Genderfluid',
                              'Genderqueer',
                              'Gender nonconforming',
                              'Gender questioning',
                              'Gender variant',
                              'Intersex',
                              'Intersex man',
                              'Intersex woman',
                              'Neutrois',
                              'Nonbinary man',
                              'Nonbinary woman',
                              'Pangender',
                              'Polygender',
                              'Transgender',
                              'Trans man',
                              'Transmasculine',
                              'Trans woman',
                              'Transfeminine',
                              'Two-spirit',
                              'Tell us if we’re missing something'
                            ].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (value) {},
                          ),
                        )
                      : ListView.builder(
                          itemCount: widget.labels.length,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                Row(
                                  children: [
                                    Radio(
                                      value: 1,
                                      groupValue: _radioSelected,
                                      //activeColor: Colors.blue,
                                      onChanged: (value) {
                                        setState(() {
                                          // _radioSelected = value;
                                          _radioVal = '';
                                        });
                                      },
                                    ),
                                    Text(widget.labels[index]),
                                  ],
                                ),
                              ],
                            );
                          },
                        ),

                  /* TextFormField(
                    controller: widget.questionControllers[j],
                    decoration: DecorationCustomSuffix(
                            label: 'e.g. ${widget.labels[j]}',
                            showSuffix:
                                ((widget.index == 3 || widget.index == 8) &&
                                        j == 1)
                                    ? true
                                    : false,
                            suffixIcon: 'clock')
                        .textFieldDecoration(),
                  ),*/
                  for (int i = 0; i < widget.labels.length; i++)
                    SizedBox(height: 16),
                ],
              ),
            SizedBox(
              width: 1.sw,
              height: 56,
              child: CustomActiveTextButton(
                onPressed: () {
                  widget.onNextTap();
                },
                text: 'Next',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
