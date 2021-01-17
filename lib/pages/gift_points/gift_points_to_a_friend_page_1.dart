import 'file:///D:/Aphive%20Project/Aphive/lib/configs/constants.dart';
import 'package:Aphive/pages/gift_points/gift_points_to_a_friend_page_2.dart';
import 'file:///D:/Aphive%20Project/Aphive/lib/widgets/buttons/aphive_blue_button.dart';
import 'file:///D:/Aphive%20Project/Aphive/lib/widgets/texts/aphive_header.dart';
import 'file:///D:/Aphive%20Project/Aphive/lib/widgets/buttons/aphive_purple_button.dart';
import 'file:///D:/Aphive%20Project/Aphive/lib/widgets/base_view/base_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter_screenutil/size_extension.dart';

class GiftPointsToAFriend extends StatefulWidget {
  GiftPointsToAFriend({Key key}) : super(key: key);

  @override
  _GiftPointsToAFriendState createState() => _GiftPointsToAFriendState();

  ///
  /// Static Routing
  ///
  static Route<dynamic> route() => MaterialPageRoute(
        settings: RouteSettings(name: '/gift_points_1'),
        builder: (BuildContext context) => GiftPointsToAFriend(),
      );
}

class _GiftPointsToAFriendState extends State<GiftPointsToAFriend> {
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
    return BaseView(
      body: Stack(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AphiveTopHeader(),
            SizedBox(
              height: ScreenUtil().setHeight(191),
            ),
            AphiveBottomHeader(),
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
                AphivePurpleButton(),
                SizedBox(
                  height: ScreenUtil().setHeight(34.6),
                ),
                Text(
                  selection,
                  style: GoogleFonts.montserrat(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                    fontSize: 50.sp,
                  ),
                ),
                Spacer(),
                AphiveBlueButton(
                  buttonText: "Next",
                  buttonAction: () =>
                      Navigator.of(context).push(GiftPointsToAFriend2.route()),
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
