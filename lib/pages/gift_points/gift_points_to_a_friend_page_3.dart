import 'file:///D:/Aphive%20Project/Aphive/lib/configs/constants.dart';
import 'file:///D:/Aphive%20Project/Aphive/lib/widgets/buttons/aphive_blue_button.dart';
import 'file:///D:/Aphive%20Project/Aphive/lib/widgets/logo/aphive_logo.dart';
import 'file:///D:/Aphive%20Project/Aphive/lib/widgets/texts/aphive_title.dart';
import 'file:///D:/Aphive%20Project/Aphive/lib/widgets/base_view/base_view.dart';
import 'file:///D:/Aphive%20Project/Aphive/lib/widgets/dialog/gift_point_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter_screenutil/size_extension.dart';

class GiftPointsToAFriend3 extends StatefulWidget {
  GiftPointsToAFriend3({Key key}) : super(key: key);

  @override
  _GiftPointsToAFriend3State createState() => _GiftPointsToAFriend3State();

  ///
  /// Static Routing
  ///
  static Route<dynamic> route() => MaterialPageRoute(
        settings: RouteSettings(name: '/gift_points_3'),
        builder: (BuildContext context) => GiftPointsToAFriend3(),
      );
}

class _GiftPointsToAFriend3State extends State<GiftPointsToAFriend3> {
  bool agree = false;

  void _onAgreementChanged(bool newValue) => setState(() {
        agree = newValue;

        if (agree) {
          // TODO: Here goes your functionality that remembers the user.
        } else {
          // TODO: Forget the user
        }
      });

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
              height: ScreenUtil().setHeight(183),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  review,
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 60.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            )
          ],
        ),
        SlidingUpPanel(
          isDraggable: false,
          minHeight: ScreenUtil().setHeight(1542),
          maxHeight: ScreenUtil().setHeight(1542),
          panel: Padding(
            padding: EdgeInsets.only(top: ScreenUtil().setHeight(112)),
            child: Column(
              children: [
                Container(
                  width: .72.sw,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            beneficiary,
                            style: GoogleFonts.montserrat(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w500,
                              fontSize: 50.sp,
                            ),
                          ),
                          Spacer(),
                          Text(
                            beneficiary_number,
                            style: GoogleFonts.montserrat(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w500,
                              fontSize: 50.sp,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(59),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            points_to_gift,
                            style: GoogleFonts.montserrat(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w500,
                              fontSize: 50.sp,
                            ),
                          ),
                          Spacer(),
                          Text(
                            points_to_gift_val,
                            style: GoogleFonts.montserrat(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w500,
                              fontSize: 50.sp,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(59),
                ),
                Container(
                  padding: EdgeInsets.all(4.0),
                  width: ScreenUtil().setWidth(954),
                  height: ScreenUtil().setHeight(533.43),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(
                      4.0,
                    ),
                  ),
                  child: TextField(
                      maxLines: 8,
                      decoration: InputDecoration.collapsed(
                        hintText: "add note (optional)",
                        hintStyle: GoogleFonts.montserrat(
                          fontSize: ScreenUtil().setSp(35),
                        ),
                      )),
                ),
                Container(
                  width: ScreenUtil().setWidth(1040),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Checkbox(
                        value: agree,
                        onChanged: _onAgreementChanged,
                        activeColor: Colors.white,
                        checkColor: Colors.blue,
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(24.4),
                      ),
                      Expanded(
                        child: Text(
                          "Select if you want the beneficiary to\n know your name",
                          overflow: TextOverflow.clip,
                          style: GoogleFonts.montserrat(
                            fontSize: ScreenUtil().setSp(35),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                AphiveBlueButton(
                  buttonText: "Gift!",
                  buttonAction: () => showDialog(
                      context: context,
                      builder: (context) => GiftPointDialog()),
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
