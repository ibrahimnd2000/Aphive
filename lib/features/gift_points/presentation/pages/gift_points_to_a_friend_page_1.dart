import 'package:Aphive/constants.dart';
import 'package:Aphive/features/gift_points/presentation/widgets/aphive_blue_button.dart';
import 'package:Aphive/features/gift_points/presentation/widgets/aphive_header.dart';
import 'package:Aphive/features/gift_points/presentation/widgets/aphive_logo.dart';
import 'package:Aphive/features/gift_points/presentation/widgets/aphive_purple_button.dart';
import 'package:Aphive/features/gift_points/presentation/widgets/aphive_title.dart';
import 'package:Aphive/features/global/presentation/widgets/base_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter_screenutil/size_extension.dart';

class GiftPointsToAFriend extends StatefulWidget {
  GiftPointsToAFriend({Key key}) : super(key: key);

  @override
  _GiftPointsToAFriendState createState() => _GiftPointsToAFriendState();
}

class _GiftPointsToAFriendState extends State<GiftPointsToAFriend> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

    final size = MediaQuery.of(context).size;
    return BaseView(
      body: Stack(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AphiveTopHeader(),
            SizedBox(
              height: 50,
            ),
            AphiveBottomHeader(),
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
                AphivePurpleButton(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  selection,
                  style: GoogleFonts.montserrat(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                    fontSize: 45.sp,
                  ),
                ),
                Spacer(),
                SizedBox(
                  height: 25,
                ),
                AphiveBlueButton(
                  text: "Next",
                  buttonAction: () =>
                      Navigator.of(context).pushNamed('/gift_points_2'),
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
