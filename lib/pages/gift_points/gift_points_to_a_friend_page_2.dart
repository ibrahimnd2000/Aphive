import 'file:///D:/Aphive%20Project/Aphive/lib/configs/constants.dart';
import 'package:Aphive/pages/gift_points/gift_points_to_a_friend_page_3.dart';
import 'file:///D:/Aphive%20Project/Aphive/lib/widgets/buttons/aphive_blue_button.dart';
import 'file:///D:/Aphive%20Project/Aphive/lib/widgets/logo/aphive_logo.dart';
import 'file:///D:/Aphive%20Project/Aphive/lib/widgets/drop_down/aphive_select_amount.dart';
import 'file:///D:/Aphive%20Project/Aphive/lib/widgets/texts/aphive_title.dart';
import 'file:///D:/Aphive%20Project/Aphive/lib/widgets/base_view/base_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter_screenutil/size_extension.dart';

class GiftPointsToAFriend2 extends StatefulWidget {
  GiftPointsToAFriend2({Key key}) : super(key: key);

  @override
  _GiftPointsToAFriend2State createState() => _GiftPointsToAFriend2State();

  ///
  /// Static Routing
  ///
  static Route<dynamic> route() => MaterialPageRoute(
        settings: RouteSettings(name: '/gift_points_2'),
        builder: (BuildContext context) => GiftPointsToAFriend2(),
      );
}

class _GiftPointsToAFriend2State extends State<GiftPointsToAFriend2> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
              height: ScreenUtil().setHeight(125.8),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AphiveTitle(),
              ],
            ),
            SizedBox(
              height: ScreenUtil().setHeight(186),
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
          minHeight: ScreenUtil().setHeight(1546),
          maxHeight: ScreenUtil().setHeight(1546),
          panel: Padding(
            padding: EdgeInsets.only(top: ScreenUtil().setHeight(243)),
            child: Column(
              children: [
                AphiveSelectAmount(),
                SizedBox(
                  height: ScreenUtil().setHeight(32.6),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      point_balance,
                      style: GoogleFonts.montserrat(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500,
                        fontSize: 40.sp,
                      ),
                    ),
                    Text(
                      user_point_balance,
                      style: GoogleFonts.montserrat(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500,
                        fontSize: 40.sp,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                AphiveBlueButton(
                  buttonText: "Next",
                  buttonAction: () =>
                      Navigator.of(context).push(GiftPointsToAFriend3.route()),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(221.6),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
