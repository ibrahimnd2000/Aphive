import 'package:Aphive/constants.dart';
import 'package:Aphive/features/gift_points/presentation/widgets/aphive_blue_button.dart';
import 'package:Aphive/features/gift_points/presentation/widgets/aphive_logo.dart';
import 'package:Aphive/features/gift_points/presentation/widgets/aphive_purple_button.dart';
import 'package:Aphive/features/gift_points/presentation/widgets/aphive_select_amount.dart';
import 'package:Aphive/features/gift_points/presentation/widgets/aphive_title.dart';
import 'package:Aphive/features/global/presentation/widgets/base_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter_screenutil/size_extension.dart';

class GiftPointsToAFriend2 extends StatefulWidget {
  GiftPointsToAFriend2({Key key}) : super(key: key);

  @override
  _GiftPointsToAFriend2State createState() => _GiftPointsToAFriend2State();
}

class _GiftPointsToAFriend2State extends State<GiftPointsToAFriend2> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

    final size = MediaQuery.of(context).size;
    return BaseView(
      body: Stack(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AphiveLogo(),
              ],
            ),
            SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AphiveTitle(),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  beneficiary,
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 50.sp,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  beneficiary_number,
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 50.sp,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            )
          ],
        ),
        SlidingUpPanel(
          isDraggable: false,
          minHeight: size.height * 0.535,
          maxHeight: size.height * 0.535,
          panel: Padding(
            padding: const EdgeInsets.only(top: 65.0),
            child: Column(
              children: [
                AphiveSelectAmount(),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      point_balance,
                      style: GoogleFonts.montserrat(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500,
                        fontSize: 45.sp,
                      ),
                    ),
                    Text(
                      user_point_balance,
                      style: GoogleFonts.montserrat(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500,
                        fontSize: 45.sp,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                SizedBox(
                  height: 25,
                ),
                AphiveBlueButton(
                  text: "Next",
                  buttonAction: () =>
                      Navigator.of(context).pushNamed('/gift_points_3'),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
