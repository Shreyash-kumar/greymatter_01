import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';
import '../../constants/fonts.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({Key? key}) : super(key: key);

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
          'Privacy and Policy',
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
        child: Text(
          'The right to use the disk shall expire either when the user destroys the Disk or software, or when any of the terms of this Agreement are violated and the Licensors exercise the option to revoke the license to use the Disk or software. The terms and conditions hereof apply to all subsequent users and owners as well as to the original purchaser. The use of oil company logos in the display are for your information and convenience, and in no way implies any sponsorship, approval or endorsement of these companies, or their products. The logos are trademarks of their respective owners. The user shall indemnify and save harmless the Licensors, and their officers, employees and agents, from and against any claim, demand or action, irrespective of the nature of the cause of the claim, demand or action, alleging loss, costs, expense, damages or injuries (including injuries resulting in death) arising out of the use or possession of the Disk, data, or the Navigation Technologies Corporation database. Use, duplication, or disclosure of this Disk by or on behalf of the United States government is subject to "Restricted Rights" as set forth at FAR 52.227-14, -19 or DFARS 252.227-7013, as applicable. Manufacturers are the Licensors, includingHONDAMOTORCO., LTD., 2-1-1 Minami Aoyama Minato- Ku Tokyo 107-8556 JAPAN., Alpine Electronics, Inc., 20-l Yoshima Kogyodanchi, Iwaki, Fukushima 970- 1192 JAPAN., Navigation Technologies, 10400 W. Higgins Rd. Rosemont. IL 60018 and INFO USA CORPORATION, 5711 South 86th',
          style: kManRope_400_14_626A6A,
        ),
      ),
    );
  }
}
